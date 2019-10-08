#include "RGtk2/gtk.h"

#ifdef G_OS_WIN32
#include <windows.h>
#else
#include <R_ext/eventloop.h>
#ifdef GDK_WINDOWING_X11
#include <gdk/gdkx.h>
#endif
#include <unistd.h>
#include <stdint.h>
#define CSTACK_DEFNS
#include <Rinterface.h>
#endif

void
R_gtk_eventHandler(void *userData)
{
  // FIXME: this is an infinite loop when there are idle tasks, do we
  // still need the gtk_events_pending()?
  
  // It seems we do; if the events are not flushed, this handler is
  // continually invoked.
  while (gtk_events_pending())
    gtk_main_iteration();
}

#ifdef G_OS_WIN32

#if R_VERSION < R_Version(2,8,0)
#include <sys/types.h>
extern  __declspec(dllimport) void (* R_tcldo)();
void R_gtk_handle_events() {
  R_gtk_eventHandler(NULL);
}
#else

/* On Windows, run the GTK+ event loop in a separate thread, synchronizing
   through the Windows event loop on the main thread.
   This currently doesn't handle timed tasks.
   More to come later on an overhaul of the R event loop.
*/

/* should exist win2k/xp and later, but mingw does not have it */
#define HWND_MESSAGE                ((HWND)-3)

#define RGTK2_TIMER_ID 0
#define RGTK2_TIMER_DELAY 50

static HWND win;

VOID CALLBACK R_gtk_timer_proc(HWND hwnd, UINT uMsg, UINT_PTR idEvent,
                               DWORD dwTime)
{
  R_gtk_eventHandler(NULL);
}

#endif // R < 2.8.0

#else

static InputHandler *eventLoopInputHandler = NULL, *displayInputHandler = NULL;
static GThread *eventLoopThread = NULL;
static GMainLoop *eventLoopMain = NULL;
static int fired = 0;
static int ifd, ofd;

gboolean R_gtk_timerFunc(gpointer data) {
  if (!fired) {
    gchar buf[16];
    fired = 1;
    *buf = 0;
    //Rprintf("Timer firing\n");
    if (!write(ofd, buf, 1)) {
      g_critical("Timer failed to write to pipe; disabling timer");
      return FALSE;
    }
  }
  return TRUE;
}

gpointer R_gtk_timerThreadFunc(gpointer data) {
  GMainContext *ctx = g_main_context_new();
  eventLoopMain = g_main_loop_new(ctx, FALSE);
  GSource *timeout = g_timeout_source_new(100);
  //g_timeout_add(100, R_gtk_timerFunc, NULL);
  g_source_set_callback(timeout, R_gtk_timerFunc, NULL, NULL);
  g_source_attach(timeout, ctx);
  g_main_loop_run(eventLoopMain);
  g_source_destroy(timeout);
  g_main_loop_unref(eventLoopMain);
  g_main_context_unref(ctx);
  return 0;
}

void R_gtk_timerInputHandler(void *userData) {
  gchar buf[16];
  //Rprintf("Input handler hit\n");
  if (!read(ifd, buf, 16))
    g_critical("Input handler failed to read from pipe");
  //Rprintf("Handling events\n");
  R_gtk_eventHandler(NULL);
  //Rprintf("Events handled\n");
  fired = 0;
}

#endif // Windows

void
R_gtkInit(long *rargc, char **rargv, Rboolean *success)
{
  int argc;

  argc = (int) *rargc;
  
  if (!gdk_display_get_default()) {
    gtk_disable_setlocale();
    if (!gtk_init_check(&argc, &rargv)) {
      *success = FALSE;
      return;
    }
  }

#ifndef G_OS_WIN32
  {
    int fds[2];

#ifdef GDK_WINDOWING_X11
    if (!GDK_DISPLAY()) {
      *success = FALSE;
      return;
    }


    displayInputHandler = addInputHandler(R_InputHandlers,
					  ConnectionNumber(GDK_DISPLAY()),
					  R_gtk_eventHandler, -1);
#endif
    /* Experimental timer-based piping to a file descriptor */
#ifdef G_THREADS_ENABLED
#ifndef __FreeBSD__
    if (!pipe(fds)) {
      ifd = fds[0];
      ofd = fds[1];
      eventLoopInputHandler = addInputHandler(R_InputHandlers, ifd,
                                              R_gtk_timerInputHandler, 32);
#if GLIB_CHECK_VERSION(2,32,0)
      eventLoopThread = g_thread_new("RGtk2", R_gtk_timerThreadFunc, NULL);
#else
      if (!g_thread_supported ()) g_thread_init (NULL);
      eventLoopThread = g_thread_create(R_gtk_timerThreadFunc, NULL, TRUE,
                                        NULL);
#endif
      R_CStackLimit = -1;
    } else g_warning("Failed to establish pipe; "
                     "disabling timer-based event handling");
#endif
#endif
  }
#else
#if R_VERSION < R_Version(2,8,0)
  R_tcldo = R_gtk_handle_events;
#else
  
  /* Create a dummy window for receiving messages */
  LPCTSTR class = "RGtk2";
  HINSTANCE instance = GetModuleHandle(NULL);
  WNDCLASS wndclass = { 0, DefWindowProc, 0, 0, instance, NULL, 0, 0, NULL,
                        class };
  RegisterClass(&wndclass);
  win = CreateWindow(class, NULL, 0, 1, 1, 1, 1, HWND_MESSAGE,
                     NULL, instance, NULL);

  SetTimer(win, RGTK2_TIMER_ID, RGTK2_TIMER_DELAY, (TIMERPROC)R_gtk_timer_proc);
#endif // R < 2.8.0
#endif // Windows

  R_GTK_TYPE_PARAM_SEXP;
  
  g_value_register_transform_func(G_TYPE_DOUBLE, G_TYPE_STRING,
                                  transformDoubleString);
  g_value_register_transform_func(G_TYPE_INT, G_TYPE_STRING,
                                  transformIntString);
  g_value_register_transform_func(G_TYPE_BOOLEAN, G_TYPE_STRING,
                                  transformBooleanString);
  
  *success = TRUE;
}

void R_gtkCleanup() {
#ifndef G_OS_WIN32
  removeInputHandler(&R_InputHandlers, eventLoopInputHandler);
  removeInputHandler(&R_InputHandlers, displayInputHandler);
  if (eventLoopMain) {
      g_main_loop_quit(eventLoopMain);
      g_thread_join(eventLoopThread);
      close(ifd);
      close(ofd);
  }
#else
  if (win) {
      DestroyWindow(win);
  }
#endif
}

#include <R_ext/Rdynload.h>

void
R_init_RGtk2(DllInfo *dll)
{
  #include "exports/gobjectExports.c"
  #include "exports/gioExports.c"
  #include "exports/atkExports.c"
  #include "exports/cairoExports.c"
  #include "exports/pangoExports.c"
  #include "exports/gtkExports.c"
}

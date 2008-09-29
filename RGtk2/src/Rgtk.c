#include "RGtk2/gtk.h"
#ifdef HAVE_LIBGLADE
#include "RGtk2/libglade.h"
#endif

#ifdef G_OS_WIN32
#include <windows.h>
#else
#include "R_ext/eventloop.h"
#include <gdk/gdkx.h>
#endif

void
R_gtk_eventHandler(void *userData)
{
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

VOID CALLBACK R_gtk_timer_proc(HWND hwnd, UINT uMsg, UINT_PTR idEvent,
                               DWORD dwTime)
{
  R_gtk_eventHandler(NULL);
}

#endif // R < 2.8.0
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
    InputHandler *h;
    if (!GDK_DISPLAY()) {
      *success = FALSE;
      return;
    }
    h = addInputHandler(R_InputHandlers, ConnectionNumber(GDK_DISPLAY()),
          R_gtk_eventHandler, -1);
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
  HWND win = CreateWindow(class, NULL, 0, 1, 1, 1, 1, HWND_MESSAGE,
                          NULL, instance, NULL);

  SetTimer(win, RGTK2_TIMER_ID, RGTK2_TIMER_DELAY, (TIMERPROC)R_gtk_timer_proc);
#endif // R < 2.8.0
#endif // Windows

  R_GTK_TYPE_PARAM_SEXP;
  
  *success = TRUE;
}

#include <R_ext/Rdynload.h>

void
R_init_RGtk2(DllInfo *dll)
{
  #include "exports/gobjectExports.c"
  #include "exports/atkExports.c"
  #include "exports/cairoExports.c"
  #include "exports/pangoExports.c"
  #include "exports/gtkExports.c"
  #ifdef HAVE_LIBGLADE
  #include "exports/libgladeExports.c"
  #endif
}

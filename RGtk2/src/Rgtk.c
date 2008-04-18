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

/* On Windows, run the GTK+ event loop in a separate thread, synchronizing
   through the Windows event loop on the main thread.
   This currently doesn't handle timed tasks.
   More to come later on an overhaul of the R event loop.
*/

#define RGTK2_ITERATE WM_USER + 101

DWORD WINAPI R_gtk_thread_proc(LPVOID lpParam) {
  while(1) {
    if (gtk_events_pending())
      PostMessage((HWND)lpParam, RGTK2_ITERATE, 0, 0);
    Rprintf("Thread\n");
  }
  return 0;
}

LRESULT CALLBACK
R_gtk_win_proc(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  Rprintf("Event loop\n");
  R_gtk_eventHandler(NULL);
  return 0;
}
#endif

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
  /* Create a dummy window for receiving messages */
  LPCTSTR class = "RGtk2";
  HINSTANCE instance = GetModuleHandle(NULL);
  WNDCLASS wndclass = { 0, R_gtk_win_proc, 0, 0, instance, NULL, 0, 0, NULL,
                        class };
  RegisterClass(&wndclass);
  HWND win = CreateWindow(class, NULL, 0, 1, 1, 1, 1, NULL, NULL, instance, NULL);

  /* Create a thread that will post messages to our window on this thread */
  HANDLE thread = CreateThread(NULL, 0, R_gtk_thread_proc, win, 0, NULL);
  /*SetThreadPriority(thread, THREAD_PRIORITY_IDLE);*/
#endif

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

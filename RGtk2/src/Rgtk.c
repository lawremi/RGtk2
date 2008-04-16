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
   with the Windows event loop.
   This currently doesn't handle timed tasks.
   More to come later on an overhaul of the R event loop.
*/

#define RGTK2_ITERATE WM_USER + 101

DWORD WINAPI R_gtk_thread_proc(LPVOID lpParam) {
  while(1) {
    if (gtk_events_pending())
      PostMessage((HWND)lpParam, RGTK2_ITERATE, NULL, NULL);
  }
}

void
R_gtk_win_proc()
{
  R_gtk_eventHandler(NULL);
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
  HINSTANCE instance = GetModuleHandle(NULL);
  WNDCLASS wndclass = { 0, R_gtk_win_proc, 0, 0, instance, NULL, NULL, NULL, NULL,
                        "RGtk2" };
  ATOM atom = RegisterClass(&wndclass);
  HWND win = CreateWindow(atom, NULL, NULL, 1, 1, 1, 1, HWND_MESSAGE, NULL,
                          instance, NULL);

  /* Create a thread that will post messages to our window on this thread */
  HANDLE thread = CreateThread(NULL, 0, R_gtk_thread_proc, win, 0, NULL);
  SetThreadPriority(thread, THREAD_PRIORITY_IDLE);
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

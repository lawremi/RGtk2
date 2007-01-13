#include "RGtk2/gtk.h"

/* This is an simple version of the event handler for windows.
   It mimicks what we do in Rggobi, namely hijacking the hook into the
   event loop that Tk uses.
   This currently doesn't handle timed tasks.
   More to come later on an overhaul of the R event loop.
 */
#ifdef G_OS_WIN32
#include <sys/types.h>
extern  __declspec(dllimport) void (* R_tcldo)();
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

void
R_gtk_handle_events()
{
  R_gtk_eventHandler(NULL);
}

Rboolean
R_gtkInit(long *rargc, char **rargv)
{
  int argc;

  argc = (int) *rargc;

  if (!gtk_init_check(&argc, &rargv))
    return FALSE;

#ifndef G_OS_WIN32
  {
    InputHandler *h;
    h = addInputHandler(R_InputHandlers, ConnectionNumber(GDK_DISPLAY()),
          R_gtk_eventHandler, -1);
  }
#else
  R_tcldo = R_gtk_handle_events;
#endif

  return TRUE;
}

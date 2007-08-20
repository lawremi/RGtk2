#include "RGtk2/gtk.h"
#ifdef HAVE_LIBGLADE
#include "RGtk2/libglade.h"
#endif

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
  
  if (!gdk_display_get_default()) {
    gtk_disable_setlocale();
    if (!gtk_init_check(&argc, &rargv))
      return FALSE;
  }

#ifndef G_OS_WIN32
  {
    InputHandler *h;
    if (!GDK_DISPLAY())
      error("GDK display not found - please make sure X11 is running");
    h = addInputHandler(R_InputHandlers, ConnectionNumber(GDK_DISPLAY()),
          R_gtk_eventHandler, -1);
  }
#else
  R_tcldo = R_gtk_handle_events;
#endif

  R_GTK_TYPE_PARAM_SEXP;
  
  return TRUE;
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

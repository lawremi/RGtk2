#ifndef RGTK_H
#define RGTK_H

#include "RSCommon.h"

/* This is only defined to avoid warnings (these functions are sort of private) */
#define PANGO_ENABLE_BACKEND
	
#include <glib.h>
#include <glib-object.h>
#include <atk/atk.h>
#include <atk/atk-enum-types.h>
#include <pango/pango.h>
#include <gdk/gdk.h>
#include <gdk-pixbuf/gdk-pixbuf.h>
#include <gtk/gtk.h>
#include <cairo.h>
#include "cairo-enums.h"

#ifdef HAVE_LIBGLADE
#include <glade/glade.h>
#endif

#ifdef G_OS_WIN32
    /* My version of mingw-1.1 and cygwin don't provide a definition for ulong. - DTL */
    typedef unsigned long ulong;
    #include <sys/types.h>
#else
    #include "R_ext/eventloop.h"
    #include <gdk/gdkx.h>
#endif

/* For some systems, e.g. Irix, gdkAccessors has a time_t that is not defined
   unless we include this. Seems harmless on other systems! */
#include <time.h>

#endif


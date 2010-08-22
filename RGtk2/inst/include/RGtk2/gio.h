#ifndef RGTK2_GIO_H
#define RGTK2_GIO_H

#include <RGtk2/gobject.h>

#if GLIB_CHECK_VERSION(2, 16, 0)
#include <gio/gio.h>

#define GIO_CHECK_VERSION GLIB_CHECK_VERSION

#include <RGtk2/gioUserFuncs.h>
#include <RGtk2/gioClasses.h>

/**** Conversion ****/

USER_OBJECT_ asRGFileAttributeInfo(const GFileAttributeInfo * obj);

#endif /* check version */

#endif

#ifndef RGTK2_CAIRO_H
#define RGTK2_CAIRO_H

/* Note: cairo itself is not based on GObject, but we use our own GEnum-based
   wrappers for the cairo enums/flags plus other things linked to GObject
*/
#include <RGtk2/gobject.h>

#include <cairo.h>
/* for cairo 1.2, ps/pdf backend is required for GTK, svg comes 'free',
   so we can safely depend on these */
#include <cairo-ps.h>
#include <cairo-pdf.h>
#include <cairo-svg.h>

/* custom GEnum wrappers so that we can use the same routines for cairo */
#include <RGtk2/cairo-enums.h>

#include <RGtk2/cairoUserFuncs.h>

/****** Manual UserFuncs *****/

cairo_status_t S_cairo_read_func_t(gpointer s_closure, guchar* s_data, guint s_length);

/****** Conversion ******/

#define toRPointerWithCairoRef(ptr, name, type) \
({ \
	type ## _reference(ptr); \
	toRPointerWithFinalizer(ptr, name, (RPointerFinalizer) type ## _destroy); \
})

USER_OBJECT_ asRCairoPath(cairo_path_t *path);
cairo_path_t * asCCairoPath(USER_OBJECT_ s_path);
cairo_glyph_t * asCCairoGlyph(USER_OBJECT_ s_glyph);

#endif

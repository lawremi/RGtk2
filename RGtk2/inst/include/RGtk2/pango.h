#ifndef RGTK2_PANGO_H
#define RGTK2_PANGO_H

#include <RGtk2/gobject.h>
#include <RGtk2/cairo.h>

#define PANGO_ENABLE_BACKEND
#include <pango/pango.h>
#include <pango/pangocairo.h>

#include <RGtk2/pangoClasses.h>
#include <RGtk2/pangoUserFuncs.h>

/**** Conversion *****/

PangoRectangle* asCPangoRectangle(USER_OBJECT_ s_rect);
USER_OBJECT_ asRPangoRectangle(PangoRectangle *rect);
USER_OBJECT_ asRPangoAttribute(PangoAttribute *attr);
USER_OBJECT_ asRPangoAttributeCopy(PangoAttribute *attr);
USER_OBJECT_ toRPangoAttribute(PangoAttribute *attr, gboolean finalize);

#endif

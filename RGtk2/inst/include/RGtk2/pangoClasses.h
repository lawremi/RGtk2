#ifndef S_PANGO_CLASSES_H
#define S_PANGO_CLASSES_H
#include <RGtk2/gobject.h>
#include <RGtk2/pango.h>

void
S_pango_font_map_class_init(PangoFontMapClass * c, SEXP e); 
void
S_pango_renderer_class_init(PangoRendererClass * c, SEXP e); 
#endif

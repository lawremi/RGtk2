#ifndef S_PANGO_USERFUNCS_H
#define S_PANGO_USERFUNCS_H
#include <RGtk2/gobject.h>
#include "RGtk2/pango.h"


  gboolean
S_PangoFontsetForeachFunc(PangoFontset* s_fontset, PangoFont* s_font, gpointer s_data); 

  gboolean
S_PangoAttrFilterFunc(PangoAttribute* s_attribute, gpointer s_data); 

#endif

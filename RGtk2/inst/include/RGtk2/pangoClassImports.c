void
S_pango_font_map_class_init(PangoFontMapClass * c, SEXP e)
{
  static void (*fun)(PangoFontMapClass *, SEXP) = NULL;
  if(!fun) fun = ((void (*)(PangoFontMapClass *, SEXP))R_GetCCallable("RGtk2", "S_pango_font_map_class_init"));
  return(fun(c, e));
} 

void
S_pango_renderer_class_init(PangoRendererClass * c, SEXP e)
{
  static void (*fun)(PangoRendererClass *, SEXP) = NULL;
  if(!fun) fun = ((void (*)(PangoRendererClass *, SEXP))R_GetCCallable("RGtk2", "S_pango_renderer_class_init"));
  return(fun(c, e));
} 


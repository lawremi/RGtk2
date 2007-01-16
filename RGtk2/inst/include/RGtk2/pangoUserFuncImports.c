gboolean
S_PangoFontsetForeachFunc(PangoFontset* fontset, PangoFont* font, gpointer data)
{
  static gboolean (*fun)(PangoFontset*, PangoFont*, gpointer) = NULL;
  if(!fun) fun = ((gboolean (*)(PangoFontset*, PangoFont*, gpointer))R_GetCCallable("RGtk2", "S_PangoFontsetForeachFunc"));
  return(fun(fontset, font, data));
} 

gboolean
S_PangoAttrFilterFunc(PangoAttribute* attribute, gpointer data)
{
  static gboolean (*fun)(PangoAttribute*, gpointer) = NULL;
  if(!fun) fun = ((gboolean (*)(PangoAttribute*, gpointer))R_GetCCallable("RGtk2", "S_PangoAttrFilterFunc"));
  return(fun(attribute, data));
} 


R_RegisterCCallable("RGtk2", "S_PangoFontsetForeachFunc", ((DL_FUNC)S_PangoFontsetForeachFunc)); 
R_RegisterCCallable("RGtk2", "S_PangoAttrFilterFunc", ((DL_FUNC)S_PangoAttrFilterFunc)); 
#if PANGO_CHECK_VERSION(1, 18, 0)
R_RegisterCCallable("RGtk2", "S_PangoCairoShapeRendererFunc", ((DL_FUNC)S_PangoCairoShapeRendererFunc));
#endif 

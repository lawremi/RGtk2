R_RegisterCCallable("RGtk2", "S_cairo_write_func_t", ((DL_FUNC)S_cairo_write_func_t)); 
#if CAIRO_CHECK_VERSION(1, 8, 0)
R_RegisterCCallable("RGtk2", "S_cairo_user_scaled_font_init_func_t", ((DL_FUNC)S_cairo_user_scaled_font_init_func_t));
#endif 
#if CAIRO_CHECK_VERSION(1, 8, 0)
R_RegisterCCallable("RGtk2", "S_cairo_user_scaled_font_render_glyph_func_t", ((DL_FUNC)S_cairo_user_scaled_font_render_glyph_func_t));
#endif 
#if CAIRO_CHECK_VERSION(1, 8, 0)
R_RegisterCCallable("RGtk2", "S_cairo_user_scaled_font_text_to_glyphs_func_t", ((DL_FUNC)S_cairo_user_scaled_font_text_to_glyphs_func_t));
#endif 
#if CAIRO_CHECK_VERSION(1, 8, 0)
R_RegisterCCallable("RGtk2", "S_cairo_user_scaled_font_unicode_to_glyph_func_t", ((DL_FUNC)S_cairo_user_scaled_font_unicode_to_glyph_func_t));
#endif 

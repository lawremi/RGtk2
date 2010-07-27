cairo_status_t
S_cairo_write_func_t(gpointer closure, const guchar* data, guint length)
{
  static cairo_status_t (*fun)(gpointer, const guchar*, guint) = NULL;
  if(!fun) fun = ((cairo_status_t (*)(gpointer, const guchar*, guint))R_GetCCallable("RGtk2", "S_cairo_write_func_t"));
  return(fun(closure, data, length));
} 

#if CAIRO_CHECK_VERSION(1, 8, 0)
cairo_status_t
S_cairo_user_scaled_font_init_func_t(cairo_scaled_font_t* scaled_font, cairo_t* cr, cairo_font_extents_t* extents)
{
  static cairo_status_t (*fun)(cairo_scaled_font_t*, cairo_t*, cairo_font_extents_t*) = NULL;
  if(!fun) fun = ((cairo_status_t (*)(cairo_scaled_font_t*, cairo_t*, cairo_font_extents_t*))R_GetCCallable("RGtk2", "S_cairo_user_scaled_font_init_func_t"));
  return(fun(scaled_font, cr, extents));
}
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)
cairo_status_t
S_cairo_user_scaled_font_render_glyph_func_t(cairo_scaled_font_t* scaled_font, gulong glyph, cairo_t* cr, cairo_font_extents_t* extents)
{
  static cairo_status_t (*fun)(cairo_scaled_font_t*, gulong, cairo_t*, cairo_font_extents_t*) = NULL;
  if(!fun) fun = ((cairo_status_t (*)(cairo_scaled_font_t*, gulong, cairo_t*, cairo_font_extents_t*))R_GetCCallable("RGtk2", "S_cairo_user_scaled_font_render_glyph_func_t"));
  return(fun(scaled_font, glyph, cr, extents));
}
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)
cairo_status_t
S_cairo_user_scaled_font_text_to_glyphs_func_t(cairo_scaled_font_t* scaled_font, const char* utf8, int utf8_len, cairo_glyph_t** glyphs, int* num_glyphs, cairo_text_cluster_t** clusters, int* num_clusters, cairo_text_cluster_flags_t* cluster_flags)
{
  static cairo_status_t (*fun)(cairo_scaled_font_t*, const char*, int, cairo_glyph_t*[], int*, cairo_text_cluster_t*[], int*, cairo_text_cluster_flags_t*) = NULL;
  if(!fun) fun = ((cairo_status_t (*)(cairo_scaled_font_t*, const char*, int, cairo_glyph_t*[], int*, cairo_text_cluster_t*[], int*, cairo_text_cluster_flags_t*))R_GetCCallable("RGtk2", "S_cairo_user_scaled_font_text_to_glyphs_func_t"));
  return(fun(scaled_font, utf8, utf8_len, glyphs, num_glyphs, clusters, num_clusters, cluster_flags));
}
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)
cairo_status_t
S_cairo_user_scaled_font_unicode_to_glyph_func_t(cairo_scaled_font_t* scaled_font, gulong unicode, gulong* glyph_index)
{
  static cairo_status_t (*fun)(cairo_scaled_font_t*, gulong, gulong*) = NULL;
  if(!fun) fun = ((cairo_status_t (*)(cairo_scaled_font_t*, gulong, gulong*))R_GetCCallable("RGtk2", "S_cairo_user_scaled_font_unicode_to_glyph_func_t"));
  return(fun(scaled_font, unicode, glyph_index));
}
#endif 


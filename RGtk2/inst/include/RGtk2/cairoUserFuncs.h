#ifndef S_CAIRO_USERFUNCS_H
#define S_CAIRO_USERFUNCS_H
#include <RGtk2/gobject.h>
#include "RGtk2/cairo.h"


  cairo_status_t
S_cairo_write_func_t(gpointer s_closure, const guchar* s_data, guint s_length); 

#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_status_t
S_cairo_user_scaled_font_init_func_t(cairo_scaled_font_t* s_scaled_font, cairo_t* s_cr, cairo_font_extents_t* s_extents);
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_status_t
S_cairo_user_scaled_font_render_glyph_func_t(cairo_scaled_font_t* s_scaled_font, gulong s_glyph, cairo_t* s_cr, cairo_font_extents_t* s_extents);
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_status_t
S_cairo_user_scaled_font_text_to_glyphs_func_t(cairo_scaled_font_t* s_scaled_font, const char* s_utf8, int s_utf8_len, cairo_glyph_t** s_glyphs, int* s_num_glyphs, cairo_text_cluster_t** s_clusters, int* s_num_clusters, cairo_text_cluster_flags_t* s_cluster_flags);
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_status_t
S_cairo_user_scaled_font_unicode_to_glyph_func_t(cairo_scaled_font_t* s_scaled_font, gulong s_unicode, gulong* s_glyph_index);
#endif 

#endif

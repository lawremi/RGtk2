#include "RGtk2/cairoUserFuncs.h"

cairo_status_t
S_cairo_write_func_t(gpointer s_closure, const guchar* s_data, guint s_length)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_closure)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_closure)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRRawArrayWithSize(s_data, s_length));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_length));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_closure)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_closure)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((cairo_status_t)0));
  return(((cairo_status_t)asCEnum(s_ans, CAIRO_TYPE_STATUS)));
} 

#if CAIRO_CHECK_VERSION(1, 8, 0)

  R_CallbackData * cairo_user_scaled_font_init_func_t_cbdata;
cairo_status_t
S_cairo_user_scaled_font_init_func_t(cairo_scaled_font_t* s_scaled_font, cairo_t* s_cr, cairo_font_extents_t* s_extents)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+cairo_user_scaled_font_init_func_t_cbdata->useData));
  tmp = e;

  SETCAR(tmp, cairo_user_scaled_font_init_func_t_cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithCairoRef(s_scaled_font, "CairoScaledFont", cairo_scaled_font));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithCairoRef(s_cr, "Cairo", cairo));
  tmp = CDR(tmp);
  if(cairo_user_scaled_font_init_func_t_cbdata->useData)
  {
    SETCAR(tmp, cairo_user_scaled_font_init_func_t_cbdata->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((cairo_status_t)0));
  *s_extents = ((cairo_font_extents_t)getPtrValue(VECTOR_ELT(s_ans, 1)));
  return(((cairo_status_t)asCEnum(VECTOR_ELT(s_ans, 0), CAIRO_TYPE_STATUS)));
}
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)

  R_CallbackData * cairo_user_scaled_font_render_glyph_func_t_cbdata;
cairo_status_t
S_cairo_user_scaled_font_render_glyph_func_t(cairo_scaled_font_t* s_scaled_font, gulong s_glyph, cairo_t* s_cr, cairo_font_extents_t* s_extents)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+cairo_user_scaled_font_render_glyph_func_t_cbdata->useData));
  tmp = e;

  SETCAR(tmp, cairo_user_scaled_font_render_glyph_func_t_cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithCairoRef(s_scaled_font, "CairoScaledFont", cairo_scaled_font));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_glyph));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithCairoRef(s_cr, "Cairo", cairo));
  tmp = CDR(tmp);
  if(cairo_user_scaled_font_render_glyph_func_t_cbdata->useData)
  {
    SETCAR(tmp, cairo_user_scaled_font_render_glyph_func_t_cbdata->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((cairo_status_t)0));
  *s_extents = ((cairo_font_extents_t)getPtrValue(VECTOR_ELT(s_ans, 1)));
  return(((cairo_status_t)asCEnum(VECTOR_ELT(s_ans, 0), CAIRO_TYPE_STATUS)));
}
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)

  R_CallbackData * cairo_user_scaled_font_text_to_glyphs_func_t_cbdata;
cairo_status_t
S_cairo_user_scaled_font_text_to_glyphs_func_t(cairo_scaled_font_t* s_scaled_font, const char* s_utf8, int s_utf8_len, cairo_glyph_t** s_glyphs, int* s_num_glyphs, cairo_text_cluster_t** s_clusters, int* s_num_clusters, cairo_text_cluster_flags_t* s_cluster_flags)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+cairo_user_scaled_font_text_to_glyphs_func_t_cbdata->useData));
  tmp = e;

  SETCAR(tmp, cairo_user_scaled_font_text_to_glyphs_func_t_cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithCairoRef(s_scaled_font, "CairoScaledFont", cairo_scaled_font));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_utf8));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_utf8_len));
  tmp = CDR(tmp);
  if(cairo_user_scaled_font_text_to_glyphs_func_t_cbdata->useData)
  {
    SETCAR(tmp, cairo_user_scaled_font_text_to_glyphs_func_t_cbdata->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((cairo_status_t)0));
  *s_glyphs = ((cairo_glyph_t*)asCArrayRef(VECTOR_ELT(s_ans, 1), cairo_glyph_t, asCCairoGlyph));
  *s_num_glyphs = ((int)asCInteger(VECTOR_ELT(s_ans, 2)));
  *s_clusters = ((cairo_text_cluster_t*)asCArrayRef(VECTOR_ELT(s_ans, 3), cairo_text_cluster_t, getPtrValue));
  *s_num_clusters = ((int)asCInteger(VECTOR_ELT(s_ans, 4)));
  *s_cluster_flags = ((cairo_text_cluster_flags_t)asCEnum(VECTOR_ELT(s_ans, 5), CAIRO_TYPE_TEXT_CLUSTER_FLAGS));
  return(((cairo_status_t)asCEnum(VECTOR_ELT(s_ans, 0), CAIRO_TYPE_STATUS)));
}
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)

  R_CallbackData * cairo_user_scaled_font_unicode_to_glyph_func_t_cbdata;
cairo_status_t
S_cairo_user_scaled_font_unicode_to_glyph_func_t(cairo_scaled_font_t* s_scaled_font, gulong s_unicode, gulong* s_glyph_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+cairo_user_scaled_font_unicode_to_glyph_func_t_cbdata->useData));
  tmp = e;

  SETCAR(tmp, cairo_user_scaled_font_unicode_to_glyph_func_t_cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithCairoRef(s_scaled_font, "CairoScaledFont", cairo_scaled_font));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_unicode));
  tmp = CDR(tmp);
  if(cairo_user_scaled_font_unicode_to_glyph_func_t_cbdata->useData)
  {
    SETCAR(tmp, cairo_user_scaled_font_unicode_to_glyph_func_t_cbdata->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((cairo_status_t)0));
  *s_glyph_index = ((gulong)asCNumeric(VECTOR_ELT(s_ans, 1)));
  return(((cairo_status_t)asCEnum(VECTOR_ELT(s_ans, 0), CAIRO_TYPE_STATUS)));
}
#endif 


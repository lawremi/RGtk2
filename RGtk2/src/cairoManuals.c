#include "RGtk2/cairo.h"

/* reason: these two functions are just to efficiently copy paths between cairo contexts */
USER_OBJECT_
S_cairo_append_path_from_cairo(USER_OBJECT_ s_cr, USER_OBJECT_ s_source)
{
	cairo_t* cr = (cairo_t*)getPtrValue(s_cr);
	cairo_t* source = (cairo_t*)getPtrValue(s_source);
	cairo_path_t* path = cairo_copy_path(source);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	cairo_append_path(cr, path);

	cairo_path_destroy(path);
	
	return(_result);
}
USER_OBJECT_
S_cairo_append_path_flat_from_cairo(USER_OBJECT_ s_cr, USER_OBJECT_ s_source)
{
	cairo_t* cr = (cairo_t*)getPtrValue(s_cr);
	cairo_t* source = (cairo_t*)getPtrValue(s_source);
	cairo_path_t* path = cairo_copy_path_flat(source);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	cairo_append_path(cr, path);

	return(_result);
}

/* reason: too lazy to change code to fix mem management on this
	- basically the code gen wants to free this with cairo_path_destroy,
	  but we are allocating this memory on the R heap.
*/
USER_OBJECT_
S_cairo_append_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_path)
{
	cairo_t* cr = (cairo_t*)getPtrValue(s_cr);
	cairo_path_t* path = asCCairoPath(s_path);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	cairo_append_path(cr, path);

	return(_result);
}

cairo_status_t
S_cairo_read_func_t(gpointer s_closure, guchar* s_data, guint s_length)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  guint i;
  
  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;
  
  SETCAR(tmp, ((R_CallbackData *)s_closure)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRNumeric(s_length));
  tmp = CDR(tmp);
  SETCAR(tmp, ((R_CallbackData *)s_closure)->data);
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  for (i = 0; i < s_length && i < GET_LENGTH(VECTOR_ELT(s_ans, 1)); i++)
    s_data[i] = RAW(VECTOR_ELT(s_ans, 1))[i];
  
  UNPROTECT(1);
  return(((cairo_status_t)asCEnum(VECTOR_ELT(s_ans, 0), CAIRO_TYPE_STATUS)));
}

/* dash array needs to be pre-allocated */
USER_OBJECT_
S_cairo_get_dash(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  int count = cairo_get_dash_count(cr);
  
  double dashes[count];
  double offset;

  cairo_get_dash(cr, dashes, &offset);


  _result = retByVal(_result, "dashes", PROTECT(asRArrayWithSize(dashes, asRNumeric, count)), "offset", PROTECT(asRNumeric(offset)), NULL);
  UNPROTECT(2);
#else
  error("cairo_get_dash exists only in cairo >= 1.4.0");
#endif

  return(_result);
}

/* retrieve compile-time version information */

USER_OBJECT_
boundCairoVersion(void) {
  USER_OBJECT_ version;
  version = NEW_INTEGER(3);
  INTEGER(version)[0] = CAIRO_VERSION_MAJOR;
  INTEGER(version)[1] = CAIRO_VERSION_MINOR;
  INTEGER(version)[2] = CAIRO_VERSION_MICRO;
  return(version);
}

#if CAIRO_CHECK_VERSION(1, 8, 0)

cairo_user_data_key_t init_func_key;
cairo_status_t
S_cairo_user_scaled_font_init_func_t(cairo_scaled_font_t* s_scaled_font, cairo_t* s_cr, cairo_font_extents_t* s_extents)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  cairo_font_face_t *font_face = cairo_scaled_font_get_font_face(s_scaled_font);
  R_CallbackData *cbdata = (R_CallbackData *)cairo_font_face_get_user_data(font_face, &init_func_key);

  PROTECT(e = allocVector(LANGSXP, 3+cbdata->useData));
  tmp = e;

  SETCAR(tmp, cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithCairoRef(s_scaled_font, "CairoScaledFont", cairo_scaled_font));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithCairoRef(s_cr, "Cairo", cairo));
  tmp = CDR(tmp);
  if(cbdata->useData)
    {
      SETCAR(tmp, cbdata->data);
      tmp = CDR(tmp);
    }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((cairo_status_t)0));
  {
    cairo_font_extents_t* extents = asCCairoFontExtents(VECTOR_ELT(s_ans, 1));
    *s_extents = *extents;
    g_free(extents);
  }
  return(((cairo_status_t)asCEnum(VECTOR_ELT(s_ans, 0), CAIRO_TYPE_STATUS)));
}
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)

cairo_user_data_key_t render_glyph_func_key;
cairo_status_t
S_cairo_user_scaled_font_render_glyph_func_t(cairo_scaled_font_t* s_scaled_font, gulong s_glyph, cairo_t* s_cr, cairo_font_extents_t* s_extents)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  cairo_font_face_t *font_face = cairo_scaled_font_get_font_face(s_scaled_font);
  R_CallbackData *cbdata = (R_CallbackData *)cairo_font_face_get_user_data(font_face, &render_glyph_func_key);

  PROTECT(e = allocVector(LANGSXP, 4+cbdata->useData));
  tmp = e;

  SETCAR(tmp, cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithCairoRef(s_scaled_font, "CairoScaledFont", cairo_scaled_font));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_glyph));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithCairoRef(s_cr, "Cairo", cairo));
  tmp = CDR(tmp);
  if(cbdata->useData)
    {
      SETCAR(tmp, cbdata->data);
      tmp = CDR(tmp);
    }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((cairo_status_t)0));
  {
    cairo_font_extents_t* extents = asCCairoFontExtents(VECTOR_ELT(s_ans, 1));
    *s_extents = *extents;
    g_free(extents);
  }
  return(((cairo_status_t)asCEnum(VECTOR_ELT(s_ans, 0), CAIRO_TYPE_STATUS)));
}
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)

cairo_user_data_key_t text_to_glyphs_func_key;
cairo_status_t
S_cairo_user_scaled_font_text_to_glyphs_func_t(
                                    cairo_scaled_font_t* s_scaled_font,
                                    const char* s_utf8,
                                    int s_utf8_len,
                                    cairo_glyph_t** s_glyphs,
                                    int* s_num_glyphs,
                                    cairo_text_cluster_t** s_clusters,
                                    int* s_num_clusters,
                                    cairo_text_cluster_flags_t* s_cluster_flags)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  cairo_font_face_t *font_face = cairo_scaled_font_get_font_face(s_scaled_font);
  R_CallbackData *cbdata = (R_CallbackData *)cairo_font_face_get_user_data(font_face, &text_to_glyphs_func_key);
  
  PROTECT(e = allocVector(LANGSXP, 4+cbdata->useData));
  tmp = e;

  SETCAR(tmp, cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithCairoRef(s_scaled_font, "CairoScaledFont",
                                     cairo_scaled_font));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_utf8));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_utf8_len));
  tmp = CDR(tmp);
  if(cbdata->useData)
    {
      SETCAR(tmp, cbdata->data);
      tmp = CDR(tmp);
    }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((cairo_status_t)0));

  SEXP ans_glyphs = VECTOR_ELT(s_ans, 1);
  *s_num_glyphs = GET_LENGTH(ans_glyphs);
  *s_glyphs = cairo_glyph_allocate(*s_num_glyphs);
  for (int i = 0; i < *s_num_glyphs; i++)
    *s_glyphs[i] = *asCCairoGlyph(VECTOR_ELT(ans_glyphs, i));

  SEXP ans_clusters = VECTOR_ELT(s_ans, 1);
  *s_num_clusters = GET_LENGTH(ans_clusters);
  *s_clusters = cairo_text_cluster_allocate(*s_num_clusters);
  for (int i = 0; i < *s_num_clusters; i++)
    *s_clusters[i] = *asCCairoTextCluster(VECTOR_ELT(ans_clusters, i));
  
  *s_cluster_flags =
    ((cairo_text_cluster_flags_t)asCEnum(VECTOR_ELT(s_ans, 5),
                                         CAIRO_TYPE_TEXT_CLUSTER_FLAGS));
  return(((cairo_status_t)asCEnum(VECTOR_ELT(s_ans, 0), CAIRO_TYPE_STATUS)));
}
#endif 

#if CAIRO_CHECK_VERSION(1, 8, 0)

cairo_user_data_key_t unicode_to_glyph_func_key;
cairo_status_t
S_cairo_user_scaled_font_unicode_to_glyph_func_t(cairo_scaled_font_t* s_scaled_font, gulong s_unicode, gulong* s_glyph_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  cairo_font_face_t *font_face = cairo_scaled_font_get_font_face(s_scaled_font);
  R_CallbackData *cbdata = (R_CallbackData *)cairo_font_face_get_user_data(font_face, &unicode_to_glyph_func_key);

  PROTECT(e = allocVector(LANGSXP, 3+cbdata->useData));
  tmp = e;

  SETCAR(tmp, cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithCairoRef(s_scaled_font, "CairoScaledFont", cairo_scaled_font));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_unicode));
  tmp = CDR(tmp);
  if(cbdata->useData)
    {
      SETCAR(tmp, cbdata->data);
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

USER_OBJECT_
S_cairo_user_font_face_set_init_func(USER_OBJECT_ s_font_face, USER_OBJECT_ s_init_func)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_user_scaled_font_init_func_t init_func = ((cairo_user_scaled_font_init_func_t)S_cairo_user_scaled_font_init_func_t);
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));
  cairo_font_face_set_user_data(font_face, &init_func_key,
                                R_createCBData(s_init_func, NULL),
                                (cairo_destroy_func_t)R_freeCBData);

  cairo_user_font_face_set_init_func(font_face, init_func);

#else
  error("cairo_user_font_face_set_init_func exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_user_font_face_set_render_glyph_func(USER_OBJECT_ s_font_face, USER_OBJECT_ s_render_glyph_func)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_user_scaled_font_render_glyph_func_t render_glyph_func = ((cairo_user_scaled_font_render_glyph_func_t)S_cairo_user_scaled_font_render_glyph_func_t);
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));
  cairo_font_face_set_user_data(font_face, &render_glyph_func_key,
                                R_createCBData(s_render_glyph_func, NULL),
                                (cairo_destroy_func_t)R_freeCBData);


  cairo_user_font_face_set_render_glyph_func(font_face, render_glyph_func);

#else
  error("cairo_user_font_face_set_render_glyph_func exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_user_font_face_set_unicode_to_glyph_func(USER_OBJECT_ s_font_face, USER_OBJECT_ s_unicode_to_glyph_func)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_user_scaled_font_unicode_to_glyph_func_t unicode_to_glyph_func = ((cairo_user_scaled_font_unicode_to_glyph_func_t)S_cairo_user_scaled_font_unicode_to_glyph_func_t);
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));
  cairo_font_face_set_user_data(font_face, &unicode_to_glyph_func_key,
                                R_createCBData(s_unicode_to_glyph_func, NULL),
                                (cairo_destroy_func_t)R_freeCBData);


  cairo_user_font_face_set_unicode_to_glyph_func(font_face, unicode_to_glyph_func);

#else
  error("cairo_user_font_face_set_unicode_to_glyph_func exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_user_font_face_set_text_to_glyphs_func(USER_OBJECT_ s_font_face, USER_OBJECT_ s_text_to_glyphs_func)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_user_scaled_font_text_to_glyphs_func_t text_to_glyphs_func = ((cairo_user_scaled_font_text_to_glyphs_func_t)S_cairo_user_scaled_font_text_to_glyphs_func_t);
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));
  cairo_font_face_set_user_data(font_face, &text_to_glyphs_func_key,
                                R_createCBData(s_text_to_glyphs_func, NULL),
                                (cairo_destroy_func_t)R_freeCBData);


  cairo_user_font_face_set_text_to_glyphs_func(font_face, text_to_glyphs_func);

#else
  error("cairo_user_font_face_set_text_to_glyphs_func exists only in cairo >= 1.8.0");
#endif

  return(_result);
}

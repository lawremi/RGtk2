#include "RGtk2/pangoClasses.h"
static SEXP S_PangoFontMap_symbol;

static PangoFont*
S_virtual_pango_font_map_load_font(PangoFontMap* s_object, PangoContext* s_context, const PangoFontDescription* s_desc)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontMap_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoFontMap")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "PangoContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_desc ? pango_font_description_copy(s_desc) : NULL, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((PangoFont*)0));
  return(PANGO_FONT(getPtrValueWithRef(s_ans)));
}

static void
S_virtual_pango_font_map_list_families(PangoFontMap* s_object, PangoFontFamily*** s_families, int* s_n_families)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontMap_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoFontMap")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_families = ((PangoFontFamily**)asCArrayDup(VECTOR_ELT(s_ans, 0), PangoFontFamily*, getPtrValueWithRef));
  *s_n_families = ((int)asCInteger(VECTOR_ELT(s_ans, 1)));
}

static PangoFontset*
S_virtual_pango_font_map_load_fontset(PangoFontMap* s_object, PangoContext* s_context, const PangoFontDescription* s_desc, PangoLanguage* s_language)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontMap_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoFontMap")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "PangoContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_desc ? pango_font_description_copy(s_desc) : NULL, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_language ? (s_language) : NULL, "PangoLanguage"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((PangoFontset*)0));
  return(PANGO_FONTSET(getPtrValueWithRef(s_ans)));
}
void
S_pango_font_map_class_init(PangoFontMapClass * c, SEXP e)
{
  SEXP s;

  S_PangoFontMap_symbol = install("PangoFontMap");
  s = PROTECT(findVar(S_PangoFontMap_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(PangoFontMapClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->load_font = S_virtual_pango_font_map_load_font;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->list_families = S_virtual_pango_font_map_list_families;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->load_fontset = S_virtual_pango_font_map_load_fontset;
}
USER_OBJECT_
S_pango_font_map_class_load_font(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_desc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMapClass* object_class = ((PangoFontMapClass*)getPtrValue(s_object_class));
  PangoFontMap* object = PANGO_FONT_MAP(getPtrValue(s_object));
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));
  const PangoFontDescription* desc = ((const PangoFontDescription*)getPtrValue(s_desc));

  PangoFont* ans;

  ans = object_class->load_font(object, context, desc);

  _result = toRPointerWithFinalizer(ans, "PangoFont", (RPointerFinalizer) g_object_unref);

  return(_result);
}

USER_OBJECT_
S_pango_font_map_class_list_families(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMapClass* object_class = ((PangoFontMapClass*)getPtrValue(s_object_class));
  PangoFontMap* object = PANGO_FONT_MAP(getPtrValue(s_object));

  PangoFontFamily** families = NULL;
  int n_families;

  object_class->list_families(object, &families, &n_families);


  _result = retByVal(PROTECT(_result), "families", PROTECT(toRPointerWithRefArrayWithSize(families, "PangoFontFamily", n_families)), "n.families", PROTECT(asRInteger(n_families)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, families);;
  ;

  return(_result);
}

USER_OBJECT_
S_pango_font_map_class_load_fontset(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_desc, USER_OBJECT_ s_language)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMapClass* object_class = ((PangoFontMapClass*)getPtrValue(s_object_class));
  PangoFontMap* object = PANGO_FONT_MAP(getPtrValue(s_object));
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));
  const PangoFontDescription* desc = ((const PangoFontDescription*)getPtrValue(s_desc));
  PangoLanguage* language = ((PangoLanguage*)getPtrValue(s_language));

  PangoFontset* ans;

  ans = object_class->load_fontset(object, context, desc, language);

  _result = toRPointerWithFinalizer(ans, "PangoFontset", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

static SEXP S_PangoRenderer_symbol;

static void
S_virtual_pango_renderer_draw_glyphs(PangoRenderer* s_object, PangoFont* s_font, PangoGlyphString* s_glyphs, int s_x, int s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_font, "PangoFont"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_glyphs ? pango_glyph_string_copy(s_glyphs) : NULL, "PangoGlyphString", (RPointerFinalizer) pango_glyph_string_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_pango_renderer_draw_rectangle(PangoRenderer* s_object, PangoRenderPart s_part, int s_x, int s_y, int s_width, int s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_part, PANGO_TYPE_RENDER_PART));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_pango_renderer_draw_error_underline(PangoRenderer* s_object, int s_x, int s_y, int s_width, int s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_pango_renderer_draw_shape(PangoRenderer* s_object, PangoAttrShape* s_attr, int s_x, int s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_attr, "PangoAttrShape"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_pango_renderer_draw_trapezoid(PangoRenderer* s_object, PangoRenderPart s_part, double s_y1_, double s_x11, double s_x21, double s_y2, double s_x12, double s_x22)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 9));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_part, PANGO_TYPE_RENDER_PART));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_y1_));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_x11));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_x21));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_y2));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_x12));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_x22));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_pango_renderer_draw_glyph(PangoRenderer* s_object, PangoFont* s_font, PangoGlyph s_glyph, double s_x, double s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_font, "PangoFont"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_glyph));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_y));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_pango_renderer_part_changed(PangoRenderer* s_object, PangoRenderPart s_part)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_part, PANGO_TYPE_RENDER_PART));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_pango_renderer_begin(PangoRenderer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_pango_renderer_end(PangoRenderer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_pango_renderer_prepare_run(PangoRenderer* s_object, PangoGlyphItem* s_run)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_run, "PangoGlyphItem", (RPointerFinalizer) pango_glyph_item_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_pango_renderer_draw_glyph_item(PangoRenderer* s_object, const char* s_text, PangoGlyphItem* s_glyph_item, int s_x, int s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "PangoRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_text));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_glyph_item, "PangoGlyphItem", (RPointerFinalizer) pango_glyph_item_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_pango_renderer_class_init(PangoRendererClass * c, SEXP e)
{
  SEXP s;

  S_PangoRenderer_symbol = install("PangoRenderer");
  s = PROTECT(findVar(S_PangoRenderer_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(PangoRendererClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->draw_glyphs = S_virtual_pango_renderer_draw_glyphs;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->draw_rectangle = S_virtual_pango_renderer_draw_rectangle;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->draw_error_underline = S_virtual_pango_renderer_draw_error_underline;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->draw_shape = S_virtual_pango_renderer_draw_shape;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->draw_trapezoid = S_virtual_pango_renderer_draw_trapezoid;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->draw_glyph = S_virtual_pango_renderer_draw_glyph;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->part_changed = S_virtual_pango_renderer_part_changed;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->begin = S_virtual_pango_renderer_begin;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->end = S_virtual_pango_renderer_end;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->prepare_run = S_virtual_pango_renderer_prepare_run;
#if PANGO_CHECK_VERSION(1, 22, 0)
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->draw_glyph_item = S_virtual_pango_renderer_draw_glyph_item;
#endif
}
USER_OBJECT_
S_pango_renderer_class_draw_glyphs(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoFont* font = PANGO_FONT(getPtrValue(s_font));
  PangoGlyphString* glyphs = ((PangoGlyphString*)getPtrValue(s_glyphs));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));


  object_class->draw_glyphs(object, font, glyphs, x, y);


  return(_result);
}

USER_OBJECT_
S_pango_renderer_class_draw_rectangle(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoRenderPart part = ((PangoRenderPart)asCEnum(s_part, PANGO_TYPE_RENDER_PART));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));


  object_class->draw_rectangle(object, part, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_pango_renderer_class_draw_error_underline(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));


  object_class->draw_error_underline(object, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_pango_renderer_class_draw_shape(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoAttrShape* attr = ((PangoAttrShape*)getPtrValue(s_attr));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));


  object_class->draw_shape(object, attr, x, y);


  return(_result);
}

USER_OBJECT_
S_pango_renderer_class_draw_trapezoid(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_y1_, USER_OBJECT_ s_x11, USER_OBJECT_ s_x21, USER_OBJECT_ s_y2, USER_OBJECT_ s_x12, USER_OBJECT_ s_x22)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoRenderPart part = ((PangoRenderPart)asCEnum(s_part, PANGO_TYPE_RENDER_PART));
  double y1_ = ((double)asCNumeric(s_y1_));
  double x11 = ((double)asCNumeric(s_x11));
  double x21 = ((double)asCNumeric(s_x21));
  double y2 = ((double)asCNumeric(s_y2));
  double x12 = ((double)asCNumeric(s_x12));
  double x22 = ((double)asCNumeric(s_x22));


  object_class->draw_trapezoid(object, part, y1_, x11, x21, y2, x12, x22);


  return(_result);
}

USER_OBJECT_
S_pango_renderer_class_draw_glyph(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_glyph, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoFont* font = PANGO_FONT(getPtrValue(s_font));
  PangoGlyph glyph = ((PangoGlyph)asCNumeric(s_glyph));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));


  object_class->draw_glyph(object, font, glyph, x, y);


  return(_result);
}

USER_OBJECT_
S_pango_renderer_class_part_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_part)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoRenderPart part = ((PangoRenderPart)asCEnum(s_part, PANGO_TYPE_RENDER_PART));


  object_class->part_changed(object, part);


  return(_result);
}

USER_OBJECT_
S_pango_renderer_class_begin(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));


  object_class->begin(object);


  return(_result);
}

USER_OBJECT_
S_pango_renderer_class_end(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));


  object_class->end(object);


  return(_result);
}

USER_OBJECT_
S_pango_renderer_class_prepare_run(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_run)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoGlyphItem* run = ((PangoGlyphItem*)getPtrValue(s_run));


  object_class->prepare_run(object, run);


  return(_result);
}

USER_OBJECT_
S_pango_renderer_class_draw_glyph_item(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoRendererClass* object_class = ((PangoRendererClass*)getPtrValue(s_object_class));
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  const char* text = ((const char*)asCString(s_text));
  PangoGlyphItem* glyph_item = ((PangoGlyphItem*)getPtrValue(s_glyph_item));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));


  object_class->draw_glyph_item(object, text, glyph_item, x, y);

#else
  error("pango_renderer_draw_glyph_item exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 


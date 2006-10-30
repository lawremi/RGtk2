#include "pangoClasses.h"
#include "conversion.h"
#include "utils.h"
#include "RGtk2.h"

static SEXP S_PangoFont_symbol;
static 
PangoFontDescription*
S_virtual_pango_font_describe(PangoFont* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFont_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFont"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((PangoFontDescription*)getPtrValue(s_ans)));
}
static 
PangoCoverage*
S_virtual_pango_font_get_coverage(PangoFont* s_object, PangoLanguage* s_lang)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFont_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFont"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer((s_lang), "PangoLanguage"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((PangoCoverage*)getPtrValue(s_ans)));
}
static 
void
S_virtual_pango_font_get_glyph_extents(PangoFont* s_object, PangoGlyph s_glyph, PangoRectangle* s_ink_rect, PangoRectangle* s_logical_rect)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFont_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFont"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_glyph));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
PangoFontMetrics*
S_virtual_pango_font_get_metrics(PangoFont* s_object, PangoLanguage* s_language)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFont_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFont"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer((s_language), "PangoLanguage"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((PangoFontMetrics*)getPtrValue(s_ans)));
}
static 
PangoFontMap*
S_virtual_pango_font_get_font_map(PangoFont* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFont_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFont"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(PANGO_FONT_MAP(getPtrValue(s_ans)));
}
void
S_pango_font_class_init(PangoFontClass * c, SEXP e)
{
  SEXP s;

  S_PangoFont_symbol = install("S_PangoFont");
  s = findVar(S_PangoFont_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(PangoFontClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), s);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->describe = S_virtual_pango_font_describe;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_coverage = S_virtual_pango_font_get_coverage;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_glyph_extents = S_virtual_pango_font_get_glyph_extents;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_metrics = S_virtual_pango_font_get_metrics;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_font_map = S_virtual_pango_font_get_font_map;
} 

static SEXP S_PangoFontFace_symbol;
static 
const char*
S_virtual_pango_font_face_get_face_name(PangoFontFace* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontFace_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontFace"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const char*)asCString(s_ans)));
}
static 
PangoFontDescription*
S_virtual_pango_font_face_describe(PangoFontFace* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontFace_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontFace"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((PangoFontDescription*)getPtrValue(s_ans)));
}
static 
void
S_virtual_pango_font_face_list_sizes(PangoFontFace* s_object, int** s_sizes, int* s_n_sizes)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontFace_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontFace"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_pango_font_face_class_init(PangoFontFaceClass * c, SEXP e)
{
  SEXP s;

  S_PangoFontFace_symbol = install("S_PangoFontFace");
  s = findVar(S_PangoFontFace_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(PangoFontFaceClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), s);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_face_name = S_virtual_pango_font_face_get_face_name;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->describe = S_virtual_pango_font_face_describe;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->list_sizes = S_virtual_pango_font_face_list_sizes;
} 

static SEXP S_PangoFontFamily_symbol;
static 
void
S_virtual_pango_font_family_list_faces(PangoFontFamily* s_object, PangoFontFace*** s_faces, int* s_n_faces)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontFamily_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontFamily"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
const char*
S_virtual_pango_font_family_get_name(PangoFontFamily* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontFamily_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontFamily"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const char*)asCString(s_ans)));
}
static 
gboolean
S_virtual_pango_font_family_is_monospace(PangoFontFamily* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontFamily_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontFamily"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
void
S_pango_font_family_class_init(PangoFontFamilyClass * c, SEXP e)
{
  SEXP s;

  S_PangoFontFamily_symbol = install("S_PangoFontFamily");
  s = findVar(S_PangoFontFamily_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(PangoFontFamilyClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), s);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->list_faces = S_virtual_pango_font_family_list_faces;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_name = S_virtual_pango_font_family_get_name;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->is_monospace = S_virtual_pango_font_family_is_monospace;
} 

static SEXP S_PangoFontMap_symbol;
static 
PangoFont*
S_virtual_pango_font_map_load_font(PangoFontMap* s_object, PangoContext* s_context, const PangoFontDescription* s_desc)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontMap_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontMap"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "PangoContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(pango_font_description_copy(s_desc), "PangoFontDescription"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(PANGO_FONT(getPtrValue(s_ans)));
}
static 
void
S_virtual_pango_font_map_list_families(PangoFontMap* s_object, PangoFontFamily*** s_families, int* s_n_families)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontMap_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontMap"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
PangoFontset*
S_virtual_pango_font_map_load_fontset(PangoFontMap* s_object, PangoContext* s_context, const PangoFontDescription* s_desc, PangoLanguage* s_language)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontMap_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontMap"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "PangoContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(pango_font_description_copy(s_desc), "PangoFontDescription"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer((s_language), "PangoLanguage"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(PANGO_FONTSET(getPtrValue(s_ans)));
}
void
S_pango_font_map_class_init(PangoFontMapClass * c, SEXP e)
{
  SEXP s;

  S_PangoFontMap_symbol = install("S_PangoFontMap");
  s = findVar(S_PangoFontMap_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(PangoFontMapClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), s);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->load_font = S_virtual_pango_font_map_load_font;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->list_families = S_virtual_pango_font_map_list_families;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->load_fontset = S_virtual_pango_font_map_load_fontset;
} 

static SEXP S_PangoFontset_symbol;
static 
PangoFont*
S_virtual_pango_fontset_get_font(PangoFontset* s_object, guint s_wc)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontset_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontset"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_wc));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(PANGO_FONT(getPtrValue(s_ans)));
}
static 
PangoFontMetrics*
S_virtual_pango_fontset_get_metrics(PangoFontset* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontset_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontset"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((PangoFontMetrics*)getPtrValue(s_ans)));
}
static 
PangoLanguage*
S_virtual_pango_fontset_get_language(PangoFontset* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontset_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontset"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((PangoLanguage*)getPtrValue(s_ans)));
}
static 
void
S_virtual_pango_fontset_foreach(PangoFontset* s_object, PangoFontsetForeachFunc s_func, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoFontset_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoFontset"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_func, "PangoFontsetForeachFunc"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_data);
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_pango_fontset_class_init(PangoFontsetClass * c, SEXP e)
{
  SEXP s;

  S_PangoFontset_symbol = install("S_PangoFontset");
  s = findVar(S_PangoFontset_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(PangoFontsetClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), s);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_font = S_virtual_pango_fontset_get_font;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_metrics = S_virtual_pango_fontset_get_metrics;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_language = S_virtual_pango_fontset_get_language;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->foreach = S_virtual_pango_fontset_foreach;
} 

static SEXP S_PangoRenderer_symbol;
static 
void
S_virtual_pango_renderer_draw_glyphs(PangoRenderer* s_object, PangoFont* s_font, PangoGlyphString* s_glyphs, int s_x, int s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_font, "PangoFont"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(pango_glyph_string_copy(s_glyphs), "PangoGlyphString", (RPointerFinalizer) pango_glyph_string_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_pango_renderer_draw_rectangle(PangoRenderer* s_object, PangoRenderPart s_part, int s_x, int s_y, int s_width, int s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoRenderer"));
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

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_pango_renderer_draw_error_underline(PangoRenderer* s_object, int s_x, int s_y, int s_width, int s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_pango_renderer_draw_shape(PangoRenderer* s_object, PangoAttrShape* s_attr, int s_x, int s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_attr, "PangoAttrShape"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_pango_renderer_draw_trapezoid(PangoRenderer* s_object, PangoRenderPart s_part, double s_y1_, double s_x11, double s_x21, double s_y2, double s_x12, double s_x22)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 9));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoRenderer"));
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

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_pango_renderer_draw_glyph(PangoRenderer* s_object, PangoFont* s_font, PangoGlyph s_glyph, double s_x, double s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_font, "PangoFont"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_glyph));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_y));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_pango_renderer_part_changed(PangoRenderer* s_object, PangoRenderPart s_part)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_part, PANGO_TYPE_RENDER_PART));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_pango_renderer_begin(PangoRenderer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoRenderer"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_pango_renderer_end(PangoRenderer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoRenderer"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_pango_renderer_prepare_run(PangoRenderer* s_object, PangoLayoutRun* s_run)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  GTypeQuery query;
  g_type_query(G_OBJECT_TYPE(s_object), &query);

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_PangoRenderer_symbol, G_STRUCT_MEMBER(SEXP, G_OBJECT_GET_CLASS(s_object), query.class_size)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "PangoRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_run, "PangoLayoutRun"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_pango_renderer_class_init(PangoRendererClass * c, SEXP e)
{
  SEXP s;

  S_PangoRenderer_symbol = install("S_PangoRenderer");
  s = findVar(S_PangoRenderer_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(PangoRendererClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), s);

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
} 


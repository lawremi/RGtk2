#include <RGtk2/gobject.h>
#include <RGtk2/pango.h>

#include "pangoFuncs.h"


USER_OBJECT_
S_pango_color_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_color_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_color_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoColor* object = ((PangoColor*)getPtrValue(s_object));

  PangoColor* ans;

  ans = pango_color_copy(object);

  _result = toRPointerWithFinalizer(ans, "PangoColor", (RPointerFinalizer) pango_color_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_color_free(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoColor* object = ((PangoColor*)getPtrValue(s_object));


  pango_color_free(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_color_parse(USER_OBJECT_ s_spec)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* spec = ((const char*)asCString(s_spec));

  gboolean ans;
  PangoColor color;

  ans = pango_color_parse(&color, spec);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "color", PROTECT(toRPointerWithFinalizer(&color, "PangoColor", (RPointerFinalizer) pango_color_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_type_register(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* name = ((const gchar*)asCString(s_name));

  PangoAttrType ans;

  ans = pango_attr_type_register(name);

  _result = asREnum(ans, PANGO_TYPE_ATTR_TYPE);

  return(_result);
}
 

USER_OBJECT_
S_pango_attribute_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttribute* object = ((PangoAttribute*)getPtrValue(s_object));

  PangoAttribute* ans;

  ans = pango_attribute_copy(object);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attribute_destroy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttribute* object = ((PangoAttribute*)getPtrValue(s_object));


  pango_attribute_destroy(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_attribute_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_attr2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttribute* object = ((PangoAttribute*)getPtrValue(s_object));
  const PangoAttribute* attr2 = ((const PangoAttribute*)getPtrValue(s_attr2));

  gboolean ans;

  ans = pango_attribute_equal(object, attr2);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_language_new(USER_OBJECT_ s_language)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLanguage* language = ((PangoLanguage*)getPtrValue(s_language));

  PangoAttribute* ans;

  ans = pango_attr_language_new(language);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_family_new(USER_OBJECT_ s_family)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* family = ((const char*)asCString(s_family));

  PangoAttribute* ans;

  ans = pango_attr_family_new(family);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_foreground_new(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint16 red = ((guint16)asCInteger(s_red));
  guint16 green = ((guint16)asCInteger(s_green));
  guint16 blue = ((guint16)asCInteger(s_blue));

  PangoAttribute* ans;

  ans = pango_attr_foreground_new(red, green, blue);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_background_new(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint16 red = ((guint16)asCInteger(s_red));
  guint16 green = ((guint16)asCInteger(s_green));
  guint16 blue = ((guint16)asCInteger(s_blue));

  PangoAttribute* ans;

  ans = pango_attr_background_new(red, green, blue);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_strikethrough_color_new(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint16 red = ((guint16)asCInteger(s_red));
  guint16 green = ((guint16)asCInteger(s_green));
  guint16 blue = ((guint16)asCInteger(s_blue));

  PangoAttribute* ans;

  ans = pango_attr_strikethrough_color_new(red, green, blue);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_underline_color_new(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint16 red = ((guint16)asCInteger(s_red));
  guint16 green = ((guint16)asCInteger(s_green));
  guint16 blue = ((guint16)asCInteger(s_blue));

  PangoAttribute* ans;

  ans = pango_attr_underline_color_new(red, green, blue);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_size_new(USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  int size = ((int)asCInteger(s_size));

  PangoAttribute* ans;

  ans = pango_attr_size_new(size);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_size_new_absolute(USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  int size = ((int)asCInteger(s_size));

  PangoAttribute* ans;

  ans = pango_attr_size_new_absolute(size);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_style_new(USER_OBJECT_ s_style)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoStyle style = ((PangoStyle)asCEnum(s_style, PANGO_TYPE_STYLE));

  PangoAttribute* ans;

  ans = pango_attr_style_new(style);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_weight_new(USER_OBJECT_ s_weight)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoWeight weight = ((PangoWeight)asCEnum(s_weight, PANGO_TYPE_WEIGHT));

  PangoAttribute* ans;

  ans = pango_attr_weight_new(weight);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_variant_new(USER_OBJECT_ s_variant)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoVariant variant = ((PangoVariant)asCEnum(s_variant, PANGO_TYPE_VARIANT));

  PangoAttribute* ans;

  ans = pango_attr_variant_new(variant);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_stretch_new(USER_OBJECT_ s_stretch)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoStretch stretch = ((PangoStretch)asCEnum(s_stretch, PANGO_TYPE_STRETCH));

  PangoAttribute* ans;

  ans = pango_attr_stretch_new(stretch);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_font_desc_new(USER_OBJECT_ s_desc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const PangoFontDescription* desc = ((const PangoFontDescription*)getPtrValue(s_desc));

  PangoAttribute* ans;

  ans = pango_attr_font_desc_new(desc);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_underline_new(USER_OBJECT_ s_underline)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoUnderline underline = ((PangoUnderline)asCEnum(s_underline, PANGO_TYPE_UNDERLINE));

  PangoAttribute* ans;

  ans = pango_attr_underline_new(underline);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_strikethrough_new(USER_OBJECT_ s_strikethrough)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gboolean strikethrough = ((gboolean)asCLogical(s_strikethrough));

  PangoAttribute* ans;

  ans = pango_attr_strikethrough_new(strikethrough);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_rise_new(USER_OBJECT_ s_rise)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  int rise = ((int)asCInteger(s_rise));

  PangoAttribute* ans;

  ans = pango_attr_rise_new(rise);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_shape_new(USER_OBJECT_ s_ink_rect, USER_OBJECT_ s_logical_rect)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const PangoRectangle* ink_rect = asCPangoRectangle(s_ink_rect);
  const PangoRectangle* logical_rect = asCPangoRectangle(s_logical_rect);

  PangoAttribute* ans;

  ans = pango_attr_shape_new(ink_rect, logical_rect);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_shape_new_with_data(USER_OBJECT_ s_ink_rect, USER_OBJECT_ s_logical_rect, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const PangoRectangle* ink_rect = asCPangoRectangle(s_ink_rect);
  const PangoRectangle* logical_rect = asCPangoRectangle(s_logical_rect);
  gpointer data = ((gpointer)asCGenericData(s_data));
  GDestroyNotify destroy_func = ((GDestroyNotify)R_ReleaseObject);

  PangoAttribute* ans;

  ans = pango_attr_shape_new_with_data(ink_rect, logical_rect, data, NULL, destroy_func);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_letter_spacing_new(USER_OBJECT_ s_letter_spacing)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  int letter_spacing = ((int)asCInteger(s_letter_spacing));

  PangoAttribute* ans;

  ans = pango_attr_letter_spacing_new(letter_spacing);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_scale_new(USER_OBJECT_ s_scale_factor)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double scale_factor = ((double)asCNumeric(s_scale_factor));

  PangoAttribute* ans;

  ans = pango_attr_scale_new(scale_factor);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_fallback_new(USER_OBJECT_ s_fallback)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gboolean fallback = ((gboolean)asCLogical(s_fallback));

  PangoAttribute* ans;

  ans = pango_attr_fallback_new(fallback);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_attr_list_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  PangoAttrList* ans;

  ans = pango_attr_list_new();

  _result = toRPointerWithFinalizer(ans, "PangoAttrList", (RPointerFinalizer) pango_attr_list_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_ref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrList* object = ((PangoAttrList*)getPtrValue(s_object));


  pango_attr_list_ref(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_unref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrList* object = ((PangoAttrList*)getPtrValue(s_object));


  pango_attr_list_unref(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrList* object = ((PangoAttrList*)getPtrValue(s_object));

  PangoAttrList* ans;

  ans = pango_attr_list_copy(object);

  _result = toRPointerWithFinalizer(ans, "PangoAttrList", (RPointerFinalizer) pango_attr_list_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_insert(USER_OBJECT_ s_object, USER_OBJECT_ s_attr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrList* object = ((PangoAttrList*)getPtrValue(s_object));
  PangoAttribute* attr = ((PangoAttribute*)getPtrValue(s_attr));


  pango_attr_list_insert(object, attr);


  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_insert_before(USER_OBJECT_ s_object, USER_OBJECT_ s_attr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrList* object = ((PangoAttrList*)getPtrValue(s_object));
  PangoAttribute* attr = ((PangoAttribute*)getPtrValue(s_attr));


  pango_attr_list_insert_before(object, attr);


  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_change(USER_OBJECT_ s_object, USER_OBJECT_ s_attr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrList* object = ((PangoAttrList*)getPtrValue(s_object));
  PangoAttribute* attr = ((PangoAttribute*)getPtrValue(s_attr));


  pango_attr_list_change(object, attr);


  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_splice(USER_OBJECT_ s_object, USER_OBJECT_ s_other, USER_OBJECT_ s_pos, USER_OBJECT_ s_len)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrList* object = ((PangoAttrList*)getPtrValue(s_object));
  PangoAttrList* other = ((PangoAttrList*)getPtrValue(s_other));
  gint pos = ((gint)asCInteger(s_pos));
  gint len = ((gint)asCInteger(s_len));


  pango_attr_list_splice(object, other, pos, len);


  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_get_iterator(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrList* object = ((PangoAttrList*)getPtrValue(s_object));

  PangoAttrIterator* ans;

  ans = pango_attr_list_get_iterator(object);

  _result = toRPointerWithFinalizer(ans, "PangoAttrIterator", (RPointerFinalizer) pango_attr_iterator_destroy);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_list_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrFilterFunc func = ((PangoAttrFilterFunc)S_PangoAttrFilterFunc);
  R_CallbackData* data = R_createCBData(s_func, s_data);
  PangoAttrList* object = ((PangoAttrList*)getPtrValue(s_object));

  PangoAttrList* ans;

  ans = pango_attr_list_filter(object, func, data);

  _result = toRPointerWithFinalizer(ans, "PangoAttrList", (RPointerFinalizer) pango_attr_list_unref);
  R_freeCBData(data);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_iterator_range(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrIterator* object = ((PangoAttrIterator*)getPtrValue(s_object));

  gint start;
  gint end;

  pango_attr_iterator_range(object, &start, &end);


  _result = retByVal(PROTECT(_result), "start", PROTECT(asRInteger(start)), "end", PROTECT(asRInteger(end)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_iterator_next(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrIterator* object = ((PangoAttrIterator*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_attr_iterator_next(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_iterator_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrIterator* object = ((PangoAttrIterator*)getPtrValue(s_object));

  PangoAttrIterator* ans;

  ans = pango_attr_iterator_copy(object);

  _result = toRPointerWithFinalizer(ans, "PangoAttrIterator", (RPointerFinalizer) pango_attr_iterator_destroy);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_iterator_destroy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrIterator* object = ((PangoAttrIterator*)getPtrValue(s_object));


  pango_attr_iterator_destroy(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_attr_iterator_get(USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrIterator* object = ((PangoAttrIterator*)getPtrValue(s_object));
  PangoAttrType type = ((PangoAttrType)asCEnum(s_type, PANGO_TYPE_ATTR_TYPE));

  PangoAttribute* ans;

  ans = pango_attr_iterator_get(object, type);

  _result = asRPangoAttributeCopy(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_iterator_get_attrs(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoAttrIterator* object = ((PangoAttrIterator*)getPtrValue(s_object));

  GSList* ans;

  ans = pango_attr_iterator_get_attrs(object);

  _result = asRGSListConv(ans, ((ElementConverter)asRPangoAttributeCopy));
    CLEANUP(g_slist_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_pango_parse_markup(USER_OBJECT_ s_markup_text, USER_OBJECT_ s_length, USER_OBJECT_ s_accel_marker)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* markup_text = ((const char*)asCString(s_markup_text));
  int length = ((int)asCInteger(s_length));
  gunichar accel_marker = ((gunichar)asCNumeric(s_accel_marker));

  gboolean ans;
  PangoAttrList* attr_list = NULL;
  char* text = NULL;
  gunichar accel_char;
  GError* error = NULL;

  ans = pango_parse_markup(markup_text, length, accel_marker, &attr_list, &text, &accel_char, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "attr.list", PROTECT(toRPointerWithFinalizer(attr_list, "PangoAttrList", (RPointerFinalizer) pango_attr_list_unref)), "text", PROTECT(asRString(text)), "accel.char", PROTECT(asRNumeric(accel_char)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(5);
  ;
  ;
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_pango_find_paragraph_boundary(USER_OBJECT_ s_text, USER_OBJECT_ s_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* text = ((const gchar*)asCString(s_text));
  gint length = ((gint)asCInteger(s_length));

  gint paragraph_delimiter_index;
  gint next_paragraph_start;

  pango_find_paragraph_boundary(text, length, &paragraph_delimiter_index, &next_paragraph_start);


  _result = retByVal(PROTECT(_result), "paragraph.delimiter.index", PROTECT(asRInteger(paragraph_delimiter_index)), "next.paragraph.start", PROTECT(asRInteger(next_paragraph_start)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_font_map_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_cairo_font_map_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_font_map_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  PangoFontMap* ans;

  ans = pango_cairo_font_map_new();

  _result = toRPointerWithFinalizer(ans, "PangoFontMap", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_font_map_get_default(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  PangoFontMap* ans;

  ans = pango_cairo_font_map_get_default();

  _result = toRPointerWithRef(ans, "PangoFontMap");

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_font_map_set_resolution(USER_OBJECT_ s_object, USER_OBJECT_ s_dpi)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoCairoFontMap* object = PANGO_CAIRO_FONT_MAP(getPtrValue(s_object));
  double dpi = ((double)asCNumeric(s_dpi));


  pango_cairo_font_map_set_resolution(object, dpi);


  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_font_map_get_resolution(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoCairoFontMap* object = PANGO_CAIRO_FONT_MAP(getPtrValue(s_object));

  double ans;

  ans = pango_cairo_font_map_get_resolution(object);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_font_map_create_context(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoCairoFontMap* object = PANGO_CAIRO_FONT_MAP(getPtrValue(s_object));

  PangoContext* ans;

  ans = pango_cairo_font_map_create_context(object);

  _result = toRPointerWithRef(ans, "PangoContext");

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_update_context(USER_OBJECT_ s_cr, USER_OBJECT_ s_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));


  pango_cairo_update_context(cr, context);


  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_context_set_font_options(USER_OBJECT_ s_context, USER_OBJECT_ s_options)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));


  pango_cairo_context_set_font_options(context, options);


  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_context_get_font_options(USER_OBJECT_ s_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));

  const cairo_font_options_t* ans;

  ans = pango_cairo_context_get_font_options(context);

  _result = toRPointer(ans, "CairoFontOptions");

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_context_set_resolution(USER_OBJECT_ s_context, USER_OBJECT_ s_dpi)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));
  double dpi = ((double)asCNumeric(s_dpi));


  pango_cairo_context_set_resolution(context, dpi);


  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_context_get_resolution(USER_OBJECT_ s_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));

  double ans;

  ans = pango_cairo_context_get_resolution(context);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_create_layout(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  PangoLayout* ans;

  ans = pango_cairo_create_layout(cr);

  _result = toRPointerWithRef(ans, "PangoLayout");

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_update_layout(USER_OBJECT_ s_cr, USER_OBJECT_ s_layout)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  PangoLayout* layout = PANGO_LAYOUT(getPtrValue(s_layout));


  pango_cairo_update_layout(cr, layout);


  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_show_glyph_string(USER_OBJECT_ s_cr, USER_OBJECT_ s_font, USER_OBJECT_ s_glyphs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  PangoFont* font = PANGO_FONT(getPtrValue(s_font));
  PangoGlyphString* glyphs = ((PangoGlyphString*)getPtrValue(s_glyphs));


  pango_cairo_show_glyph_string(cr, font, glyphs);


  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_show_layout_line(USER_OBJECT_ s_cr, USER_OBJECT_ s_line)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  PangoLayoutLine* line = ((PangoLayoutLine*)getPtrValue(s_line));


  pango_cairo_show_layout_line(cr, line);


  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_show_layout(USER_OBJECT_ s_cr, USER_OBJECT_ s_layout)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  PangoLayout* layout = PANGO_LAYOUT(getPtrValue(s_layout));


  pango_cairo_show_layout(cr, layout);


  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_glyph_string_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_font, USER_OBJECT_ s_glyphs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  PangoFont* font = PANGO_FONT(getPtrValue(s_font));
  PangoGlyphString* glyphs = ((PangoGlyphString*)getPtrValue(s_glyphs));


  pango_cairo_glyph_string_path(cr, font, glyphs);


  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_layout_line_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_line)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  PangoLayoutLine* line = ((PangoLayoutLine*)getPtrValue(s_line));


  pango_cairo_layout_line_path(cr, line);


  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_layout_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_layout)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  PangoLayout* layout = PANGO_LAYOUT(getPtrValue(s_layout));


  pango_cairo_layout_path(cr, layout);


  return(_result);
}
 

USER_OBJECT_
S_pango_context_set_font_map(USER_OBJECT_ s_object, USER_OBJECT_ s_font_map)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  PangoFontMap* font_map = PANGO_FONT_MAP(getPtrValue(s_font_map));


  pango_context_set_font_map(object, font_map);


  return(_result);
}
 

USER_OBJECT_
S_pango_context_get_font_map(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));

  PangoFontMap* ans;

  ans = pango_context_get_font_map(object);

  _result = toRPointerWithRef(ans, "PangoFontMap");

  return(_result);
}
 

USER_OBJECT_
S_pango_context_list_families(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));

  PangoFontFamily** families = NULL;
  int n_families;

  pango_context_list_families(object, &families, &n_families);


  _result = retByVal(PROTECT(_result), "families", PROTECT(toRPointerWithRefArrayWithSize(families, "PangoFontFamily", n_families)), "n.families", PROTECT(asRInteger(n_families)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, families);;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_get_mirror_char(USER_OBJECT_ s_ch)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gunichar ch = ((gunichar)asCNumeric(s_ch));

  gboolean ans;
  gunichar mirrored_ch;

  ans = pango_get_mirror_char(ch, &mirrored_ch);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "mirrored.ch", PROTECT(asRNumeric(mirrored_ch)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_unichar_direction(USER_OBJECT_ s_ch)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gunichar ch = ((gunichar)asCNumeric(s_ch));

  PangoDirection ans;

  ans = pango_unichar_direction(ch);

  _result = asREnum(ans, PANGO_TYPE_DIRECTION);

  return(_result);
}
 

USER_OBJECT_
S_pango_find_base_dir(USER_OBJECT_ s_text, USER_OBJECT_ s_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* text = ((const gchar*)asCString(s_text));
  gint length = ((gint)asCInteger(s_length));

  PangoDirection ans;

  ans = pango_find_base_dir(text, length);

  _result = asREnum(ans, PANGO_TYPE_DIRECTION);

  return(_result);
}
 

USER_OBJECT_
S_pango_context_load_font(USER_OBJECT_ s_object, USER_OBJECT_ s_desc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  const PangoFontDescription* desc = ((const PangoFontDescription*)getPtrValue(s_desc));

  PangoFont* ans;

  ans = pango_context_load_font(object, desc);

  _result = toRPointerWithRef(ans, "PangoFont");

  return(_result);
}
 

USER_OBJECT_
S_pango_context_load_fontset(USER_OBJECT_ s_object, USER_OBJECT_ s_desc, USER_OBJECT_ s_language)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  const PangoFontDescription* desc = ((const PangoFontDescription*)getPtrValue(s_desc));
  PangoLanguage* language = ((PangoLanguage*)getPtrValue(s_language));

  PangoFontset* ans;

  ans = pango_context_load_fontset(object, desc, language);

  _result = toRPointerWithRef(ans, "PangoFontset");

  return(_result);
}
 

USER_OBJECT_
S_pango_context_set_matrix(USER_OBJECT_ s_object, USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  const PangoMatrix* matrix = ((const PangoMatrix*)getPtrValue(s_matrix));


  pango_context_set_matrix(object, matrix);


  return(_result);
}
 

USER_OBJECT_
S_pango_context_get_matrix(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));

  const PangoMatrix* ans;

  ans = pango_context_get_matrix(object);

  _result = toRPointerWithFinalizer(ans ? pango_matrix_copy(ans) : NULL, "PangoMatrix", (RPointerFinalizer) pango_matrix_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_context_get_metrics(USER_OBJECT_ s_object, USER_OBJECT_ s_desc, USER_OBJECT_ s_language)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  const PangoFontDescription* desc = ((const PangoFontDescription*)getPtrValue(s_desc));
  PangoLanguage* language = GET_LENGTH(s_language) == 0 ? NULL : ((PangoLanguage*)getPtrValue(s_language));

  PangoFontMetrics* ans;

  ans = pango_context_get_metrics(object, desc, language);

  _result = toRPointerWithFinalizer(ans, "PangoFontMetrics", (RPointerFinalizer) pango_font_metrics_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_context_set_font_description(USER_OBJECT_ s_object, USER_OBJECT_ s_desc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  const PangoFontDescription* desc = ((const PangoFontDescription*)getPtrValue(s_desc));


  pango_context_set_font_description(object, desc);


  return(_result);
}
 

USER_OBJECT_
S_pango_context_get_font_description(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));

  PangoFontDescription* ans;

  ans = pango_context_get_font_description(object);

  _result = toRPointerWithFinalizer(ans ? pango_font_description_copy(ans) : NULL, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_context_get_language(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));

  PangoLanguage* ans;

  ans = pango_context_get_language(object);

  _result = toRPointer(ans ? (ans) : NULL, "PangoLanguage");

  return(_result);
}
 

USER_OBJECT_
S_pango_context_set_language(USER_OBJECT_ s_object, USER_OBJECT_ s_language)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  PangoLanguage* language = ((PangoLanguage*)getPtrValue(s_language));


  pango_context_set_language(object, language);


  return(_result);
}
 

USER_OBJECT_
S_pango_context_set_base_dir(USER_OBJECT_ s_object, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  PangoDirection direction = ((PangoDirection)asCEnum(s_direction, PANGO_TYPE_DIRECTION));


  pango_context_set_base_dir(object, direction);


  return(_result);
}
 

USER_OBJECT_
S_pango_context_get_base_dir(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));

  PangoDirection ans;

  ans = pango_context_get_base_dir(object);

  _result = asREnum(ans, PANGO_TYPE_DIRECTION);

  return(_result);
}
 

USER_OBJECT_
S_pango_itemize(USER_OBJECT_ s_context, USER_OBJECT_ s_text, USER_OBJECT_ s_start_index, USER_OBJECT_ s_length, USER_OBJECT_ s_attrs, USER_OBJECT_ s_cached_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));
  const char* text = ((const char*)asCString(s_text));
  int start_index = ((int)asCInteger(s_start_index));
  int length = ((int)asCInteger(s_length));
  PangoAttrList* attrs = ((PangoAttrList*)getPtrValue(s_attrs));
  PangoAttrIterator* cached_iter = GET_LENGTH(s_cached_iter) == 0 ? NULL : ((PangoAttrIterator*)getPtrValue(s_cached_iter));

  GList* ans;

  ans = pango_itemize(context, text, start_index, length, attrs, cached_iter);

  _result = asRGListWithFinalizer(ans, "PangoItem", (RPointerFinalizer) pango_item_free);
    CLEANUP(g_list_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_pango_itemize_with_base_dir(USER_OBJECT_ s_context, USER_OBJECT_ s_base_dir, USER_OBJECT_ s_text, USER_OBJECT_ s_start_index, USER_OBJECT_ s_length, USER_OBJECT_ s_attrs, USER_OBJECT_ s_cached_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));
  PangoDirection base_dir = ((PangoDirection)asCEnum(s_base_dir, PANGO_TYPE_DIRECTION));
  const char* text = ((const char*)asCString(s_text));
  int start_index = ((int)asCInteger(s_start_index));
  int length = ((int)asCInteger(s_length));
  PangoAttrList* attrs = ((PangoAttrList*)getPtrValue(s_attrs));
  PangoAttrIterator* cached_iter = GET_LENGTH(s_cached_iter) == 0 ? NULL : ((PangoAttrIterator*)getPtrValue(s_cached_iter));

  GList* ans;

  ans = pango_itemize_with_base_dir(context, base_dir, text, start_index, length, attrs, cached_iter);

  _result = asRGListWithFinalizer(ans, "PangoItem", (RPointerFinalizer) pango_item_free);
    CLEANUP(g_list_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_pango_coverage_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  PangoCoverage* ans;

  ans = pango_coverage_new();

  _result = toRPointerWithFinalizer(ans, "PangoCoverage", (RPointerFinalizer) pango_coverage_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_coverage_ref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoCoverage* object = ((PangoCoverage*)getPtrValue(s_object));

  PangoCoverage* ans;

  ans = pango_coverage_ref(object);

  _result = toRPointerWithFinalizer(ans, "PangoCoverage", (RPointerFinalizer) pango_coverage_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_coverage_unref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoCoverage* object = ((PangoCoverage*)getPtrValue(s_object));


  pango_coverage_unref(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_coverage_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoCoverage* object = ((PangoCoverage*)getPtrValue(s_object));

  PangoCoverage* ans;

  ans = pango_coverage_copy(object);

  _result = toRPointerWithFinalizer(ans, "PangoCoverage", (RPointerFinalizer) pango_coverage_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_coverage_get(USER_OBJECT_ s_object, USER_OBJECT_ s_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoCoverage* object = ((PangoCoverage*)getPtrValue(s_object));
  int index = ((int)asCInteger(s_index));

  PangoCoverageLevel ans;

  ans = pango_coverage_get(object, index);

  _result = asREnum(ans, PANGO_TYPE_COVERAGE_LEVEL);

  return(_result);
}
 

USER_OBJECT_
S_pango_coverage_set(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_level)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoCoverage* object = ((PangoCoverage*)getPtrValue(s_object));
  int index = ((int)asCInteger(s_index));
  PangoCoverageLevel level = ((PangoCoverageLevel)asCEnum(s_level, PANGO_TYPE_COVERAGE_LEVEL));


  pango_coverage_set(object, index, level);


  return(_result);
}
 

USER_OBJECT_
S_pango_coverage_max(USER_OBJECT_ s_object, USER_OBJECT_ s_other)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoCoverage* object = ((PangoCoverage*)getPtrValue(s_object));
  PangoCoverage* other = ((PangoCoverage*)getPtrValue(s_other));


  pango_coverage_max(object, other);


  return(_result);
}
 

USER_OBJECT_
S_pango_coverage_to_bytes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoCoverage* object = ((PangoCoverage*)getPtrValue(s_object));

  guchar* bytes = NULL;
  int n_bytes;

  pango_coverage_to_bytes(object, &bytes, &n_bytes);


  _result = retByVal(PROTECT(_result), "bytes", PROTECT(asRRawArrayWithSize(bytes, n_bytes)), "n.bytes", PROTECT(asRInteger(n_bytes)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, bytes);;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_coverage_from_bytes(USER_OBJECT_ s_bytes)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guchar* bytes = ((guchar*)asCArray(s_bytes, guchar, asCRaw));
  int n_bytes = ((int)GET_LENGTH(s_bytes));

  PangoCoverage* ans;

  ans = pango_coverage_from_bytes(bytes, n_bytes);

  _result = toRPointerWithFinalizer(ans, "PangoCoverage", (RPointerFinalizer) pango_coverage_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  PangoFontDescription* ans;

  ans = pango_font_description_new();

  _result = toRPointerWithFinalizer(ans, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  PangoFontDescription* ans;

  ans = pango_font_description_copy(object);

  _result = toRPointerWithFinalizer(ans, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_copy_static(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  PangoFontDescription* ans;

  ans = pango_font_description_copy_static(object);

  _result = toRPointerWithFinalizer(ans, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_hash(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  guint ans;

  ans = pango_font_description_hash(object);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_desc2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  const PangoFontDescription* desc2 = ((const PangoFontDescription*)getPtrValue(s_desc2));

  gboolean ans;

  ans = pango_font_description_equal(object, desc2);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_free(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));


  pango_font_description_free(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_set_family(USER_OBJECT_ s_object, USER_OBJECT_ s_family)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  const char* family = ((const char*)asCString(s_family));


  pango_font_description_set_family(object, family);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_set_family_static(USER_OBJECT_ s_object, USER_OBJECT_ s_family)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  const char* family = ((const char*)asCString(s_family));


  pango_font_description_set_family_static(object, family);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_get_family(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  const char* ans;

  ans = pango_font_description_get_family(object);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_set_style(USER_OBJECT_ s_object, USER_OBJECT_ s_style)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  PangoStyle style = ((PangoStyle)asCEnum(s_style, PANGO_TYPE_STYLE));


  pango_font_description_set_style(object, style);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_get_style(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  PangoStyle ans;

  ans = pango_font_description_get_style(object);

  _result = asREnum(ans, PANGO_TYPE_STYLE);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_set_variant(USER_OBJECT_ s_object, USER_OBJECT_ s_variant)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  PangoVariant variant = ((PangoVariant)asCEnum(s_variant, PANGO_TYPE_VARIANT));


  pango_font_description_set_variant(object, variant);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_get_variant(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  PangoVariant ans;

  ans = pango_font_description_get_variant(object);

  _result = asREnum(ans, PANGO_TYPE_VARIANT);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_set_weight(USER_OBJECT_ s_object, USER_OBJECT_ s_weight)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  PangoWeight weight = ((PangoWeight)asCEnum(s_weight, PANGO_TYPE_WEIGHT));


  pango_font_description_set_weight(object, weight);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_get_weight(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  PangoWeight ans;

  ans = pango_font_description_get_weight(object);

  _result = asREnum(ans, PANGO_TYPE_WEIGHT);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_set_stretch(USER_OBJECT_ s_object, USER_OBJECT_ s_stretch)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  PangoStretch stretch = ((PangoStretch)asCEnum(s_stretch, PANGO_TYPE_STRETCH));


  pango_font_description_set_stretch(object, stretch);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_get_stretch(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  PangoStretch ans;

  ans = pango_font_description_get_stretch(object);

  _result = asREnum(ans, PANGO_TYPE_STRETCH);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_set_absolute_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  double size = ((double)asCNumeric(s_size));


  pango_font_description_set_absolute_size(object, size);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_get_size_is_absolute(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_font_description_get_size_is_absolute(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  gint size = ((gint)asCInteger(s_size));


  pango_font_description_set_size(object, size);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_get_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  gint ans;

  ans = pango_font_description_get_size(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_get_set_fields(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  PangoFontMask ans;

  ans = pango_font_description_get_set_fields(object);

  _result = asRFlag(ans, PANGO_TYPE_FONT_MASK);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_unset_fields(USER_OBJECT_ s_object, USER_OBJECT_ s_to_unset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  PangoFontMask to_unset = ((PangoFontMask)asCFlag(s_to_unset, PANGO_TYPE_FONT_MASK));


  pango_font_description_unset_fields(object, to_unset);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_merge(USER_OBJECT_ s_object, USER_OBJECT_ s_desc_to_merge, USER_OBJECT_ s_replace_existing)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  const PangoFontDescription* desc_to_merge = ((const PangoFontDescription*)getPtrValue(s_desc_to_merge));
  gboolean replace_existing = ((gboolean)asCLogical(s_replace_existing));


  pango_font_description_merge(object, desc_to_merge, replace_existing);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_merge_static(USER_OBJECT_ s_object, USER_OBJECT_ s_desc_to_merge, USER_OBJECT_ s_replace_existing)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  const PangoFontDescription* desc_to_merge = ((const PangoFontDescription*)getPtrValue(s_desc_to_merge));
  gboolean replace_existing = ((gboolean)asCLogical(s_replace_existing));


  pango_font_description_merge_static(object, desc_to_merge, replace_existing);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_better_match(USER_OBJECT_ s_object, USER_OBJECT_ s_old_match, USER_OBJECT_ s_new_match)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  const PangoFontDescription* old_match = GET_LENGTH(s_old_match) == 0 ? NULL : ((const PangoFontDescription*)getPtrValue(s_old_match));
  const PangoFontDescription* new_match = ((const PangoFontDescription*)getPtrValue(s_new_match));

  gboolean ans;

  ans = pango_font_description_better_match(object, old_match, new_match);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_from_string(USER_OBJECT_ s_str)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* str = ((const char*)asCString(s_str));

  PangoFontDescription* ans;

  ans = pango_font_description_from_string(str);

  _result = toRPointerWithFinalizer(ans, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_to_string(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  char* ans;

  ans = pango_font_description_to_string(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_to_filename(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  char* ans;

  ans = pango_font_description_to_filename(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_font_metrics_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_ref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMetrics* object = ((PangoFontMetrics*)getPtrValue(s_object));

  PangoFontMetrics* ans;

  ans = pango_font_metrics_ref(object);

  _result = toRPointerWithFinalizer(ans ? pango_font_metrics_ref(ans) : NULL, "PangoFontMetrics", (RPointerFinalizer) pango_font_metrics_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_unref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMetrics* object = ((PangoFontMetrics*)getPtrValue(s_object));


  pango_font_metrics_unref(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_get_ascent(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMetrics* object = ((PangoFontMetrics*)getPtrValue(s_object));

  int ans;

  ans = pango_font_metrics_get_ascent(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_get_descent(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMetrics* object = ((PangoFontMetrics*)getPtrValue(s_object));

  int ans;

  ans = pango_font_metrics_get_descent(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_get_approximate_char_width(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMetrics* object = ((PangoFontMetrics*)getPtrValue(s_object));

  int ans;

  ans = pango_font_metrics_get_approximate_char_width(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_get_approximate_digit_width(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMetrics* object = ((PangoFontMetrics*)getPtrValue(s_object));

  int ans;

  ans = pango_font_metrics_get_approximate_digit_width(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_get_strikethrough_position(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMetrics* object = ((PangoFontMetrics*)getPtrValue(s_object));

  int ans;

  ans = pango_font_metrics_get_strikethrough_position(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_get_strikethrough_thickness(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMetrics* object = ((PangoFontMetrics*)getPtrValue(s_object));

  int ans;

  ans = pango_font_metrics_get_strikethrough_thickness(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_get_underline_position(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMetrics* object = ((PangoFontMetrics*)getPtrValue(s_object));

  int ans;

  ans = pango_font_metrics_get_underline_position(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_metrics_get_underline_thickness(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMetrics* object = ((PangoFontMetrics*)getPtrValue(s_object));

  int ans;

  ans = pango_font_metrics_get_underline_thickness(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_family_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_font_family_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_family_list_faces(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontFamily* object = PANGO_FONT_FAMILY(getPtrValue(s_object));

  PangoFontFace** faces = NULL;
  int n_faces;

  pango_font_family_list_faces(object, &faces, &n_faces);


  _result = retByVal(PROTECT(_result), "faces", PROTECT(toRPointerWithRefArrayWithSize(faces, "PangoFontFace", n_faces)), "n.faces", PROTECT(asRInteger(n_faces)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, faces);;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_font_family_get_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontFamily* object = PANGO_FONT_FAMILY(getPtrValue(s_object));

  const char* ans;

  ans = pango_font_family_get_name(object);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_family_is_monospace(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontFamily* object = PANGO_FONT_FAMILY(getPtrValue(s_object));

  gboolean ans;

  ans = pango_font_family_is_monospace(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_face_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_font_face_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_face_describe(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontFace* object = PANGO_FONT_FACE(getPtrValue(s_object));

  PangoFontDescription* ans;

  ans = pango_font_face_describe(object);

  _result = toRPointerWithFinalizer(ans, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_face_get_face_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontFace* object = PANGO_FONT_FACE(getPtrValue(s_object));

  const char* ans;

  ans = pango_font_face_get_face_name(object);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_face_list_sizes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontFace* object = PANGO_FONT_FACE(getPtrValue(s_object));

  int* sizes = NULL;
  int n_sizes;

  pango_font_face_list_sizes(object, &sizes, &n_sizes);


  _result = retByVal(PROTECT(_result), "sizes", PROTECT(asRIntegerArrayWithSize(sizes, n_sizes)), "n.sizes", PROTECT(asRInteger(n_sizes)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, sizes);;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_font_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_font_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_describe(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFont* object = PANGO_FONT(getPtrValue(s_object));

  PangoFontDescription* ans;

  ans = pango_font_describe(object);

  _result = toRPointerWithFinalizer(ans, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_get_coverage(USER_OBJECT_ s_object, USER_OBJECT_ s_language)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFont* object = PANGO_FONT(getPtrValue(s_object));
  PangoLanguage* language = ((PangoLanguage*)getPtrValue(s_language));

  PangoCoverage* ans;

  ans = pango_font_get_coverage(object, language);

  _result = toRPointerWithFinalizer(ans, "PangoCoverage", (RPointerFinalizer) pango_coverage_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_get_metrics(USER_OBJECT_ s_object, USER_OBJECT_ s_language)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFont* object = PANGO_FONT(getPtrValue(s_object));
  PangoLanguage* language = GET_LENGTH(s_language) == 0 ? NULL : ((PangoLanguage*)getPtrValue(s_language));

  PangoFontMetrics* ans;

  ans = pango_font_get_metrics(object, language);

  _result = toRPointerWithFinalizer(ans, "PangoFontMetrics", (RPointerFinalizer) pango_font_metrics_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_font_get_glyph_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_glyph)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFont* object = PANGO_FONT(getPtrValue(s_object));
  PangoGlyph glyph = ((PangoGlyph)asCNumeric(s_glyph));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_font_get_glyph_extents(object, glyph, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_font_get_font_map(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFont* object = PANGO_FONT(getPtrValue(s_object));

  PangoFontMap* ans;

  ans = pango_font_get_font_map(object);

  _result = toRPointerWithRef(ans, "PangoFontMap");

  return(_result);
}
 

USER_OBJECT_
S_pango_font_map_load_font(USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_desc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMap* object = PANGO_FONT_MAP(getPtrValue(s_object));
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));
  const PangoFontDescription* desc = ((const PangoFontDescription*)getPtrValue(s_desc));

  PangoFont* ans;

  ans = pango_font_map_load_font(object, context, desc);

  _result = toRPointerWithRef(ans, "PangoFont");

  return(_result);
}
 

USER_OBJECT_
S_pango_font_map_load_fontset(USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_desc, USER_OBJECT_ s_language)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMap* object = PANGO_FONT_MAP(getPtrValue(s_object));
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));
  const PangoFontDescription* desc = ((const PangoFontDescription*)getPtrValue(s_desc));
  PangoLanguage* language = ((PangoLanguage*)getPtrValue(s_language));

  PangoFontset* ans;

  ans = pango_font_map_load_fontset(object, context, desc, language);

  _result = toRPointerWithRef(ans, "PangoFontset");

  return(_result);
}
 

USER_OBJECT_
S_pango_font_map_list_families(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontMap* object = PANGO_FONT_MAP(getPtrValue(s_object));

  PangoFontFamily** families = NULL;
  int n_families;

  pango_font_map_list_families(object, &families, &n_families);


  _result = retByVal(PROTECT(_result), "families", PROTECT(toRPointerWithRefArrayWithSize(families, "PangoFontFamily", n_families)), "n.families", PROTECT(asRInteger(n_families)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, families);;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_fontset_get_font(USER_OBJECT_ s_object, USER_OBJECT_ s_wc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontset* object = PANGO_FONTSET(getPtrValue(s_object));
  guint wc = ((guint)asCNumeric(s_wc));

  PangoFont* ans;

  ans = pango_fontset_get_font(object, wc);

  _result = toRPointerWithFinalizer(ans, "PangoFont", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_fontset_get_metrics(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontset* object = PANGO_FONTSET(getPtrValue(s_object));

  PangoFontMetrics* ans;

  ans = pango_fontset_get_metrics(object);

  _result = toRPointerWithFinalizer(ans, "PangoFontMetrics", (RPointerFinalizer) pango_font_metrics_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_fontset_foreach(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontsetForeachFunc func = ((PangoFontsetForeachFunc)S_PangoFontsetForeachFunc);
  R_CallbackData* data = R_createCBData(s_func, s_data);
  PangoFontset* object = PANGO_FONTSET(getPtrValue(s_object));


  pango_fontset_foreach(object, func, data);

  R_freeCBData(data);

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_string_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  PangoGlyphString* ans;

  ans = pango_glyph_string_new();

  _result = toRPointerWithFinalizer(ans, "PangoGlyphString", (RPointerFinalizer) pango_glyph_string_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_string_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_new_len)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoGlyphString* object = ((PangoGlyphString*)getPtrValue(s_object));
  gint new_len = ((gint)asCInteger(s_new_len));


  pango_glyph_string_set_size(object, new_len);


  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_string_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_glyph_string_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_string_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoGlyphString* object = ((PangoGlyphString*)getPtrValue(s_object));

  PangoGlyphString* ans;

  ans = pango_glyph_string_copy(object);

  _result = toRPointerWithFinalizer(ans, "PangoGlyphString", (RPointerFinalizer) pango_glyph_string_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_string_free(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoGlyphString* object = ((PangoGlyphString*)getPtrValue(s_object));


  pango_glyph_string_free(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_string_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoGlyphString* object = ((PangoGlyphString*)getPtrValue(s_object));
  PangoFont* font = PANGO_FONT(getPtrValue(s_font));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_glyph_string_extents(object, font, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_string_extents_range(USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end, USER_OBJECT_ s_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoGlyphString* object = ((PangoGlyphString*)getPtrValue(s_object));
  int start = ((int)asCInteger(s_start));
  int end = ((int)asCInteger(s_end));
  PangoFont* font = PANGO_FONT(getPtrValue(s_font));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_glyph_string_extents_range(object, start, end, font, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_string_index_to_x(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_length, USER_OBJECT_ s_analysis, USER_OBJECT_ s_index, USER_OBJECT_ s_trailing)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoGlyphString* object = ((PangoGlyphString*)getPtrValue(s_object));
  char* text = ((char*)asCString(s_text));
  int length = ((int)asCInteger(s_length));
  PangoAnalysis* analysis = ((PangoAnalysis*)getPtrValue(s_analysis));
  int index = ((int)asCInteger(s_index));
  gboolean trailing = ((gboolean)asCLogical(s_trailing));

  int x_pos;

  pango_glyph_string_index_to_x(object, text, length, analysis, index, trailing, &x_pos);


  _result = retByVal(PROTECT(_result), "x.pos", PROTECT(asRInteger(x_pos)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_string_x_to_index(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_length, USER_OBJECT_ s_analysis, USER_OBJECT_ s_x_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoGlyphString* object = ((PangoGlyphString*)getPtrValue(s_object));
  char* text = ((char*)asCString(s_text));
  int length = ((int)asCInteger(s_length));
  PangoAnalysis* analysis = ((PangoAnalysis*)getPtrValue(s_analysis));
  int x_pos = ((int)asCInteger(s_x_pos));

  int index;
  int trailing;

  pango_glyph_string_x_to_index(object, text, length, analysis, x_pos, &index, &trailing);


  _result = retByVal(PROTECT(_result), "index", PROTECT(asRInteger(index)), "trailing", PROTECT(asRInteger(trailing)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_item_split(USER_OBJECT_ s_orig, USER_OBJECT_ s_text, USER_OBJECT_ s_split_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoGlyphItem* orig = ((PangoGlyphItem*)getPtrValue(s_orig));
  const char* text = ((const char*)asCString(s_text));
  int split_index = ((int)asCInteger(s_split_index));

  PangoGlyphItem* ans;

  ans = pango_glyph_item_split(orig, text, split_index);

  _result = toRPointerWithFinalizer(ans, "PangoGlyphItem", (RPointerFinalizer) pango_glyph_item_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_item_apply_attrs(USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_text, USER_OBJECT_ s_list)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoGlyphItem* glyph_item = ((PangoGlyphItem*)getPtrValue(s_glyph_item));
  const char* text = ((const char*)asCString(s_text));
  PangoAttrList* list = ((PangoAttrList*)getPtrValue(s_list));

  GSList* ans;

  ans = pango_glyph_item_apply_attrs(glyph_item, text, list);

  _result = asRGSListWithFinalizer(ans, "PangoGlyphItem", (RPointerFinalizer) pango_glyph_item_free);
    CLEANUP(g_slist_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_item_letter_space(USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_text, USER_OBJECT_ s_log_attrs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoGlyphItem* glyph_item = ((PangoGlyphItem*)getPtrValue(s_glyph_item));
  const char* text = ((const char*)asCString(s_text));
  PangoLogAttr* log_attrs = ((PangoLogAttr*)asCArrayRef(s_log_attrs, PangoLogAttr, getPtrValue));
  int letter_spacing = ((int)GET_LENGTH(s_log_attrs));


  pango_glyph_item_letter_space(glyph_item, text, log_attrs, letter_spacing);


  return(_result);
}
 

USER_OBJECT_
S_pango_matrix_translate(USER_OBJECT_ s_object, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoMatrix* object = ((PangoMatrix*)getPtrValue(s_object));
  double tx = ((double)asCNumeric(s_tx));
  double ty = ((double)asCNumeric(s_ty));


  pango_matrix_translate(object, tx, ty);


  return(_result);
}
 

USER_OBJECT_
S_pango_matrix_scale(USER_OBJECT_ s_object, USER_OBJECT_ s_scale_x, USER_OBJECT_ s_scale_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoMatrix* object = ((PangoMatrix*)getPtrValue(s_object));
  double scale_x = ((double)asCNumeric(s_scale_x));
  double scale_y = ((double)asCNumeric(s_scale_y));


  pango_matrix_scale(object, scale_x, scale_y);


  return(_result);
}
 

USER_OBJECT_
S_pango_matrix_rotate(USER_OBJECT_ s_object, USER_OBJECT_ s_degrees)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoMatrix* object = ((PangoMatrix*)getPtrValue(s_object));
  double degrees = ((double)asCNumeric(s_degrees));


  pango_matrix_rotate(object, degrees);


  return(_result);
}
 

USER_OBJECT_
S_pango_matrix_concat(USER_OBJECT_ s_object, USER_OBJECT_ s_new_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoMatrix* object = ((PangoMatrix*)getPtrValue(s_object));
  const PangoMatrix* new_matrix = ((const PangoMatrix*)getPtrValue(s_new_matrix));


  pango_matrix_concat(object, new_matrix);


  return(_result);
}
 

USER_OBJECT_
S_pango_matrix_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoMatrix* object = ((PangoMatrix*)getPtrValue(s_object));

  PangoMatrix* ans;

  ans = pango_matrix_copy(object);

  _result = toRPointerWithFinalizer(ans, "PangoMatrix", (RPointerFinalizer) pango_matrix_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_shape(USER_OBJECT_ s_text, USER_OBJECT_ s_length, USER_OBJECT_ s_analysis, USER_OBJECT_ s_glyphs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* text = ((const gchar*)asCString(s_text));
  gint length = ((gint)asCInteger(s_length));
  PangoAnalysis* analysis = ((PangoAnalysis*)getPtrValue(s_analysis));
  PangoGlyphString* glyphs = ((PangoGlyphString*)getPtrValue(s_glyphs));


  pango_shape(text, length, analysis, glyphs);


  return(_result);
}
 

USER_OBJECT_
S_pango_item_copy(USER_OBJECT_ s_item)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoItem* item = ((PangoItem*)getPtrValue(s_item));

  PangoItem* ans;

  ans = pango_item_copy(item);

  _result = toRPointerWithFinalizer(ans, "PangoItem", (RPointerFinalizer) pango_item_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_item_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  PangoItem* ans;

  ans = pango_item_new();

  _result = toRPointerWithFinalizer(ans, "PangoItem", (RPointerFinalizer) pango_item_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_item_split(USER_OBJECT_ s_orig, USER_OBJECT_ s_split_index, USER_OBJECT_ s_split_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoItem* orig = ((PangoItem*)getPtrValue(s_orig));
  int split_index = ((int)asCInteger(s_split_index));
  int split_offset = ((int)asCInteger(s_split_offset));

  PangoItem* ans;

  ans = pango_item_split(orig, split_index, split_offset);

  _result = toRPointerWithFinalizer(ans, "PangoItem", (RPointerFinalizer) pango_item_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_reorder_items(USER_OBJECT_ s_logical_items)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GList* logical_items = asCGList(s_logical_items);

  GList* ans;

  ans = pango_reorder_items(logical_items);

  _result = asRGListWithFinalizer(ans, "PangoItem", (RPointerFinalizer) pango_item_free);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_list_free, ((GList*)logical_items));;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_layout_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_new(USER_OBJECT_ s_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));

  PangoLayout* ans;

  ans = pango_layout_new(context);

  _result = toRPointerWithFinalizer(ans, "PangoLayout", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoLayout* ans;

  ans = pango_layout_copy(object);

  _result = toRPointerWithFinalizer(ans, "PangoLayout", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_context(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoContext* ans;

  ans = pango_layout_get_context(object);

  _result = toRPointerWithRef(ans, "PangoContext");

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_attrs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  PangoAttrList* attrs = ((PangoAttrList*)getPtrValue(s_attrs));


  pango_layout_set_attributes(object, attrs);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_attributes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoAttrList* ans;

  ans = pango_layout_get_attributes(object);

  _result = toRPointerWithFinalizer(ans, "PangoAttrList", (RPointerFinalizer) pango_attr_list_unref);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  const char* text = ((const char*)asCString(s_text));
  int length = ((int)asCInteger(s_length));


  pango_layout_set_text(object, text, length);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_text(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  const char* ans;

  ans = pango_layout_get_text(object);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_markup, USER_OBJECT_ s_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  const char* markup = ((const char*)asCString(s_markup));
  int length = ((int)asCInteger(s_length));


  pango_layout_set_markup(object, markup, length);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_markup_with_accel(USER_OBJECT_ s_object, USER_OBJECT_ s_markup, USER_OBJECT_ s_length, USER_OBJECT_ s_accel_marker)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  const char* markup = ((const char*)asCString(s_markup));
  int length = ((int)asCInteger(s_length));
  gunichar accel_marker = ((gunichar)asCNumeric(s_accel_marker));

  gunichar accel_char;

  pango_layout_set_markup_with_accel(object, markup, length, accel_marker, &accel_char);


  _result = retByVal(PROTECT(_result), "accel.char", PROTECT(asRNumeric(accel_char)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_font_description(USER_OBJECT_ s_object, USER_OBJECT_ s_desc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  const PangoFontDescription* desc = GET_LENGTH(s_desc) == 0 ? NULL : ((const PangoFontDescription*)getPtrValue(s_desc));


  pango_layout_set_font_description(object, desc);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_font_description(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  const PangoFontDescription* ans;

  ans = pango_layout_get_font_description(object);

  _result = toRPointerWithFinalizer(ans ? pango_font_description_copy(ans) : NULL, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_width(USER_OBJECT_ s_object, USER_OBJECT_ s_width)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  int width = ((int)asCInteger(s_width));


  pango_layout_set_width(object, width);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_width(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  int ans;

  ans = pango_layout_get_width(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_wrap(USER_OBJECT_ s_object, USER_OBJECT_ s_wrap)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  PangoWrapMode wrap = ((PangoWrapMode)asCEnum(s_wrap, PANGO_TYPE_WRAP_MODE));


  pango_layout_set_wrap(object, wrap);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_wrap(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoWrapMode ans;

  ans = pango_layout_get_wrap(object);

  _result = asREnum(ans, PANGO_TYPE_WRAP_MODE);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_indent(USER_OBJECT_ s_object, USER_OBJECT_ s_indent)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  int indent = ((int)asCInteger(s_indent));


  pango_layout_set_indent(object, indent);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_indent(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  int ans;

  ans = pango_layout_get_indent(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_spacing)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  int spacing = ((int)asCInteger(s_spacing));


  pango_layout_set_spacing(object, spacing);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_spacing(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  int ans;

  ans = pango_layout_get_spacing(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_justify(USER_OBJECT_ s_object, USER_OBJECT_ s_justify)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  gboolean justify = ((gboolean)asCLogical(s_justify));


  pango_layout_set_justify(object, justify);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_justify(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  gboolean ans;

  ans = pango_layout_get_justify(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_auto_dir(USER_OBJECT_ s_object, USER_OBJECT_ s_auto_dir)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  gboolean auto_dir = ((gboolean)asCLogical(s_auto_dir));


  pango_layout_set_auto_dir(object, auto_dir);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_auto_dir(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  gboolean ans;

  ans = pango_layout_get_auto_dir(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_alignment(USER_OBJECT_ s_object, USER_OBJECT_ s_alignment)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  PangoAlignment alignment = ((PangoAlignment)asCEnum(s_alignment, PANGO_TYPE_ALIGNMENT));


  pango_layout_set_alignment(object, alignment);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_alignment(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoAlignment ans;

  ans = pango_layout_get_alignment(object);

  _result = asREnum(ans, PANGO_TYPE_ALIGNMENT);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_tabs(USER_OBJECT_ s_object, USER_OBJECT_ s_tabs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  PangoTabArray* tabs = GET_LENGTH(s_tabs) == 0 ? NULL : ((PangoTabArray*)getPtrValue(s_tabs));


  pango_layout_set_tabs(object, tabs);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_tabs(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoTabArray* ans;

  ans = pango_layout_get_tabs(object);

  _result = toRPointerWithFinalizer(ans, "PangoTabArray", (RPointerFinalizer) pango_tab_array_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_single_paragraph_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_setting)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  gboolean setting = ((gboolean)asCLogical(s_setting));


  pango_layout_set_single_paragraph_mode(object, setting);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_single_paragraph_mode(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  gboolean ans;

  ans = pango_layout_get_single_paragraph_mode(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_ellipsize(USER_OBJECT_ s_object, USER_OBJECT_ s_ellipsize)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  PangoEllipsizeMode ellipsize = ((PangoEllipsizeMode)asCEnum(s_ellipsize, PANGO_TYPE_ELLIPSIZE_MODE));


  pango_layout_set_ellipsize(object, ellipsize);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_ellipsize(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoEllipsizeMode ans;

  ans = pango_layout_get_ellipsize(object);

  _result = asREnum(ans, PANGO_TYPE_ELLIPSIZE_MODE);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_context_changed(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));


  pango_layout_context_changed(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_log_attrs(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoLogAttr* attrs = NULL;
  gint n_attrs;

  pango_layout_get_log_attrs(object, &attrs, &n_attrs);


  _result = retByVal(PROTECT(_result), "attrs", PROTECT(asRStructArrayWithSize(attrs, "PangoLogAttr", n_attrs)), "n.attrs", PROTECT(asRInteger(n_attrs)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, attrs);;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_index_to_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  int index = ((int)asCInteger(s_index));
  PangoRectangle* pos = asCPangoRectangle(s_pos);


  pango_layout_index_to_pos(object, index, pos);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_cursor_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  int index = ((int)asCInteger(s_index));

  PangoRectangle* strong_pos = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* weak_pos = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_layout_get_cursor_pos(object, index, strong_pos, weak_pos);


  _result = retByVal(PROTECT(_result), "strong.pos", PROTECT(asRPangoRectangle(strong_pos)), "weak.pos", PROTECT(asRPangoRectangle(weak_pos)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, strong_pos);;
    CLEANUP(g_free, weak_pos);;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_move_cursor_visually(USER_OBJECT_ s_object, USER_OBJECT_ s_strong, USER_OBJECT_ s_old_index, USER_OBJECT_ s_old_trailing, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  gboolean strong = ((gboolean)asCLogical(s_strong));
  int old_index = ((int)asCInteger(s_old_index));
  int old_trailing = ((int)asCInteger(s_old_trailing));
  int direction = ((int)asCInteger(s_direction));

  int new_index;
  int new_trailing;

  pango_layout_move_cursor_visually(object, strong, old_index, old_trailing, direction, &new_index, &new_trailing);


  _result = retByVal(PROTECT(_result), "new.index", PROTECT(asRInteger(new_index)), "new.trailing", PROTECT(asRInteger(new_trailing)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_xy_to_index(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));

  gboolean ans;
  int index;
  int trailing;

  ans = pango_layout_xy_to_index(object, x, y, &index, &trailing);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "index", PROTECT(asRInteger(index)), "trailing", PROTECT(asRInteger(trailing)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_extents(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_layout_get_extents(object, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_pixel_extents(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_layout_get_pixel_extents(object, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  int width;
  int height;

  pango_layout_get_size(object, &width, &height);


  _result = retByVal(PROTECT(_result), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_pixel_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  int width;
  int height;

  pango_layout_get_pixel_size(object, &width, &height);


  _result = retByVal(PROTECT(_result), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_line_count(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  int ans;

  ans = pango_layout_get_line_count(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_line(USER_OBJECT_ s_object, USER_OBJECT_ s_line)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  int line = ((int)asCInteger(s_line));

  PangoLayoutLine* ans;

  ans = pango_layout_get_line(object, line);

  _result = toRPointer(ans, "PangoLayoutLine");

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_line_x_to_index(USER_OBJECT_ s_object, USER_OBJECT_ s_x_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutLine* object = ((PangoLayoutLine*)getPtrValue(s_object));
  int x_pos = ((int)asCInteger(s_x_pos));

  gboolean ans;
  int index;
  int trailing;

  ans = pango_layout_line_x_to_index(object, x_pos, &index, &trailing);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "index", PROTECT(asRInteger(index)), "trailing", PROTECT(asRInteger(trailing)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_line_index_to_x(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_trailing)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutLine* object = ((PangoLayoutLine*)getPtrValue(s_object));
  int index = ((int)asCInteger(s_index));
  gboolean trailing = ((gboolean)asCLogical(s_trailing));

  int x_pos;

  pango_layout_line_index_to_x(object, index, trailing, &x_pos);


  _result = retByVal(PROTECT(_result), "x.pos", PROTECT(asRInteger(x_pos)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_line_get_x_ranges(USER_OBJECT_ s_object, USER_OBJECT_ s_start_index, USER_OBJECT_ s_end_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutLine* object = ((PangoLayoutLine*)getPtrValue(s_object));
  int start_index = ((int)asCInteger(s_start_index));
  int end_index = ((int)asCInteger(s_end_index));

  int* ranges = NULL;
  int n_ranges;

  pango_layout_line_get_x_ranges(object, start_index, end_index, &ranges, &n_ranges);


  _result = retByVal(PROTECT(_result), "ranges", PROTECT(asRIntegerArrayWithSize(ranges, n_ranges)), "n.ranges", PROTECT(asRInteger(n_ranges)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ranges);;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_line_get_extents(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutLine* object = ((PangoLayoutLine*)getPtrValue(s_object));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_layout_line_get_extents(object, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_line_get_pixel_extents(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutLine* object = ((PangoLayoutLine*)getPtrValue(s_object));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_layout_line_get_pixel_extents(object, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_layout_iter_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_iter(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  PangoLayoutIter* ans;

  ans = pango_layout_get_iter(object);

  _result = toRPointerWithFinalizer(ans, "PangoLayoutIter", (RPointerFinalizer) pango_layout_iter_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_free(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));


  pango_layout_iter_free(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_index(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  int ans;

  ans = pango_layout_iter_get_index(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_run(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  PangoGlyphItem* ans;

  ans = pango_layout_iter_get_run(object);

  _result = toRPointerWithFinalizer(ans, "PangoGlyphItem", (RPointerFinalizer) pango_glyph_item_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_line(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  PangoLayoutLine* ans;

  ans = pango_layout_iter_get_line(object);

  _result = toRPointer(ans, "PangoLayoutLine");

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_at_last_line(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_layout_iter_at_last_line(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_next_char(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_layout_iter_next_char(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_next_cluster(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_layout_iter_next_cluster(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_next_run(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_layout_iter_next_run(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_next_line(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_layout_iter_next_line(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_char_extents(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_layout_iter_get_char_extents(object, logical_rect);


  _result = retByVal(PROTECT(_result), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_cluster_extents(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_layout_iter_get_cluster_extents(object, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_run_extents(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_layout_iter_get_run_extents(object, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_line_extents(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_layout_iter_get_line_extents(object, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_line_yrange(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  int y0;
  int y1;

  pango_layout_iter_get_line_yrange(object, &y0, &y1);


  _result = retByVal(PROTECT(_result), "y0", PROTECT(asRInteger(y0)), "y1", PROTECT(asRInteger(y1)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_layout_extents(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  PangoRectangle* ink_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));
  PangoRectangle* logical_rect = ((PangoRectangle *)g_new0(PangoRectangle, 1));

  pango_layout_iter_get_layout_extents(object, ink_rect, logical_rect);


  _result = retByVal(PROTECT(_result), "ink.rect", PROTECT(asRPangoRectangle(ink_rect)), "logical.rect", PROTECT(asRPangoRectangle(logical_rect)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ink_rect);;
    CLEANUP(g_free, logical_rect);;

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_baseline(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  int ans;

  ans = pango_layout_iter_get_baseline(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_renderer_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_draw_layout(USER_OBJECT_ s_object, USER_OBJECT_ s_layout, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoLayout* layout = PANGO_LAYOUT(getPtrValue(s_layout));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));


  pango_renderer_draw_layout(object, layout, x, y);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_draw_layout_line(USER_OBJECT_ s_object, USER_OBJECT_ s_line, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoLayoutLine* line = ((PangoLayoutLine*)getPtrValue(s_line));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));


  pango_renderer_draw_layout_line(object, line, x, y);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_draw_glyphs(USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoFont* font = PANGO_FONT(getPtrValue(s_font));
  PangoGlyphString* glyphs = ((PangoGlyphString*)getPtrValue(s_glyphs));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));


  pango_renderer_draw_glyphs(object, font, glyphs, x, y);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_draw_rectangle(USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoRenderPart part = ((PangoRenderPart)asCEnum(s_part, PANGO_TYPE_RENDER_PART));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));


  pango_renderer_draw_rectangle(object, part, x, y, width, height);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_draw_error_underline(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));


  pango_renderer_draw_error_underline(object, x, y, width, height);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_draw_trapezoid(USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_y1_, USER_OBJECT_ s_x11, USER_OBJECT_ s_x21, USER_OBJECT_ s_y2, USER_OBJECT_ s_x12, USER_OBJECT_ s_x22)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoRenderPart part = ((PangoRenderPart)asCEnum(s_part, PANGO_TYPE_RENDER_PART));
  double y1_ = ((double)asCNumeric(s_y1_));
  double x11 = ((double)asCNumeric(s_x11));
  double x21 = ((double)asCNumeric(s_x21));
  double y2 = ((double)asCNumeric(s_y2));
  double x12 = ((double)asCNumeric(s_x12));
  double x22 = ((double)asCNumeric(s_x22));


  pango_renderer_draw_trapezoid(object, part, y1_, x11, x21, y2, x12, x22);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_draw_glyph(USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_glyph, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoFont* font = PANGO_FONT(getPtrValue(s_font));
  PangoGlyph glyph = ((PangoGlyph)asCNumeric(s_glyph));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));


  pango_renderer_draw_glyph(object, font, glyph, x, y);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_activate(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));


  pango_renderer_activate(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_deactivate(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));


  pango_renderer_deactivate(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_part_changed(USER_OBJECT_ s_object, USER_OBJECT_ s_part)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoRenderPart part = ((PangoRenderPart)asCEnum(s_part, PANGO_TYPE_RENDER_PART));


  pango_renderer_part_changed(object, part);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_set_color(USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoRenderPart part = ((PangoRenderPart)asCEnum(s_part, PANGO_TYPE_RENDER_PART));
  const PangoColor* color = ((const PangoColor*)getPtrValue(s_color));


  pango_renderer_set_color(object, part, color);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_get_color(USER_OBJECT_ s_object, USER_OBJECT_ s_part)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  PangoRenderPart part = ((PangoRenderPart)asCEnum(s_part, PANGO_TYPE_RENDER_PART));

  PangoColor* ans;

  ans = pango_renderer_get_color(object, part);

  _result = toRPointerWithFinalizer(ans ? pango_color_copy(ans) : NULL, "PangoColor", (RPointerFinalizer) pango_color_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_set_matrix(USER_OBJECT_ s_object, USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  const PangoMatrix* matrix = ((const PangoMatrix*)getPtrValue(s_matrix));


  pango_renderer_set_matrix(object, matrix);


  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_get_matrix(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));

  const PangoMatrix* ans;

  ans = pango_renderer_get_matrix(object);

  _result = toRPointerWithFinalizer(ans ? pango_matrix_copy(ans) : NULL, "PangoMatrix", (RPointerFinalizer) pango_matrix_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_tab_array_new(USER_OBJECT_ s_initial_size, USER_OBJECT_ s_positions_in_pixels)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gint initial_size = ((gint)asCInteger(s_initial_size));
  gboolean positions_in_pixels = ((gboolean)asCLogical(s_positions_in_pixels));

  PangoTabArray* ans;

  ans = pango_tab_array_new(initial_size, positions_in_pixels);

  _result = toRPointerWithFinalizer(ans, "PangoTabArray", (RPointerFinalizer) pango_tab_array_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_tab_array_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = pango_tab_array_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_tab_array_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoTabArray* object = ((PangoTabArray*)getPtrValue(s_object));

  PangoTabArray* ans;

  ans = pango_tab_array_copy(object);

  _result = toRPointerWithFinalizer(ans, "PangoTabArray", (RPointerFinalizer) pango_tab_array_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_tab_array_free(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoTabArray* object = ((PangoTabArray*)getPtrValue(s_object));


  pango_tab_array_free(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_tab_array_get_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoTabArray* object = ((PangoTabArray*)getPtrValue(s_object));

  gint ans;

  ans = pango_tab_array_get_size(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_tab_array_resize(USER_OBJECT_ s_object, USER_OBJECT_ s_new_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoTabArray* object = ((PangoTabArray*)getPtrValue(s_object));
  gint new_size = ((gint)asCInteger(s_new_size));


  pango_tab_array_resize(object, new_size);


  return(_result);
}
 

USER_OBJECT_
S_pango_tab_array_set_tab(USER_OBJECT_ s_object, USER_OBJECT_ s_tab_index, USER_OBJECT_ s_alignment, USER_OBJECT_ s_location)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoTabArray* object = ((PangoTabArray*)getPtrValue(s_object));
  gint tab_index = ((gint)asCInteger(s_tab_index));
  PangoTabAlign alignment = ((PangoTabAlign)asCEnum(s_alignment, PANGO_TYPE_TAB_ALIGN));
  gint location = ((gint)asCInteger(s_location));


  pango_tab_array_set_tab(object, tab_index, alignment, location);


  return(_result);
}
 

USER_OBJECT_
S_pango_tab_array_get_tab(USER_OBJECT_ s_object, USER_OBJECT_ s_tab_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoTabArray* object = ((PangoTabArray*)getPtrValue(s_object));
  gint tab_index = ((gint)asCInteger(s_tab_index));

  PangoTabAlign alignment;
  gint location;

  pango_tab_array_get_tab(object, tab_index, &alignment, &location);


  _result = retByVal(PROTECT(_result), "alignment", PROTECT(asREnum(alignment, PANGO_TYPE_TAB_ALIGN)), "location", PROTECT(asRInteger(location)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_tab_array_get_positions_in_pixels(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoTabArray* object = ((PangoTabArray*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_tab_array_get_positions_in_pixels(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_language_from_string(USER_OBJECT_ s_language)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* language = ((const char*)asCString(s_language));

  PangoLanguage* ans;

  ans = pango_language_from_string(language);

  _result = toRPointer(ans, "PangoLanguage");

  return(_result);
}
 

USER_OBJECT_
S_pango_language_matches(USER_OBJECT_ s_object, USER_OBJECT_ s_range_list)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLanguage* object = ((PangoLanguage*)getPtrValue(s_object));
  const char* range_list = ((const char*)asCString(s_range_list));

  gboolean ans;

  ans = pango_language_matches(object, range_list);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_language_to_string(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLanguage* object = ((PangoLanguage*)getPtrValue(s_object));

  const char* ans;

  ans = pango_language_to_string(object);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_PANGO_PIXELS(USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gint size = ((gint)asCInteger(s_size));

  gint ans;

  ans = PANGO_PIXELS(size);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_script_for_unichar(USER_OBJECT_ s_ch)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gunichar ch = ((gunichar)asCNumeric(s_ch));

  PangoScript ans;

  ans = pango_script_for_unichar(ch);

  _result = asREnum(ans, PANGO_TYPE_SCRIPT);

  return(_result);
}
 

USER_OBJECT_
S_pango_script_iter_new(USER_OBJECT_ s_text, USER_OBJECT_ s_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* text = ((const char*)asCString(s_text));
  int length = ((int)asCInteger(s_length));

  PangoScriptIter* ans;

  ans = pango_script_iter_new(text, length);

  _result = toRPointerWithFinalizer(ans, "PangoScriptIter", (RPointerFinalizer) pango_script_iter_free);

  return(_result);
}
 

USER_OBJECT_
S_pango_script_iter_get_range(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoScriptIter* object = ((PangoScriptIter*)getPtrValue(s_object));

  const char* start = NULL;
  const char* end = NULL;
  PangoScript script;

  pango_script_iter_get_range(object, &start, &end, &script);


  _result = retByVal(PROTECT(_result), "start", PROTECT(asRString(start)), "end", PROTECT(asRString(end)), "script", PROTECT(asREnum(script, PANGO_TYPE_SCRIPT)), NULL);
  UNPROTECT(4);
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_pango_script_iter_next(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoScriptIter* object = ((PangoScriptIter*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_script_iter_next(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_script_iter_free(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoScriptIter* object = ((PangoScriptIter*)getPtrValue(s_object));


  pango_script_iter_free(object);


  return(_result);
}
 

USER_OBJECT_
S_pango_script_get_sample_language(USER_OBJECT_ s_script)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoScript script = ((PangoScript)asCEnum(s_script, PANGO_TYPE_SCRIPT));

  PangoLanguage* ans;

  ans = pango_script_get_sample_language(script);

  _result = toRPointer(ans ? (ans) : NULL, "PangoLanguage");

  return(_result);
}
 

USER_OBJECT_
S_pango_language_includes_script(USER_OBJECT_ s_object, USER_OBJECT_ s_script)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLanguage* object = ((PangoLanguage*)getPtrValue(s_object));
  PangoScript script = ((PangoScript)asCEnum(s_script, PANGO_TYPE_SCRIPT));

  gboolean ans;

  ans = pango_language_includes_script(object, script);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_show_error_underline(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 14, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));
  double width = ((double)asCNumeric(s_width));
  double height = ((double)asCNumeric(s_height));


  pango_cairo_show_error_underline(cr, x, y, width, height);

#else
  error("pango_cairo_show_error_underline exists only in Pango >= 1.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_error_underline_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 14, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));
  double width = ((double)asCNumeric(s_width));
  double height = ((double)asCNumeric(s_height));


  pango_cairo_error_underline_path(cr, x, y, width, height);

#else
  error("pango_cairo_error_underline_path exists only in Pango >= 1.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_font_describe_with_absolute_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 14, 0)
  PangoFont* object = PANGO_FONT(getPtrValue(s_object));

  PangoFontDescription* ans;

  ans = pango_font_describe_with_absolute_size(object);

  _result = toRPointerWithFinalizer(ans, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free);
#else
  error("pango_font_describe_with_absolute_size exists only in Pango >= 1.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_string_get_width(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 14, 0)
  PangoGlyphString* object = ((PangoGlyphString*)getPtrValue(s_object));

  int ans;

  ans = pango_glyph_string_get_width(object);

  _result = asRInteger(ans);
#else
  error("pango_glyph_string_get_width exists only in Pango >= 1.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_matrix_get_font_scale_factor(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 12, 0)
  PangoMatrix* object = ((PangoMatrix*)getPtrValue(s_object));

  double ans;

  ans = pango_matrix_get_font_scale_factor(object);

  _result = asRNumeric(ans);
#else
  error("pango_matrix_get_font_scale_factor exists only in Pango >= 1.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_index_to_line_x(USER_OBJECT_ s_object, USER_OBJECT_ s_index_, USER_OBJECT_ s_trailing)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 14, 0)
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  int index_ = ((int)asCInteger(s_index_));
  gboolean trailing = ((gboolean)asCLogical(s_trailing));

  int line;
  int x_pos;

  pango_layout_index_to_line_x(object, index_, trailing, &line, &x_pos);


  _result = retByVal(PROTECT(_result), "line", PROTECT(asRInteger(line)), "x.pos", PROTECT(asRInteger(x_pos)), NULL);
  UNPROTECT(3);
  ;
  ;
#else
  error("pango_layout_index_to_line_x exists only in Pango >= 1.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_gravity_to_rotation(USER_OBJECT_ s_base_gravity)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoGravity base_gravity = ((PangoGravity)asCEnum(s_base_gravity, PANGO_TYPE_GRAVITY));

  double ans;

  ans = pango_gravity_to_rotation(base_gravity);

  _result = asRNumeric(ans);
#else
  error("pango_gravity_to_rotation exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_gravity_get_for_matrix(USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  const PangoMatrix* matrix = ((const PangoMatrix*)getPtrValue(s_matrix));

  PangoGravity ans;

  ans = pango_gravity_get_for_matrix(matrix);

  _result = asREnum(ans, PANGO_TYPE_GRAVITY);
#else
  error("pango_gravity_get_for_matrix exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_gravity_get_for_script(USER_OBJECT_ s_script, USER_OBJECT_ s_base_gravity, USER_OBJECT_ s_hint)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoScript script = ((PangoScript)asCEnum(s_script, PANGO_TYPE_SCRIPT));
  PangoGravity base_gravity = ((PangoGravity)asCEnum(s_base_gravity, PANGO_TYPE_GRAVITY));
  PangoGravityHint hint = ((PangoGravityHint)asCEnum(s_hint, PANGO_TYPE_GRAVITY_HINT));

  PangoGravity ans;

  ans = pango_gravity_get_for_script(script, base_gravity, hint);

  _result = asREnum(ans, PANGO_TYPE_GRAVITY);
#else
  error("pango_gravity_get_for_script exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_gravity_new(USER_OBJECT_ s_gravity)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoGravity gravity = ((PangoGravity)asCEnum(s_gravity, PANGO_TYPE_GRAVITY));

  PangoAttribute* ans;

  ans = pango_attr_gravity_new(gravity);

  _result = asRPangoAttribute(ans);
#else
  error("pango_attr_gravity_new exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_gravity_hint_new(USER_OBJECT_ s_hint)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoGravityHint hint = ((PangoGravityHint)asCEnum(s_hint, PANGO_TYPE_GRAVITY_HINT));

  PangoAttribute* ans;

  ans = pango_attr_gravity_hint_new(hint);

  _result = asRPangoAttribute(ans);
#else
  error("pango_attr_gravity_hint_new exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_context_set_base_gravity(USER_OBJECT_ s_object, USER_OBJECT_ s_gravity)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  PangoGravity gravity = ((PangoGravity)asCEnum(s_gravity, PANGO_TYPE_GRAVITY));


  pango_context_set_base_gravity(object, gravity);

#else
  error("pango_context_set_base_gravity exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_context_get_base_gravity(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));

  PangoGravity ans;

  ans = pango_context_get_base_gravity(object);

  _result = asREnum(ans, PANGO_TYPE_GRAVITY);
#else
  error("pango_context_get_base_gravity exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_context_get_gravity(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));

  PangoGravity ans;

  ans = pango_context_get_gravity(object);

  _result = asREnum(ans, PANGO_TYPE_GRAVITY);
#else
  error("pango_context_get_gravity exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_context_set_gravity_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_hint)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  PangoGravityHint hint = ((PangoGravityHint)asCEnum(s_hint, PANGO_TYPE_GRAVITY_HINT));


  pango_context_set_gravity_hint(object, hint);

#else
  error("pango_context_set_gravity_hint exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_context_get_gravity_hint(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));

  PangoGravityHint ans;

  ans = pango_context_get_gravity_hint(object);

  _result = asREnum(ans, PANGO_TYPE_GRAVITY_HINT);
#else
  error("pango_context_get_gravity_hint exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_set_gravity(USER_OBJECT_ s_object, USER_OBJECT_ s_gravity)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));
  PangoGravity gravity = ((PangoGravity)asCEnum(s_gravity, PANGO_TYPE_GRAVITY));


  pango_font_description_set_gravity(object, gravity);

#else
  error("pango_font_description_set_gravity exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_font_description_get_gravity(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoFontDescription* object = ((PangoFontDescription*)getPtrValue(s_object));

  PangoGravity ans;

  ans = pango_font_description_get_gravity(object);

  _result = asREnum(ans, PANGO_TYPE_GRAVITY);
#else
  error("pango_font_description_get_gravity exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_line_readonly(USER_OBJECT_ s_object, USER_OBJECT_ s_line)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  int line = ((int)asCInteger(s_line));

  PangoLayoutLine* ans;

  ans = pango_layout_get_line_readonly(object, line);

  _result = toRPointer(ans, "PangoLayoutLine");
#else
  error("pango_layout_get_line_readonly exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_lines_readonly(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  GSList* ans;

  ans = pango_layout_get_lines_readonly(object);

  _result = asRGSList(ans, "PangoLayoutLine");
#else
  error("pango_layout_get_lines_readonly exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_line_readonly(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  PangoLayoutLine* ans;

  ans = pango_layout_iter_get_line_readonly(object);

  _result = toRPointer(ans, "PangoLayoutLine");
#else
  error("pango_layout_iter_get_line_readonly exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_run_readonly(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoLayoutIter* object = ((PangoLayoutIter*)getPtrValue(s_object));

  PangoLayoutRun* ans;

  ans = pango_layout_iter_get_run_readonly(object);

  _result = toRPointer(ans, "PangoLayoutRun");
#else
  error("pango_layout_iter_get_run_readonly exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_color_to_string(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoColor* object = ((PangoColor*)getPtrValue(s_object));

  gchar* ans;

  ans = pango_color_to_string(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("pango_color_to_string exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_matrix_transform_point(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoMatrix* object = ((PangoMatrix*)getPtrValue(s_object));
  gdouble* x = ((gdouble*)asCArray(s_x, gdouble, asCNumeric));
  gdouble* y = ((gdouble*)asCArray(s_y, gdouble, asCNumeric));


  pango_matrix_transform_point(object, x, y);

#else
  error("pango_matrix_transform_point exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_matrix_transform_distance(USER_OBJECT_ s_object, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoMatrix* object = ((PangoMatrix*)getPtrValue(s_object));
  gdouble* dx = ((gdouble*)asCArray(s_dx, gdouble, asCNumeric));
  gdouble* dy = ((gdouble*)asCArray(s_dy, gdouble, asCNumeric));


  pango_matrix_transform_distance(object, dx, dy);

#else
  error("pango_matrix_transform_distance exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_matrix_transform_rectangle(USER_OBJECT_ s_object, USER_OBJECT_ s_rect)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoMatrix* object = ((PangoMatrix*)getPtrValue(s_object));
  PangoRectangle* rect = asCPangoRectangle(s_rect);


  pango_matrix_transform_rectangle(object, rect);

#else
  error("pango_matrix_transform_rectangle exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_matrix_transform_pixel_rectangle(USER_OBJECT_ s_object, USER_OBJECT_ s_rect)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoMatrix* object = ((PangoMatrix*)getPtrValue(s_object));
  PangoRectangle* rect = asCPangoRectangle(s_rect);


  pango_matrix_transform_pixel_rectangle(object, rect);

#else
  error("pango_matrix_transform_pixel_rectangle exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_units_from_double(USER_OBJECT_ s_d)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  double d = ((double)asCNumeric(s_d));

  int ans;

  ans = pango_units_from_double(d);

  _result = asRInteger(ans);
#else
  error("pango_units_from_double exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_units_to_double(USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  int i = ((int)asCInteger(s_i));

  double ans;

  ans = pango_units_to_double(i);

  _result = asRNumeric(ans);
#else
  error("pango_units_to_double exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_extents_to_pixels(USER_OBJECT_ s_inclusive, USER_OBJECT_ s_nearest)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoRectangle* inclusive = asCPangoRectangle(s_inclusive);
  PangoRectangle* nearest = asCPangoRectangle(s_nearest);


  pango_extents_to_pixels(inclusive, nearest);

#else
  error("pango_extents_to_pixels exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_is_wrapped(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  gboolean ans;

  ans = pango_layout_is_wrapped(object);

  _result = asRLogical(ans);
#else
  error("pango_layout_is_wrapped exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_is_ellipsized(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  gboolean ans;

  ans = pango_layout_is_ellipsized(object);

  _result = asRLogical(ans);
#else
  error("pango_layout_is_ellipsized exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_unknown_glyphs_count(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  int ans;

  ans = pango_layout_get_unknown_glyphs_count(object);

  _result = asRInteger(ans);
#else
  error("pango_layout_get_unknown_glyphs_count exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_version(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)

  int ans;

  ans = pango_version();

  _result = asRInteger(ans);
#else
  error("pango_version exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_version_string(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)

  const char* ans;

  ans = pango_version_string();

  _result = asRString(ans);
#else
  error("pango_version_string exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_version_check(USER_OBJECT_ s_required_major, USER_OBJECT_ s_required_minor, USER_OBJECT_ s_required_micro)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  int required_major = ((int)asCInteger(s_required_major));
  int required_minor = ((int)asCInteger(s_required_minor));
  int required_micro = ((int)asCInteger(s_required_micro));

  const char* ans;

  ans = pango_version_check(required_major, required_minor, required_micro);

  _result = asRString(ans);
#else
  error("pango_version_check exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_height(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 20, 0)
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  gint ans;

  ans = pango_layout_get_height(object);

  _result = asRInteger(ans);
#else
  error("pango_layout_get_height exists only in Pango >= 1.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_set_height(USER_OBJECT_ s_object, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 20, 0)
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));
  gint height = ((gint)asCInteger(s_height));


  pango_layout_set_height(object, height);

#else
  error("pango_layout_set_height exists only in Pango >= 1.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_attribute_init(USER_OBJECT_ s_attr, USER_OBJECT_ s_klass)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 20, 0)
  PangoAttribute* attr = ((PangoAttribute*)getPtrValue(s_attr));
  const PangoAttrClass* klass = ((const PangoAttrClass*)getPtrValue(s_klass));


  pango_attribute_init(attr, klass);

#else
  error("pango_attribute_init exists only in Pango >= 1.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_iter_get_layout(USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 20, 0)
  PangoLayoutIter* iter = ((PangoLayoutIter*)getPtrValue(s_iter));

  PangoLayout* ans;

  ans = pango_layout_iter_get_layout(iter);

  _result = toRPointerWithRef(ans, "PangoLayout");
#else
  error("pango_layout_iter_get_layout exists only in Pango >= 1.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_get_layout(USER_OBJECT_ s_renderer)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 20, 0)
  PangoRenderer* renderer = PANGO_RENDERER(getPtrValue(s_renderer));

  PangoLayout* ans;

  ans = pango_renderer_get_layout(renderer);

  _result = toRPointerWithRef(ans, "PangoLayout");
#else
  error("pango_renderer_get_layout exists only in Pango >= 1.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_get_layout_line(USER_OBJECT_ s_renderer)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 20, 0)
  PangoRenderer* renderer = PANGO_RENDERER(getPtrValue(s_renderer));

  PangoLayoutLine* ans;

  ans = pango_renderer_get_layout_line(renderer);

  _result = toRPointer(ans, "PangoLayoutLine");
#else
  error("pango_renderer_get_layout_line exists only in Pango >= 1.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_font_face_is_synthesized(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 18, 0)
  PangoFontFace* object = PANGO_FONT_FACE(getPtrValue(s_object));

  gboolean ans;

  ans = pango_font_face_is_synthesized(object);

  _result = asRLogical(ans);
#else
  error("pango_font_face_is_synthesized exists only in Pango >= 1.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_font_get_scaled_font(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 18, 0)
  PangoCairoFont* object = PANGO_CAIRO_FONT(getPtrValue(s_object));

  cairo_scaled_font_t* ans;

  ans = pango_cairo_font_get_scaled_font(object);

  _result = toRPointerWithCairoRef(ans, "CairoScaledFont", cairo_scaled_font);
#else
  error("pango_cairo_font_get_scaled_font exists only in Pango >= 1.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_font_map_new_for_font_type(USER_OBJECT_ s_fonttype)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 18, 0)
  cairo_font_type_t fonttype = ((cairo_font_type_t)asCEnum(s_fonttype, CAIRO_TYPE_FONT_TYPE));

  PangoFontMap* ans;

  ans = pango_cairo_font_map_new_for_font_type(fonttype);

  _result = toRPointerWithFinalizer(ans, "PangoFontMap", (RPointerFinalizer) g_object_unref);
#else
  error("pango_cairo_font_map_new_for_font_type exists only in Pango >= 1.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_font_map_get_font_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 18, 0)
  PangoCairoFontMap* object = PANGO_CAIRO_FONT_MAP(getPtrValue(s_object));

  cairo_font_type_t ans;

  ans = pango_cairo_font_map_get_font_type(object);

  _result = asREnum(ans, CAIRO_TYPE_FONT_TYPE);
#else
  error("pango_cairo_font_map_get_font_type exists only in Pango >= 1.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_context_set_shape_renderer(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 18, 0)
  PangoCairoShapeRendererFunc func = ((PangoCairoShapeRendererFunc)S_PangoCairoShapeRendererFunc);
  R_CallbackData* data = R_createCBData(s_func, s_data);
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));
  GDestroyNotify dnotify = ((GDestroyNotify)R_freeCBData);


  pango_cairo_context_set_shape_renderer(object, func, data, dnotify);

#else
  error("pango_cairo_context_set_shape_renderer exists only in Pango >= 1.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_context_get_shape_renderer(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 18, 0)
  PangoContext* object = PANGO_CONTEXT(getPtrValue(s_object));

  PangoCairoShapeRendererFunc ans;
  gpointer data;

  ans = pango_cairo_context_get_shape_renderer(object, &data);

  _result = toRPointerFn(((DL_FUNC)ans), "PangoCairoShapeRendererFunc");

  _result = retByVal(PROTECT(_result), "data", PROTECT(data), NULL);
  UNPROTECT(2);
  ;
#else
  error("pango_cairo_context_get_shape_renderer exists only in Pango >= 1.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_language_get_default(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)

  PangoLanguage* ans;

  ans = pango_language_get_default();

  _result = toRPointer(ans ? (ans) : NULL, "PangoLanguage");
#else
  error("pango_language_get_default exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_language_get_sample_string(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 16, 0)
  PangoLanguage* object = ((PangoLanguage*)getPtrValue(s_object));

  const char* ans;

  ans = pango_language_get_sample_string(object);

  _result = asRString(ans);
#else
  error("pango_language_get_sample_string exists only in Pango >= 1.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_bidi_type_for_unichar(USER_OBJECT_ s_ch)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  gunichar ch = ((gunichar)asCNumeric(s_ch));

  PangoBidiType ans;

  ans = pango_bidi_type_for_unichar(ch);

  _result = asREnum(ans, PANGO_TYPE_BIDI_TYPE);
#else
  error("pango_bidi_type_for_unichar exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_attr_type_get_name(USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoAttrType type = ((PangoAttrType)asCEnum(s_type, PANGO_TYPE_ATTR_TYPE));

  const char* ans;

  ans = pango_attr_type_get_name(type);

  _result = asRString(ans);
#else
  error("pango_attr_type_get_name exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_create_context(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  PangoContext* ans;

  ans = pango_cairo_create_context(cr);

  _result = toRPointerWithFinalizer(ans, "PangoContext", (RPointerFinalizer) g_object_unref);
#else
  error("pango_cairo_create_context exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_font_map_set_default(USER_OBJECT_ s_fontmap)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoCairoFontMap* fontmap = PANGO_CAIRO_FONT_MAP(getPtrValue(s_fontmap));


  pango_cairo_font_map_set_default(fontmap);

#else
  error("pango_cairo_font_map_set_default exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_cairo_show_glyph_item(USER_OBJECT_ s_cr, USER_OBJECT_ s_text, USER_OBJECT_ s_glyph_item)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const char* text = ((const char*)asCString(s_text));
  PangoGlyphItem* glyph_item = ((PangoGlyphItem*)getPtrValue(s_glyph_item));


  pango_cairo_show_glyph_item(cr, text, glyph_item);

#else
  error("pango_cairo_show_glyph_item exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_renderer_draw_glyph_item(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoRenderer* object = PANGO_RENDERER(getPtrValue(s_object));
  const char* text = ((const char*)asCString(s_text));
  PangoGlyphItem* glyph_item = ((PangoGlyphItem*)getPtrValue(s_glyph_item));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));


  pango_renderer_draw_glyph_item(object, text, glyph_item, x, y);

#else
  error("pango_renderer_draw_glyph_item exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_font_map_create_context(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoFontMap* object = PANGO_FONT_MAP(getPtrValue(s_object));

  PangoContext* ans;

  ans = pango_font_map_create_context(object);

  _result = toRPointerWithFinalizer(ans, "PangoContext", (RPointerFinalizer) g_object_unref);
#else
  error("pango_font_map_create_context exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_item_iter_init_start(USER_OBJECT_ s_object, USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoGlyphItemIter* object = ((PangoGlyphItemIter*)getPtrValue(s_object));
  PangoGlyphItem* glyph_item = ((PangoGlyphItem*)getPtrValue(s_glyph_item));
  const char* text = ((const char*)asCString(s_text));

  gboolean ans;

  ans = pango_glyph_item_iter_init_start(object, glyph_item, text);

  _result = asRLogical(ans);
#else
  error("pango_glyph_item_iter_init_start exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_item_iter_init_end(USER_OBJECT_ s_object, USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoGlyphItemIter* object = ((PangoGlyphItemIter*)getPtrValue(s_object));
  PangoGlyphItem* glyph_item = ((PangoGlyphItem*)getPtrValue(s_glyph_item));
  const char* text = ((const char*)asCString(s_text));

  gboolean ans;

  ans = pango_glyph_item_iter_init_end(object, glyph_item, text);

  _result = asRLogical(ans);
#else
  error("pango_glyph_item_iter_init_end exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_item_iter_next_cluster(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoGlyphItemIter* object = ((PangoGlyphItemIter*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_glyph_item_iter_next_cluster(object);

  _result = asRLogical(ans);
#else
  error("pango_glyph_item_iter_next_cluster exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_glyph_item_iter_prev_cluster(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoGlyphItemIter* object = ((PangoGlyphItemIter*)getPtrValue(s_object));

  gboolean ans;

  ans = pango_glyph_item_iter_prev_cluster(object);

  _result = asRLogical(ans);
#else
  error("pango_glyph_item_iter_prev_cluster exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_language_get_scripts(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoLanguage* object = ((PangoLanguage*)getPtrValue(s_object));

  const PangoScript* ans;
  int num_scripts;

  ans = pango_language_get_scripts(object, &num_scripts);

  _result = asREnumArrayWithSize(ans, PANGO_TYPE_SCRIPT, num_scripts);

  _result = retByVal(PROTECT(_result), "num.scripts", PROTECT(asRInteger(num_scripts)), NULL);
  UNPROTECT(2);
  ;
#else
  error("pango_language_get_scripts exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_layout_get_baseline(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 22, 0)
  PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

  int ans;

  ans = pango_layout_get_baseline(object);

  _result = asRInteger(ans);
#else
  error("pango_layout_get_baseline exists only in Pango >= 1.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_pango_gravity_get_for_script_and_width(USER_OBJECT_ s_script, USER_OBJECT_ s_wide, USER_OBJECT_ s_base_gravity, USER_OBJECT_ s_hint)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if PANGO_CHECK_VERSION(1, 26, 0)
  PangoScript script = ((PangoScript)asCEnum(s_script, PANGO_TYPE_SCRIPT));
  gboolean wide = ((gboolean)asCLogical(s_wide));
  PangoGravity base_gravity = ((PangoGravity)asCEnum(s_base_gravity, PANGO_TYPE_GRAVITY));
  PangoGravityHint hint = ((PangoGravityHint)asCEnum(s_hint, PANGO_TYPE_GRAVITY_HINT));

  PangoGravity ans;

  ans = pango_gravity_get_for_script_and_width(script, wide, base_gravity, hint);

  _result = asREnum(ans, PANGO_TYPE_GRAVITY);
#else
  error("pango_gravity_get_for_script_and_width exists only in Pango >= 1.26.0");
#endif

  return(_result);
}
 


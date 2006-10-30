
pangoColorGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_color_get_type")

  return(w)
} 


pangoColorCopy <-
function(object)
{
  checkPtrType(object, "PangoColor")

  w <- .RGtkCall("S_pango_color_copy", object)

  return(w)
} 


pangoColorFree <-
function(object)
{
  checkPtrType(object, "PangoColor")

  w <- .RGtkCall("S_pango_color_free", object)

  return(invisible(w))
} 


pangoColorParse <-
function(spec)
{
  spec <- as.character(spec)

  w <- .RGtkCall("S_pango_color_parse", spec)

  return(w)
} 


pangoAttrTypeRegister <-
function(name)
{
  name <- as.character(name)

  w <- .RGtkCall("S_pango_attr_type_register", name)

  return(w)
} 


pangoAttributeCopy <-
function(object)
{
  checkPtrType(object, "PangoAttribute")

  w <- .RGtkCall("S_pango_attribute_copy", object)

  return(w)
} 


pangoAttributeEqual <-
function(object, attr2)
{
  checkPtrType(object, "PangoAttribute")
  checkPtrType(attr2, "PangoAttribute")

  w <- .RGtkCall("S_pango_attribute_equal", object, attr2)

  return(w)
} 


pangoAttrLanguageNew <-
function(language)
{
  checkPtrType(language, "PangoLanguage")

  w <- .RGtkCall("S_pango_attr_language_new", language)

  return(w)
} 


pangoAttrFamilyNew <-
function(family)
{
  family <- as.character(family)

  w <- .RGtkCall("S_pango_attr_family_new", family)

  return(w)
} 


pangoAttrForegroundNew <-
function(red, green, blue)
{
  red <- as.integer(red)
  green <- as.integer(green)
  blue <- as.integer(blue)

  w <- .RGtkCall("S_pango_attr_foreground_new", red, green, blue)

  return(w)
} 


pangoAttrBackgroundNew <-
function(red, green, blue)
{
  red <- as.integer(red)
  green <- as.integer(green)
  blue <- as.integer(blue)

  w <- .RGtkCall("S_pango_attr_background_new", red, green, blue)

  return(w)
} 


pangoAttrStrikethroughColorNew <-
function(red, green, blue)
{
  red <- as.integer(red)
  green <- as.integer(green)
  blue <- as.integer(blue)

  w <- .RGtkCall("S_pango_attr_strikethrough_color_new", red, green, blue)

  return(w)
} 


pangoAttrUnderlineColorNew <-
function(red, green, blue)
{
  red <- as.integer(red)
  green <- as.integer(green)
  blue <- as.integer(blue)

  w <- .RGtkCall("S_pango_attr_underline_color_new", red, green, blue)

  return(w)
} 


pangoAttrSizeNew <-
function(size)
{
  size <- as.integer(size)

  w <- .RGtkCall("S_pango_attr_size_new", size)

  return(w)
} 


pangoAttrSizeNewAbsolute <-
function(size)
{
  size <- as.integer(size)

  w <- .RGtkCall("S_pango_attr_size_new_absolute", size)

  return(w)
} 


pangoAttrStyleNew <-
function(style)
{
  

  w <- .RGtkCall("S_pango_attr_style_new", style)

  return(w)
} 


pangoAttrWeightNew <-
function(weight)
{
  

  w <- .RGtkCall("S_pango_attr_weight_new", weight)

  return(w)
} 


pangoAttrVariantNew <-
function(variant)
{
  

  w <- .RGtkCall("S_pango_attr_variant_new", variant)

  return(w)
} 


pangoAttrStretchNew <-
function(stretch)
{
  

  w <- .RGtkCall("S_pango_attr_stretch_new", stretch)

  return(w)
} 


pangoAttrFontDescNew <-
function(desc)
{
  checkPtrType(desc, "PangoFontDescription")

  w <- .RGtkCall("S_pango_attr_font_desc_new", desc)

  return(w)
} 


pangoAttrUnderlineNew <-
function(underline)
{
  

  w <- .RGtkCall("S_pango_attr_underline_new", underline)

  return(w)
} 


pangoAttrStrikethroughNew <-
function(strikethrough)
{
  strikethrough <- as.logical(strikethrough)

  w <- .RGtkCall("S_pango_attr_strikethrough_new", strikethrough)

  return(w)
} 


pangoAttrRiseNew <-
function(rise)
{
  rise <- as.integer(rise)

  w <- .RGtkCall("S_pango_attr_rise_new", rise)

  return(w)
} 


pangoAttrShapeNew <-
function(ink.rect, logical.rect)
{
  ink.rect <- as.PangoRectangle(ink.rect)
  logical.rect <- as.PangoRectangle(logical.rect)

  w <- .RGtkCall("S_pango_attr_shape_new", ink.rect, logical.rect)

  return(w)
} 


pangoAttrShapeNewWithData <-
function(ink.rect, logical.rect, data)
{
  ink.rect <- as.PangoRectangle(ink.rect)
  logical.rect <- as.PangoRectangle(logical.rect)
  

  w <- .RGtkCall("S_pango_attr_shape_new_with_data", ink.rect, logical.rect, data)

  return(w)
} 


pangoAttrLetterSpacingNew <-
function(letter.spacing)
{
  letter.spacing <- as.integer(letter.spacing)

  w <- .RGtkCall("S_pango_attr_letter_spacing_new", letter.spacing)

  return(w)
} 


pangoAttrScaleNew <-
function(scale.factor)
{
  scale.factor <- as.numeric(scale.factor)

  w <- .RGtkCall("S_pango_attr_scale_new", scale.factor)

  return(w)
} 


pangoAttrFallbackNew <-
function(fallback)
{
  fallback <- as.logical(fallback)

  w <- .RGtkCall("S_pango_attr_fallback_new", fallback)

  return(w)
} 


pangoAttrListGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_attr_list_get_type")

  return(w)
} 


pangoAttrListNew <-
function()
{
  

  w <- .RGtkCall("S_pango_attr_list_new")

  return(w)
} 


pangoAttrListCopy <-
function(object)
{
  checkPtrType(object, "PangoAttrList")

  w <- .RGtkCall("S_pango_attr_list_copy", object)

  return(w)
} 


pangoAttrListInsert <-
function(object, attr)
{
  checkPtrType(object, "PangoAttrList")
  checkPtrType(attr, "PangoAttribute")

  w <- .RGtkCall("S_pango_attr_list_insert", object, attr)

  return(invisible(w))
} 


pangoAttrListInsertBefore <-
function(object, attr)
{
  checkPtrType(object, "PangoAttrList")
  checkPtrType(attr, "PangoAttribute")

  w <- .RGtkCall("S_pango_attr_list_insert_before", object, attr)

  return(invisible(w))
} 


pangoAttrListChange <-
function(object, attr)
{
  checkPtrType(object, "PangoAttrList")
  checkPtrType(attr, "PangoAttribute")

  w <- .RGtkCall("S_pango_attr_list_change", object, attr)

  return(invisible(w))
} 


pangoAttrListSplice <-
function(object, other, pos, len)
{
  checkPtrType(object, "PangoAttrList")
  checkPtrType(other, "PangoAttrList")
  pos <- as.integer(pos)
  len <- as.integer(len)

  w <- .RGtkCall("S_pango_attr_list_splice", object, other, pos, len)

  return(invisible(w))
} 


pangoAttrListGetIterator <-
function(object)
{
  checkPtrType(object, "PangoAttrList")

  w <- .RGtkCall("S_pango_attr_list_get_iterator", object)

  return(w)
} 


pangoAttrListFilter <-
function(object, func, data)
{
  checkPtrType(object, "PangoAttrList")
  func <- as.function(func)
  

  w <- .RGtkCall("S_pango_attr_list_filter", object, func, data)

  return(w)
} 


pangoAttrIteratorRange <-
function(object)
{
  checkPtrType(object, "PangoAttrIterator")

  w <- .RGtkCall("S_pango_attr_iterator_range", object)

  return(invisible(w))
} 


pangoAttrIteratorNext <-
function(object)
{
  checkPtrType(object, "PangoAttrIterator")

  w <- .RGtkCall("S_pango_attr_iterator_next", object)

  return(w)
} 


pangoAttrIteratorCopy <-
function(object)
{
  checkPtrType(object, "PangoAttrIterator")

  w <- .RGtkCall("S_pango_attr_iterator_copy", object)

  return(w)
} 


pangoAttrIteratorGet <-
function(object, type)
{
  checkPtrType(object, "PangoAttrIterator")
  

  w <- .RGtkCall("S_pango_attr_iterator_get", object, type)

  return(w)
} 


pangoAttrIteratorGetFont <-
function(object)
{
  checkPtrType(object, "PangoAttrIterator")

  w <- .RGtkCall("S_pango_attr_iterator_get_font", object)

  return(invisible(w))
} 


pangoAttrIteratorGetAttrs <-
function(object)
{
  checkPtrType(object, "PangoAttrIterator")

  w <- .RGtkCall("S_pango_attr_iterator_get_attrs", object)

  return(w)
} 


pangoParseMarkup <-
function(markup.text, length = -1, accel.marker = 0, .errwarn = TRUE)
{
  markup.text <- as.character(markup.text)
  length <- as.integer(length)
  accel.marker <- as.numeric(accel.marker)

  w <- .RGtkCall("S_pango_parse_markup", markup.text, length, accel.marker)

  if(.errwarn && !is.null(w$error))
    warning(w$error[["message"]])

  return(w)
} 


pangoFindParagraphBoundary <-
function(text, length = -1)
{
  text <- as.character(text)
  length <- as.integer(length)

  w <- .RGtkCall("S_pango_find_paragraph_boundary", text, length)

  return(invisible(w))
} 


pangoCairoFontMapGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_cairo_font_map_get_type")

  return(w)
} 


pangoCairoFontMapNew <-
function()
{
  

  w <- .RGtkCall("S_pango_cairo_font_map_new")

  return(w)
} 


pangoCairoFontMapGetDefault <-
function()
{
  

  w <- .RGtkCall("S_pango_cairo_font_map_get_default")

  return(w)
} 


pangoCairoFontMapSetResolution <-
function(object, dpi)
{
  checkPtrType(object, "PangoCairoFontMap")
  dpi <- as.numeric(dpi)

  w <- .RGtkCall("S_pango_cairo_font_map_set_resolution", object, dpi)

  return(invisible(w))
} 


pangoCairoFontMapGetResolution <-
function(object)
{
  checkPtrType(object, "PangoCairoFontMap")

  w <- .RGtkCall("S_pango_cairo_font_map_get_resolution", object)

  return(w)
} 


pangoCairoFontMapCreateContext <-
function(object)
{
  checkPtrType(object, "PangoCairoFontMap")

  w <- .RGtkCall("S_pango_cairo_font_map_create_context", object)

  return(w)
} 


pangoCairoUpdateContext <-
function(cr, context)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(context, "PangoContext")

  w <- .RGtkCall("S_pango_cairo_update_context", cr, context)

  return(w)
} 


pangoCairoContextSetFontOptions <-
function(context, options)
{
  checkPtrType(context, "PangoContext")
  checkPtrType(options, "CairoFontOptions")

  w <- .RGtkCall("S_pango_cairo_context_set_font_options", context, options)

  return(w)
} 


pangoCairoContextGetFontOptions <-
function(context)
{
  checkPtrType(context, "PangoContext")

  w <- .RGtkCall("S_pango_cairo_context_get_font_options", context)

  return(w)
} 


pangoCairoContextSetResolution <-
function(context, dpi)
{
  checkPtrType(context, "PangoContext")
  dpi <- as.numeric(dpi)

  w <- .RGtkCall("S_pango_cairo_context_set_resolution", context, dpi)

  return(w)
} 


pangoCairoContextGetResolution <-
function(context)
{
  checkPtrType(context, "PangoContext")

  w <- .RGtkCall("S_pango_cairo_context_get_resolution", context)

  return(w)
} 


pangoCairoCreateLayout <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_pango_cairo_create_layout", cr)

  return(w)
} 


pangoCairoUpdateLayout <-
function(cr, layout)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(layout, "PangoLayout")

  w <- .RGtkCall("S_pango_cairo_update_layout", cr, layout)

  return(w)
} 


pangoCairoShowGlyphString <-
function(cr, font, glyphs)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(font, "PangoFont")
  checkPtrType(glyphs, "PangoGlyphString")

  w <- .RGtkCall("S_pango_cairo_show_glyph_string", cr, font, glyphs)

  return(w)
} 


pangoCairoShowLayoutLine <-
function(cr, line)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(line, "PangoLayoutLine")

  w <- .RGtkCall("S_pango_cairo_show_layout_line", cr, line)

  return(w)
} 


pangoCairoShowLayout <-
function(cr, layout)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(layout, "PangoLayout")

  w <- .RGtkCall("S_pango_cairo_show_layout", cr, layout)

  return(w)
} 


pangoCairoGlyphStringPath <-
function(cr, font, glyphs)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(font, "PangoFont")
  checkPtrType(glyphs, "PangoGlyphString")

  w <- .RGtkCall("S_pango_cairo_glyph_string_path", cr, font, glyphs)

  return(w)
} 


pangoCairoLayoutLinePath <-
function(cr, line)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(line, "PangoLayoutLine")

  w <- .RGtkCall("S_pango_cairo_layout_line_path", cr, line)

  return(w)
} 


pangoCairoLayoutPath <-
function(cr, layout)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(layout, "PangoLayout")

  w <- .RGtkCall("S_pango_cairo_layout_path", cr, layout)

  return(w)
} 


pangoContextSetFontMap <-
function(object, font.map)
{
  checkPtrType(object, "PangoContext")
  checkPtrType(font.map, "PangoFontMap")

  w <- .RGtkCall("S_pango_context_set_font_map", object, font.map)

  return(invisible(w))
} 


pangoContextGetFontMap <-
function(object)
{
  checkPtrType(object, "PangoContext")

  w <- .RGtkCall("S_pango_context_get_font_map", object)

  return(w)
} 


pangoContextListFamilies <-
function(object)
{
  checkPtrType(object, "PangoContext")

  w <- .RGtkCall("S_pango_context_list_families", object)

  return(invisible(w))
} 


pangoGetMirrorChar <-
function(ch)
{
  if(getOption("depwarn"))
    .Deprecated("nothing", RGtk2)

  ch <- as.numeric(ch)

  w <- .RGtkCall("S_pango_get_mirror_char", ch)

  return(w)
} 


pangoUnicharDirection <-
function(ch)
{
  ch <- as.numeric(ch)

  w <- .RGtkCall("S_pango_unichar_direction", ch)

  return(w)
} 


pangoFindBaseDir <-
function(text, length = -1)
{
  text <- as.character(text)
  length <- as.integer(length)

  w <- .RGtkCall("S_pango_find_base_dir", text, length)

  return(w)
} 


pangoContextLoadFont <-
function(object, desc)
{
  checkPtrType(object, "PangoContext")
  checkPtrType(desc, "PangoFontDescription")

  w <- .RGtkCall("S_pango_context_load_font", object, desc)

  return(w)
} 


pangoContextLoadFontset <-
function(object, desc, language)
{
  checkPtrType(object, "PangoContext")
  checkPtrType(desc, "PangoFontDescription")
  checkPtrType(language, "PangoLanguage")

  w <- .RGtkCall("S_pango_context_load_fontset", object, desc, language)

  return(w)
} 


pangoContextSetMatrix <-
function(object, matrix)
{
  checkPtrType(object, "PangoContext")
  checkPtrType(matrix, "PangoMatrix")

  w <- .RGtkCall("S_pango_context_set_matrix", object, matrix)

  return(invisible(w))
} 


pangoContextGetMatrix <-
function(object)
{
  checkPtrType(object, "PangoContext")

  w <- .RGtkCall("S_pango_context_get_matrix", object)

  return(w)
} 


pangoContextGetMetrics <-
function(object, desc, language = NULL)
{
  checkPtrType(object, "PangoContext")
  checkPtrType(desc, "PangoFontDescription")
  if (!is.null( language )) checkPtrType(language, "PangoLanguage")

  w <- .RGtkCall("S_pango_context_get_metrics", object, desc, language)

  return(w)
} 


pangoContextSetFontDescription <-
function(object, desc)
{
  checkPtrType(object, "PangoContext")
  checkPtrType(desc, "PangoFontDescription")

  w <- .RGtkCall("S_pango_context_set_font_description", object, desc)

  return(invisible(w))
} 


pangoContextGetFontDescription <-
function(object)
{
  checkPtrType(object, "PangoContext")

  w <- .RGtkCall("S_pango_context_get_font_description", object)

  return(w)
} 


pangoContextGetLanguage <-
function(object)
{
  checkPtrType(object, "PangoContext")

  w <- .RGtkCall("S_pango_context_get_language", object)

  return(w)
} 


pangoContextSetLanguage <-
function(object, language)
{
  checkPtrType(object, "PangoContext")
  checkPtrType(language, "PangoLanguage")

  w <- .RGtkCall("S_pango_context_set_language", object, language)

  return(invisible(w))
} 


pangoContextSetBaseDir <-
function(object, direction)
{
  checkPtrType(object, "PangoContext")
  

  w <- .RGtkCall("S_pango_context_set_base_dir", object, direction)

  return(invisible(w))
} 


pangoContextGetBaseDir <-
function(object)
{
  checkPtrType(object, "PangoContext")

  w <- .RGtkCall("S_pango_context_get_base_dir", object)

  return(w)
} 


pangoItemize <-
function(context, text, start.index, length, attrs, cached.iter = NULL)
{
  checkPtrType(context, "PangoContext")
  text <- as.character(text)
  start.index <- as.integer(start.index)
  length <- as.integer(length)
  checkPtrType(attrs, "PangoAttrList")
  if (!is.null( cached.iter )) checkPtrType(cached.iter, "PangoAttrIterator")

  w <- .RGtkCall("S_pango_itemize", context, text, start.index, length, attrs, cached.iter)

  return(w)
} 


pangoItemizeWithBaseDir <-
function(context, base.dir, text, start.index, length, attrs, cached.iter = NULL)
{
  checkPtrType(context, "PangoContext")
  
  text <- as.character(text)
  start.index <- as.integer(start.index)
  length <- as.integer(length)
  checkPtrType(attrs, "PangoAttrList")
  if (!is.null( cached.iter )) checkPtrType(cached.iter, "PangoAttrIterator")

  w <- .RGtkCall("S_pango_itemize_with_base_dir", context, base.dir, text, start.index, length, attrs, cached.iter)

  return(w)
} 


pangoCoverageNew <-
function()
{
  

  w <- .RGtkCall("S_pango_coverage_new")

  return(w)
} 


pangoCoverageCopy <-
function(object)
{
  checkPtrType(object, "PangoCoverage")

  w <- .RGtkCall("S_pango_coverage_copy", object)

  return(w)
} 


pangoCoverageGet <-
function(object, index)
{
  checkPtrType(object, "PangoCoverage")
  index <- as.integer(index)

  w <- .RGtkCall("S_pango_coverage_get", object, index)

  return(w)
} 


pangoCoverageSet <-
function(object, index, level)
{
  checkPtrType(object, "PangoCoverage")
  index <- as.integer(index)
  

  w <- .RGtkCall("S_pango_coverage_set", object, index, level)

  return(invisible(w))
} 


pangoCoverageMax <-
function(object, other)
{
  checkPtrType(object, "PangoCoverage")
  checkPtrType(other, "PangoCoverage")

  w <- .RGtkCall("S_pango_coverage_max", object, other)

  return(invisible(w))
} 


pangoCoverageToBytes <-
function(object)
{
  checkPtrType(object, "PangoCoverage")

  w <- .RGtkCall("S_pango_coverage_to_bytes", object)

  return(invisible(w))
} 


pangoCoverageFromBytes <-
function(bytes)
{
  bytes <- as.list(as.raw(bytes))

  w <- .RGtkCall("S_pango_coverage_from_bytes", bytes)

  return(w)
} 


pangoFontDescriptionNew <-
function()
{
  

  w <- .RGtkCall("S_pango_font_description_new")

  return(w)
} 


pangoFontDescriptionCopy <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_copy", object)

  return(w)
} 


pangoFontDescriptionCopyStatic <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_copy_static", object)

  return(w)
} 


pangoFontDescriptionHash <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_hash", object)

  return(w)
} 


pangoFontDescriptionEqual <-
function(object, desc2)
{
  checkPtrType(object, "PangoFontDescription")
  checkPtrType(desc2, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_equal", object, desc2)

  return(w)
} 


pangoFontDescriptionSetFamily <-
function(object, family)
{
  checkPtrType(object, "PangoFontDescription")
  family <- as.character(family)

  w <- .RGtkCall("S_pango_font_description_set_family", object, family)

  return(invisible(w))
} 


pangoFontDescriptionSetFamilyStatic <-
function(object, family)
{
  checkPtrType(object, "PangoFontDescription")
  family <- as.character(family)

  w <- .RGtkCall("S_pango_font_description_set_family_static", object, family)

  return(invisible(w))
} 


pangoFontDescriptionGetFamily <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_get_family", object)

  return(w)
} 


pangoFontDescriptionSetStyle <-
function(object, style)
{
  checkPtrType(object, "PangoFontDescription")
  

  w <- .RGtkCall("S_pango_font_description_set_style", object, style)

  return(invisible(w))
} 


pangoFontDescriptionGetStyle <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_get_style", object)

  return(w)
} 


pangoFontDescriptionSetVariant <-
function(object, variant)
{
  checkPtrType(object, "PangoFontDescription")
  

  w <- .RGtkCall("S_pango_font_description_set_variant", object, variant)

  return(invisible(w))
} 


pangoFontDescriptionGetVariant <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_get_variant", object)

  return(w)
} 


pangoFontDescriptionSetWeight <-
function(object, weight)
{
  checkPtrType(object, "PangoFontDescription")
  

  w <- .RGtkCall("S_pango_font_description_set_weight", object, weight)

  return(invisible(w))
} 


pangoFontDescriptionGetWeight <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_get_weight", object)

  return(w)
} 


pangoFontDescriptionSetStretch <-
function(object, stretch)
{
  checkPtrType(object, "PangoFontDescription")
  

  w <- .RGtkCall("S_pango_font_description_set_stretch", object, stretch)

  return(invisible(w))
} 


pangoFontDescriptionGetStretch <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_get_stretch", object)

  return(w)
} 


pangoFontDescriptionSetAbsoluteSize <-
function(object, size)
{
  checkPtrType(object, "PangoFontDescription")
  size <- as.numeric(size)

  w <- .RGtkCall("S_pango_font_description_set_absolute_size", object, size)

  return(invisible(w))
} 


pangoFontDescriptionGetSizeIsAbsolute <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_get_size_is_absolute", object)

  return(w)
} 


pangoFontDescriptionSetSize <-
function(object, size)
{
  checkPtrType(object, "PangoFontDescription")
  size <- as.integer(size)

  w <- .RGtkCall("S_pango_font_description_set_size", object, size)

  return(invisible(w))
} 


pangoFontDescriptionGetSize <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_get_size", object)

  return(w)
} 


pangoFontDescriptionGetSetFields <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_get_set_fields", object)

  return(w)
} 


pangoFontDescriptionUnsetFields <-
function(object, to.unset)
{
  checkPtrType(object, "PangoFontDescription")
  

  w <- .RGtkCall("S_pango_font_description_unset_fields", object, to.unset)

  return(invisible(w))
} 


pangoFontDescriptionMerge <-
function(object, desc.to.merge, replace.existing)
{
  checkPtrType(object, "PangoFontDescription")
  checkPtrType(desc.to.merge, "PangoFontDescription")
  replace.existing <- as.logical(replace.existing)

  w <- .RGtkCall("S_pango_font_description_merge", object, desc.to.merge, replace.existing)

  return(invisible(w))
} 


pangoFontDescriptionBetterMatch <-
function(object, old.match = NULL, new.match)
{
  checkPtrType(object, "PangoFontDescription")
  if (!is.null( old.match )) checkPtrType(old.match, "PangoFontDescription")
  checkPtrType(new.match, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_better_match", object, old.match, new.match)

  return(w)
} 


pangoFontDescriptionFromString <-
function(str)
{
  str <- as.character(str)

  w <- .RGtkCall("S_pango_font_description_from_string", str)

  return(w)
} 


pangoFontDescriptionToString <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_to_string", object)

  return(w)
} 


pangoFontDescriptionToFilename <-
function(object)
{
  checkPtrType(object, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_description_to_filename", object)

  return(w)
} 


pangoFontMetricsGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_font_metrics_get_type")

  return(w)
} 


pangoFontMetricsGetAscent <-
function(object)
{
  checkPtrType(object, "PangoFontMetrics")

  w <- .RGtkCall("S_pango_font_metrics_get_ascent", object)

  return(w)
} 


pangoFontMetricsGetDescent <-
function(object)
{
  checkPtrType(object, "PangoFontMetrics")

  w <- .RGtkCall("S_pango_font_metrics_get_descent", object)

  return(w)
} 


pangoFontMetricsGetApproximateCharWidth <-
function(object)
{
  checkPtrType(object, "PangoFontMetrics")

  w <- .RGtkCall("S_pango_font_metrics_get_approximate_char_width", object)

  return(w)
} 


pangoFontMetricsGetApproximateDigitWidth <-
function(object)
{
  checkPtrType(object, "PangoFontMetrics")

  w <- .RGtkCall("S_pango_font_metrics_get_approximate_digit_width", object)

  return(w)
} 


pangoFontMetricsGetStrikethroughPosition <-
function(object)
{
  checkPtrType(object, "PangoFontMetrics")

  w <- .RGtkCall("S_pango_font_metrics_get_strikethrough_position", object)

  return(w)
} 


pangoFontMetricsGetStrikethroughThickness <-
function(object)
{
  checkPtrType(object, "PangoFontMetrics")

  w <- .RGtkCall("S_pango_font_metrics_get_strikethrough_thickness", object)

  return(w)
} 


pangoFontMetricsGetUnderlinePosition <-
function(object)
{
  checkPtrType(object, "PangoFontMetrics")

  w <- .RGtkCall("S_pango_font_metrics_get_underline_position", object)

  return(w)
} 


pangoFontMetricsGetUnderlineThickness <-
function(object)
{
  checkPtrType(object, "PangoFontMetrics")

  w <- .RGtkCall("S_pango_font_metrics_get_underline_thickness", object)

  return(w)
} 


pangoFontFamilyGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_font_family_get_type")

  return(w)
} 


pangoFontFamilyListFaces <-
function(object)
{
  checkPtrType(object, "PangoFontFamily")

  w <- .RGtkCall("S_pango_font_family_list_faces", object)

  return(invisible(w))
} 


pangoFontFamilyGetName <-
function(object)
{
  checkPtrType(object, "PangoFontFamily")

  w <- .RGtkCall("S_pango_font_family_get_name", object)

  return(w)
} 


pangoFontFamilyIsMonospace <-
function(object)
{
  checkPtrType(object, "PangoFontFamily")

  w <- .RGtkCall("S_pango_font_family_is_monospace", object)

  return(w)
} 


pangoFontFaceGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_font_face_get_type")

  return(w)
} 


pangoFontFaceDescribe <-
function(object)
{
  checkPtrType(object, "PangoFontFace")

  w <- .RGtkCall("S_pango_font_face_describe", object)

  return(w)
} 


pangoFontFaceGetFaceName <-
function(object)
{
  checkPtrType(object, "PangoFontFace")

  w <- .RGtkCall("S_pango_font_face_get_face_name", object)

  return(w)
} 


pangoFontFaceListSizes <-
function(object)
{
  checkPtrType(object, "PangoFontFace")

  w <- .RGtkCall("S_pango_font_face_list_sizes", object)

  return(invisible(w))
} 


pangoFontGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_font_get_type")

  return(w)
} 


pangoFontDescribe <-
function(object)
{
  checkPtrType(object, "PangoFont")

  w <- .RGtkCall("S_pango_font_describe", object)

  return(w)
} 


pangoFontGetCoverage <-
function(object, language)
{
  checkPtrType(object, "PangoFont")
  checkPtrType(language, "PangoLanguage")

  w <- .RGtkCall("S_pango_font_get_coverage", object, language)

  return(w)
} 


pangoFontGetMetrics <-
function(object, language = NULL)
{
  checkPtrType(object, "PangoFont")
  if (!is.null( language )) checkPtrType(language, "PangoLanguage")

  w <- .RGtkCall("S_pango_font_get_metrics", object, language)

  return(w)
} 


pangoFontGetGlyphExtents <-
function(object, glyph)
{
  checkPtrType(object, "PangoFont")
  glyph <- as.numeric(glyph)

  w <- .RGtkCall("S_pango_font_get_glyph_extents", object, glyph)

  return(invisible(w))
} 


pangoFontGetFontMap <-
function(object)
{
  checkPtrType(object, "PangoFont")

  w <- .RGtkCall("S_pango_font_get_font_map", object)

  return(w)
} 


pangoFontMapLoadFont <-
function(object, context, desc)
{
  checkPtrType(object, "PangoFontMap")
  checkPtrType(context, "PangoContext")
  checkPtrType(desc, "PangoFontDescription")

  w <- .RGtkCall("S_pango_font_map_load_font", object, context, desc)

  return(w)
} 


pangoFontMapLoadFontset <-
function(object, context, desc, language)
{
  checkPtrType(object, "PangoFontMap")
  checkPtrType(context, "PangoContext")
  checkPtrType(desc, "PangoFontDescription")
  checkPtrType(language, "PangoLanguage")

  w <- .RGtkCall("S_pango_font_map_load_fontset", object, context, desc, language)

  return(w)
} 


pangoFontMapListFamilies <-
function(object)
{
  checkPtrType(object, "PangoFontMap")

  w <- .RGtkCall("S_pango_font_map_list_families", object)

  return(invisible(w))
} 


pangoFontsetGetFont <-
function(object, wc)
{
  checkPtrType(object, "PangoFontset")
  wc <- as.numeric(wc)

  w <- .RGtkCall("S_pango_fontset_get_font", object, wc)

  return(w)
} 


pangoFontsetGetMetrics <-
function(object)
{
  checkPtrType(object, "PangoFontset")

  w <- .RGtkCall("S_pango_fontset_get_metrics", object)

  return(w)
} 


pangoFontsetForeach <-
function(object, func, data)
{
  checkPtrType(object, "PangoFontset")
  func <- as.function(func)
  

  w <- .RGtkCall("S_pango_fontset_foreach", object, func, data)

  return(invisible(w))
} 


pangoGlyphStringNew <-
function()
{
  

  w <- .RGtkCall("S_pango_glyph_string_new")

  return(w)
} 


pangoGlyphStringSetSize <-
function(object, new.len)
{
  checkPtrType(object, "PangoGlyphString")
  new.len <- as.integer(new.len)

  w <- .RGtkCall("S_pango_glyph_string_set_size", object, new.len)

  return(invisible(w))
} 


pangoGlyphStringGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_glyph_string_get_type")

  return(w)
} 


pangoGlyphStringCopy <-
function(object)
{
  checkPtrType(object, "PangoGlyphString")

  w <- .RGtkCall("S_pango_glyph_string_copy", object)

  return(w)
} 


pangoGlyphStringExtents <-
function(object, font)
{
  checkPtrType(object, "PangoGlyphString")
  checkPtrType(font, "PangoFont")

  w <- .RGtkCall("S_pango_glyph_string_extents", object, font)

  return(invisible(w))
} 


pangoGlyphStringExtentsRange <-
function(object, start, end, font)
{
  checkPtrType(object, "PangoGlyphString")
  start <- as.integer(start)
  end <- as.integer(end)
  checkPtrType(font, "PangoFont")

  w <- .RGtkCall("S_pango_glyph_string_extents_range", object, start, end, font)

  return(invisible(w))
} 


pangoGlyphItemSplit <-
function(orig, text, split.index)
{
  checkPtrType(orig, "PangoGlyphItem")
  text <- as.character(text)
  split.index <- as.integer(split.index)

  w <- .RGtkCall("S_pango_glyph_item_split", orig, text, split.index)

  return(w)
} 


pangoGlyphItemApplyAttrs <-
function(glyph.item, text, list)
{
  checkPtrType(glyph.item, "PangoGlyphItem")
  text <- as.character(text)
  checkPtrType(list, "PangoAttrList")

  w <- .RGtkCall("S_pango_glyph_item_apply_attrs", glyph.item, text, list)

  return(w)
} 


pangoGlyphItemLetterSpace <-
function(glyph.item, text, log.attrs, letter.spacing)
{
  checkPtrType(glyph.item, "PangoGlyphItem")
  text <- as.character(text)
  checkPtrType(log.attrs, "PangoLogAttr")
  letter.spacing <- as.integer(letter.spacing)

  w <- .RGtkCall("S_pango_glyph_item_letter_space", glyph.item, text, log.attrs, letter.spacing)

  return(w)
} 


pangoMatrixTranslate <-
function(object, tx, ty)
{
  checkPtrType(object, "PangoMatrix")
  tx <- as.numeric(tx)
  ty <- as.numeric(ty)

  w <- .RGtkCall("S_pango_matrix_translate", object, tx, ty)

  return(invisible(w))
} 


pangoMatrixScale <-
function(object, scale.x, scale.y)
{
  checkPtrType(object, "PangoMatrix")
  scale.x <- as.numeric(scale.x)
  scale.y <- as.numeric(scale.y)

  w <- .RGtkCall("S_pango_matrix_scale", object, scale.x, scale.y)

  return(invisible(w))
} 


pangoMatrixRotate <-
function(object, degrees)
{
  checkPtrType(object, "PangoMatrix")
  degrees <- as.numeric(degrees)

  w <- .RGtkCall("S_pango_matrix_rotate", object, degrees)

  return(invisible(w))
} 


pangoMatrixConcat <-
function(object, new.matrix)
{
  checkPtrType(object, "PangoMatrix")
  checkPtrType(new.matrix, "PangoMatrix")

  w <- .RGtkCall("S_pango_matrix_concat", object, new.matrix)

  return(invisible(w))
} 


pangoMatrixCopy <-
function(object)
{
  checkPtrType(object, "PangoMatrix")

  w <- .RGtkCall("S_pango_matrix_copy", object)

  return(w)
} 


pangoItemCopy <-
function(item)
{
  checkPtrType(item, "PangoItem")

  w <- .RGtkCall("S_pango_item_copy", item)

  return(w)
} 


pangoItemNew <-
function()
{
  

  w <- .RGtkCall("S_pango_item_new")

  return(w)
} 


pangoItemSplit <-
function(orig, split.index, split.offset)
{
  checkPtrType(orig, "PangoItem")
  split.index <- as.integer(split.index)
  split.offset <- as.integer(split.offset)

  w <- .RGtkCall("S_pango_item_split", orig, split.index, split.offset)

  return(w)
} 


pangoLayoutGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_layout_get_type")

  return(w)
} 


pangoLayoutNew <-
function(context)
{
  checkPtrType(context, "PangoContext")

  w <- .RGtkCall("S_pango_layout_new", context)

  return(w)
} 


pangoLayoutCopy <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_copy", object)

  return(w)
} 


pangoLayoutGetContext <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_context", object)

  return(w)
} 


pangoLayoutSetAttributes <-
function(object, attrs)
{
  checkPtrType(object, "PangoLayout")
  checkPtrType(attrs, "PangoAttrList")

  w <- .RGtkCall("S_pango_layout_set_attributes", object, attrs)

  return(invisible(w))
} 


pangoLayoutGetAttributes <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_attributes", object)

  return(w)
} 


pangoLayoutSetText <-
function(object, text, length = -1)
{
  checkPtrType(object, "PangoLayout")
  text <- as.character(text)
  length <- as.integer(length)

  w <- .RGtkCall("S_pango_layout_set_text", object, text, length)

  return(invisible(w))
} 


pangoLayoutGetText <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_text", object)

  return(w)
} 


pangoLayoutSetMarkup <-
function(object, markup, length = -1)
{
  checkPtrType(object, "PangoLayout")
  markup <- as.character(markup)
  length <- as.integer(length)

  w <- .RGtkCall("S_pango_layout_set_markup", object, markup, length)

  return(invisible(w))
} 


pangoLayoutSetFontDescription <-
function(object, desc = NULL)
{
  checkPtrType(object, "PangoLayout")
  if (!is.null( desc )) checkPtrType(desc, "PangoFontDescription")

  w <- .RGtkCall("S_pango_layout_set_font_description", object, desc)

  return(invisible(w))
} 


pangoLayoutGetFontDescription <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_font_description", object)

  return(w)
} 


pangoLayoutSetWidth <-
function(object, width)
{
  checkPtrType(object, "PangoLayout")
  width <- as.integer(width)

  w <- .RGtkCall("S_pango_layout_set_width", object, width)

  return(invisible(w))
} 


pangoLayoutGetWidth <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_width", object)

  return(w)
} 


pangoLayoutSetWrap <-
function(object, wrap)
{
  checkPtrType(object, "PangoLayout")
  

  w <- .RGtkCall("S_pango_layout_set_wrap", object, wrap)

  return(invisible(w))
} 


pangoLayoutGetWrap <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_wrap", object)

  return(w)
} 


pangoLayoutSetIndent <-
function(object, indent)
{
  checkPtrType(object, "PangoLayout")
  indent <- as.integer(indent)

  w <- .RGtkCall("S_pango_layout_set_indent", object, indent)

  return(invisible(w))
} 


pangoLayoutGetIndent <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_indent", object)

  return(w)
} 


pangoLayoutSetSpacing <-
function(object, spacing)
{
  checkPtrType(object, "PangoLayout")
  spacing <- as.integer(spacing)

  w <- .RGtkCall("S_pango_layout_set_spacing", object, spacing)

  return(invisible(w))
} 


pangoLayoutGetSpacing <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_spacing", object)

  return(w)
} 


pangoLayoutSetJustify <-
function(object, justify)
{
  checkPtrType(object, "PangoLayout")
  justify <- as.logical(justify)

  w <- .RGtkCall("S_pango_layout_set_justify", object, justify)

  return(invisible(w))
} 


pangoLayoutGetJustify <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_justify", object)

  return(w)
} 


pangoLayoutSetAutoDir <-
function(object, auto.dir)
{
  checkPtrType(object, "PangoLayout")
  auto.dir <- as.logical(auto.dir)

  w <- .RGtkCall("S_pango_layout_set_auto_dir", object, auto.dir)

  return(invisible(w))
} 


pangoLayoutGetAutoDir <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_auto_dir", object)

  return(w)
} 


pangoLayoutSetAlignment <-
function(object, alignment)
{
  checkPtrType(object, "PangoLayout")
  

  w <- .RGtkCall("S_pango_layout_set_alignment", object, alignment)

  return(invisible(w))
} 


pangoLayoutGetAlignment <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_alignment", object)

  return(w)
} 


pangoLayoutSetTabs <-
function(object, tabs = NULL)
{
  checkPtrType(object, "PangoLayout")
  if (!is.null( tabs )) checkPtrType(tabs, "PangoTabArray")

  w <- .RGtkCall("S_pango_layout_set_tabs", object, tabs)

  return(invisible(w))
} 


pangoLayoutGetTabs <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_tabs", object)

  return(w)
} 


pangoLayoutSetSingleParagraphMode <-
function(object, setting)
{
  checkPtrType(object, "PangoLayout")
  setting <- as.logical(setting)

  w <- .RGtkCall("S_pango_layout_set_single_paragraph_mode", object, setting)

  return(invisible(w))
} 


pangoLayoutGetSingleParagraphMode <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_single_paragraph_mode", object)

  return(w)
} 


pangoLayoutSetEllipsize <-
function(object, ellipsize)
{
  checkPtrType(object, "PangoLayout")
  

  w <- .RGtkCall("S_pango_layout_set_ellipsize", object, ellipsize)

  return(invisible(w))
} 


pangoLayoutGetEllipsize <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_ellipsize", object)

  return(w)
} 


pangoLayoutContextChanged <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_context_changed", object)

  return(invisible(w))
} 


pangoLayoutGetLogAttrs <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_log_attrs", object)

  return(invisible(w))
} 


pangoLayoutIndexToPos <-
function(object, index, pos)
{
  checkPtrType(object, "PangoLayout")
  index <- as.integer(index)
  pos <- as.PangoRectangle(pos)

  w <- .RGtkCall("S_pango_layout_index_to_pos", object, index, pos)

  return(invisible(w))
} 


pangoLayoutGetCursorPos <-
function(object, index)
{
  checkPtrType(object, "PangoLayout")
  index <- as.integer(index)

  w <- .RGtkCall("S_pango_layout_get_cursor_pos", object, index)

  return(invisible(w))
} 


pangoLayoutMoveCursorVisually <-
function(object, strong, old.index, old.trailing, direction)
{
  checkPtrType(object, "PangoLayout")
  strong <- as.logical(strong)
  old.index <- as.integer(old.index)
  old.trailing <- as.integer(old.trailing)
  direction <- as.integer(direction)

  w <- .RGtkCall("S_pango_layout_move_cursor_visually", object, strong, old.index, old.trailing, direction)

  return(invisible(w))
} 


pangoLayoutXyToIndex <-
function(object, x, y)
{
  checkPtrType(object, "PangoLayout")
  x <- as.integer(x)
  y <- as.integer(y)

  w <- .RGtkCall("S_pango_layout_xy_to_index", object, x, y)

  return(w)
} 


pangoLayoutGetExtents <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_extents", object)

  return(invisible(w))
} 


pangoLayoutGetPixelExtents <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_pixel_extents", object)

  return(invisible(w))
} 


pangoLayoutGetSize <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_size", object)

  return(invisible(w))
} 


pangoLayoutGetPixelSize <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_pixel_size", object)

  return(invisible(w))
} 


pangoLayoutGetLineCount <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_line_count", object)

  return(w)
} 


pangoLayoutGetLine <-
function(object, line)
{
  checkPtrType(object, "PangoLayout")
  line <- as.integer(line)

  w <- .RGtkCall("S_pango_layout_get_line", object, line)

  return(w)
} 


pangoLayoutGetLines <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_lines", object)

  return(w)
} 


pangoLayoutLineXToIndex <-
function(object, x.pos)
{
  checkPtrType(object, "PangoLayoutLine")
  x.pos <- as.integer(x.pos)

  w <- .RGtkCall("S_pango_layout_line_x_to_index", object, x.pos)

  return(w)
} 


pangoLayoutLineIndexToX <-
function(object, index, trailing)
{
  checkPtrType(object, "PangoLayoutLine")
  index <- as.integer(index)
  trailing <- as.logical(trailing)

  w <- .RGtkCall("S_pango_layout_line_index_to_x", object, index, trailing)

  return(w)
} 


pangoLayoutLineGetXRanges <-
function(object, start.index, end.index)
{
  checkPtrType(object, "PangoLayoutLine")
  start.index <- as.integer(start.index)
  end.index <- as.integer(end.index)

  w <- .RGtkCall("S_pango_layout_line_get_x_ranges", object, start.index, end.index)

  return(invisible(w))
} 


pangoLayoutLineGetExtents <-
function(object)
{
  checkPtrType(object, "PangoLayoutLine")

  w <- .RGtkCall("S_pango_layout_line_get_extents", object)

  return(invisible(w))
} 


pangoLayoutLineGetPixelExtents <-
function(object)
{
  checkPtrType(object, "PangoLayoutLine")

  w <- .RGtkCall("S_pango_layout_line_get_pixel_extents", object)

  return(invisible(w))
} 


pangoLayoutIterGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_layout_iter_get_type")

  return(w)
} 


pangoLayoutGetIter <-
function(object)
{
  checkPtrType(object, "PangoLayout")

  w <- .RGtkCall("S_pango_layout_get_iter", object)

  return(w)
} 


pangoLayoutIterGetIndex <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_get_index", object)

  return(w)
} 


pangoLayoutIterGetRun <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_get_run", object)

  return(w)
} 


pangoLayoutIterGetLine <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_get_line", object)

  return(w)
} 


pangoLayoutIterAtLastLine <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_at_last_line", object)

  return(w)
} 


pangoLayoutIterNextChar <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_next_char", object)

  return(w)
} 


pangoLayoutIterNextCluster <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_next_cluster", object)

  return(w)
} 


pangoLayoutIterNextRun <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_next_run", object)

  return(w)
} 


pangoLayoutIterNextLine <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_next_line", object)

  return(w)
} 


pangoLayoutIterGetCharExtents <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_get_char_extents", object)

  return(w)
} 


pangoLayoutIterGetClusterExtents <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_get_cluster_extents", object)

  return(invisible(w))
} 


pangoLayoutIterGetRunExtents <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_get_run_extents", object)

  return(invisible(w))
} 


pangoLayoutIterGetLineExtents <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_get_line_extents", object)

  return(invisible(w))
} 


pangoLayoutIterGetLineYrange <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_get_line_yrange", object)

  return(invisible(w))
} 


pangoLayoutIterGetLayoutExtents <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_get_layout_extents", object)

  return(invisible(w))
} 


pangoLayoutIterGetBaseline <-
function(object)
{
  checkPtrType(object, "PangoLayoutIter")

  w <- .RGtkCall("S_pango_layout_iter_get_baseline", object)

  return(w)
} 


pangoRendererGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_renderer_get_type")

  return(w)
} 


pangoRendererDrawLayout <-
function(object, layout, x, y)
{
  checkPtrType(object, "PangoRenderer")
  checkPtrType(layout, "PangoLayout")
  x <- as.integer(x)
  y <- as.integer(y)

  w <- .RGtkCall("S_pango_renderer_draw_layout", object, layout, x, y)

  return(invisible(w))
} 


pangoRendererDrawLayoutLine <-
function(object, line, x, y)
{
  checkPtrType(object, "PangoRenderer")
  checkPtrType(line, "PangoLayoutLine")
  x <- as.integer(x)
  y <- as.integer(y)

  w <- .RGtkCall("S_pango_renderer_draw_layout_line", object, line, x, y)

  return(invisible(w))
} 


pangoRendererDrawGlyphs <-
function(object, font, glyphs, x, y)
{
  checkPtrType(object, "PangoRenderer")
  checkPtrType(font, "PangoFont")
  checkPtrType(glyphs, "PangoGlyphString")
  x <- as.integer(x)
  y <- as.integer(y)

  w <- .RGtkCall("S_pango_renderer_draw_glyphs", object, font, glyphs, x, y)

  return(invisible(w))
} 


pangoRendererDrawRectangle <-
function(object, part, x, y, width, height)
{
  checkPtrType(object, "PangoRenderer")
  
  x <- as.integer(x)
  y <- as.integer(y)
  width <- as.integer(width)
  height <- as.integer(height)

  w <- .RGtkCall("S_pango_renderer_draw_rectangle", object, part, x, y, width, height)

  return(invisible(w))
} 


pangoRendererDrawErrorUnderline <-
function(object, x, y, width, height)
{
  checkPtrType(object, "PangoRenderer")
  x <- as.integer(x)
  y <- as.integer(y)
  width <- as.integer(width)
  height <- as.integer(height)

  w <- .RGtkCall("S_pango_renderer_draw_error_underline", object, x, y, width, height)

  return(invisible(w))
} 


pangoRendererDrawTrapezoid <-
function(object, part, y1., x11, x21, y2, x12, x22)
{
  checkPtrType(object, "PangoRenderer")
  
  y1. <- as.numeric(y1.)
  x11 <- as.numeric(x11)
  x21 <- as.numeric(x21)
  y2 <- as.numeric(y2)
  x12 <- as.numeric(x12)
  x22 <- as.numeric(x22)

  w <- .RGtkCall("S_pango_renderer_draw_trapezoid", object, part, y1., x11, x21, y2, x12, x22)

  return(invisible(w))
} 


pangoRendererDrawGlyph <-
function(object, font, glyph, x, y)
{
  checkPtrType(object, "PangoRenderer")
  checkPtrType(font, "PangoFont")
  glyph <- as.numeric(glyph)
  x <- as.numeric(x)
  y <- as.numeric(y)

  w <- .RGtkCall("S_pango_renderer_draw_glyph", object, font, glyph, x, y)

  return(invisible(w))
} 


pangoRendererActivate <-
function(object)
{
  checkPtrType(object, "PangoRenderer")

  w <- .RGtkCall("S_pango_renderer_activate", object)

  return(invisible(w))
} 


pangoRendererDeactivate <-
function(object)
{
  checkPtrType(object, "PangoRenderer")

  w <- .RGtkCall("S_pango_renderer_deactivate", object)

  return(invisible(w))
} 


pangoRendererPartChanged <-
function(object, part)
{
  checkPtrType(object, "PangoRenderer")
  

  w <- .RGtkCall("S_pango_renderer_part_changed", object, part)

  return(invisible(w))
} 


pangoRendererSetColor <-
function(object, part, color)
{
  checkPtrType(object, "PangoRenderer")
  
  checkPtrType(color, "PangoColor")

  w <- .RGtkCall("S_pango_renderer_set_color", object, part, color)

  return(invisible(w))
} 


pangoRendererGetColor <-
function(object, part)
{
  checkPtrType(object, "PangoRenderer")
  

  w <- .RGtkCall("S_pango_renderer_get_color", object, part)

  return(w)
} 


pangoRendererSetMatrix <-
function(object, matrix)
{
  checkPtrType(object, "PangoRenderer")
  checkPtrType(matrix, "PangoMatrix")

  w <- .RGtkCall("S_pango_renderer_set_matrix", object, matrix)

  return(invisible(w))
} 


pangoRendererGetMatrix <-
function(object)
{
  checkPtrType(object, "PangoRenderer")

  w <- .RGtkCall("S_pango_renderer_get_matrix", object)

  return(w)
} 


pangoTabArrayNew <-
function(initial.size, positions.in.pixels)
{
  initial.size <- as.integer(initial.size)
  positions.in.pixels <- as.logical(positions.in.pixels)

  w <- .RGtkCall("S_pango_tab_array_new", initial.size, positions.in.pixels)

  return(w)
} 


pangoTabArrayGetType <-
function()
{
  

  w <- .RGtkCall("S_pango_tab_array_get_type")

  return(w)
} 


pangoTabArrayCopy <-
function(object)
{
  checkPtrType(object, "PangoTabArray")

  w <- .RGtkCall("S_pango_tab_array_copy", object)

  return(w)
} 


pangoTabArrayGetSize <-
function(object)
{
  checkPtrType(object, "PangoTabArray")

  w <- .RGtkCall("S_pango_tab_array_get_size", object)

  return(w)
} 


pangoTabArrayResize <-
function(object, new.size)
{
  checkPtrType(object, "PangoTabArray")
  new.size <- as.integer(new.size)

  w <- .RGtkCall("S_pango_tab_array_resize", object, new.size)

  return(invisible(w))
} 


pangoTabArraySetTab <-
function(object, tab.index, alignment, location)
{
  checkPtrType(object, "PangoTabArray")
  tab.index <- as.integer(tab.index)
  
  location <- as.integer(location)

  w <- .RGtkCall("S_pango_tab_array_set_tab", object, tab.index, alignment, location)

  return(invisible(w))
} 


pangoTabArrayGetTab <-
function(object, tab.index)
{
  checkPtrType(object, "PangoTabArray")
  tab.index <- as.integer(tab.index)

  w <- .RGtkCall("S_pango_tab_array_get_tab", object, tab.index)

  return(invisible(w))
} 


pangoTabArrayGetTabs <-
function(object)
{
  checkPtrType(object, "PangoTabArray")

  w <- .RGtkCall("S_pango_tab_array_get_tabs", object)

  return(invisible(w))
} 


pangoTabArrayGetPositionsInPixels <-
function(object)
{
  checkPtrType(object, "PangoTabArray")

  w <- .RGtkCall("S_pango_tab_array_get_positions_in_pixels", object)

  return(w)
} 


pangoLanguageFromString <-
function(language)
{
  language <- as.character(language)

  w <- .RGtkCall("S_pango_language_from_string", language)

  return(w)
} 


pangoLanguageMatches <-
function(object, range.list)
{
  checkPtrType(object, "PangoLanguage")
  range.list <- as.character(range.list)

  w <- .RGtkCall("S_pango_language_matches", object, range.list)

  return(w)
} 


pangoLanguageToString <-
function(object)
{
  checkPtrType(object, "PangoLanguage")

  w <- .RGtkCall("S_pango_language_to_string", object)

  return(w)
} 


pangoPixels <-
function(size)
{
  size <- as.integer(size)

  w <- .RGtkCall("S_PANGO_PIXELS", size)

  return(w)
} 


pangoAscent <-
function(rect)
{
  rect <- as.PangoRectangle(rect)

  w <- .RGtkCall("S_PANGO_ASCENT", rect)

  return(w)
} 


pangoDescent <-
function(rect)
{
  rect <- as.PangoRectangle(rect)

  w <- .RGtkCall("S_PANGO_DESCENT", rect)

  return(w)
} 


pangoLbearing <-
function(rect)
{
  rect <- as.PangoRectangle(rect)

  w <- .RGtkCall("S_PANGO_LBEARING", rect)

  return(w)
} 


pangoRbearing <-
function(rect)
{
  rect <- as.PangoRectangle(rect)

  w <- .RGtkCall("S_PANGO_RBEARING", rect)

  return(w)
} 


pangoCairoShowErrorUnderline <-
function(cr, x, y, width, height)
{
  checkPtrType(cr, "Cairo")
  x <- as.numeric(x)
  y <- as.numeric(y)
  width <- as.numeric(width)
  height <- as.numeric(height)

  w <- .RGtkCall("S_pango_cairo_show_error_underline", cr, x, y, width, height)

  return(w)
} 


pangoCairoErrorUnderlinePath <-
function(cr, x, y, width, height)
{
  checkPtrType(cr, "Cairo")
  x <- as.numeric(x)
  y <- as.numeric(y)
  width <- as.numeric(width)
  height <- as.numeric(height)

  w <- .RGtkCall("S_pango_cairo_error_underline_path", cr, x, y, width, height)

  return(w)
} 


pangoFontDescribeWithAbsoluteSize <-
function(object)
{
  checkPtrType(object, "PangoFont")

  w <- .RGtkCall("S_pango_font_describe_with_absolute_size", object)

  return(w)
} 


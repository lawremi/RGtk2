
pangoColorGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_color_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoColorCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoColor")

	w <- .RGtkCall("S_pango_color_copy", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoColorFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoColor")

	w <- .RGtkCall("S_pango_color_free", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoColorParse <-
function(spec, .flush = TRUE, .depwarn = TRUE)
{
	spec <- as.character(spec)

	w <- .RGtkCall("S_pango_color_parse", spec, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrTypeRegister <-
function(name, .flush = TRUE, .depwarn = TRUE)
{
	name <- as.character(name)

	w <- .RGtkCall("S_pango_attr_type_register", name, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttributeCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttribute")

	w <- .RGtkCall("S_pango_attribute_copy", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttributeDestroy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttribute")

	w <- .RGtkCall("S_pango_attribute_destroy", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoAttributeEqual <-
function(object, attr2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttribute")
	checkPtrType(attr2, "PangoAttribute")

	w <- .RGtkCall("S_pango_attribute_equal", object, attr2, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrLanguageNew <-
function(language, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(language, "PangoLanguage")

	w <- .RGtkCall("S_pango_attr_language_new", language, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrFamilyNew <-
function(family, .flush = TRUE, .depwarn = TRUE)
{
	family <- as.character(family)

	w <- .RGtkCall("S_pango_attr_family_new", family, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrForegroundNew <-
function(red, green, blue, .flush = TRUE, .depwarn = TRUE)
{
	red <- as.integer(red)
	green <- as.integer(green)
	blue <- as.integer(blue)

	w <- .RGtkCall("S_pango_attr_foreground_new", red, green, blue, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrBackgroundNew <-
function(red, green, blue, .flush = TRUE, .depwarn = TRUE)
{
	red <- as.integer(red)
	green <- as.integer(green)
	blue <- as.integer(blue)

	w <- .RGtkCall("S_pango_attr_background_new", red, green, blue, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrSizeNew <-
function(size, .flush = TRUE, .depwarn = TRUE)
{
	size <- as.integer(size)

	w <- .RGtkCall("S_pango_attr_size_new", size, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrStyleNew <-
function(style, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_attr_style_new", style, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrWeightNew <-
function(weight, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_attr_weight_new", weight, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrVariantNew <-
function(variant, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_attr_variant_new", variant, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrStretchNew <-
function(stretch, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_attr_stretch_new", stretch, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrFontDescNew <-
function(desc, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(desc, "PangoFontDescription")

	w <- .RGtkCall("S_pango_attr_font_desc_new", desc, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrUnderlineNew <-
function(underline, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_attr_underline_new", underline, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrStrikethroughNew <-
function(strikethrough, .flush = TRUE, .depwarn = TRUE)
{
	strikethrough <- as.logical(strikethrough)

	w <- .RGtkCall("S_pango_attr_strikethrough_new", strikethrough, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrRiseNew <-
function(rise, .flush = TRUE, .depwarn = TRUE)
{
	rise <- as.integer(rise)

	w <- .RGtkCall("S_pango_attr_rise_new", rise, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrShapeNew <-
function(ink.rect, logical.rect, .flush = TRUE, .depwarn = TRUE)
{
	ink.rect <- as.PangoRectangle(ink.rect)
	logical.rect <- as.PangoRectangle(logical.rect)

	w <- .RGtkCall("S_pango_attr_shape_new", ink.rect, logical.rect, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrScaleNew <-
function(scale.factor, .flush = TRUE, .depwarn = TRUE)
{
	scale.factor <- as.numeric(scale.factor)

	w <- .RGtkCall("S_pango_attr_scale_new", scale.factor, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrFallbackNew <-
function(fallback, .flush = TRUE, .depwarn = TRUE)
{
	fallback <- as.logical(fallback)

	w <- .RGtkCall("S_pango_attr_fallback_new", fallback, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrListGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_attr_list_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrListNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_attr_list_new", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrListRef <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrList")

	w <- .RGtkCall("S_pango_attr_list_ref", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoAttrListUnref <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrList")

	w <- .RGtkCall("S_pango_attr_list_unref", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoAttrListCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrList")

	w <- .RGtkCall("S_pango_attr_list_copy", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrListInsert <-
function(object, attr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrList")
	checkPtrType(attr, "PangoAttribute")

	w <- .RGtkCall("S_pango_attr_list_insert", object, attr, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoAttrListInsertBefore <-
function(object, attr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrList")
	checkPtrType(attr, "PangoAttribute")

	w <- .RGtkCall("S_pango_attr_list_insert_before", object, attr, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoAttrListChange <-
function(object, attr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrList")
	checkPtrType(attr, "PangoAttribute")

	w <- .RGtkCall("S_pango_attr_list_change", object, attr, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoAttrListSplice <-
function(object, other, pos, len, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrList")
	checkPtrType(other, "PangoAttrList")
	pos <- as.integer(pos)
	len <- as.integer(len)

	w <- .RGtkCall("S_pango_attr_list_splice", object, other, pos, len, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoAttrListGetIterator <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrList")

	w <- .RGtkCall("S_pango_attr_list_get_iterator", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrListFilter <-
function(object, func, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrList")
	func <- as.function(func)
	

	w <- .RGtkCall("S_pango_attr_list_filter", object, func, data, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrIteratorRange <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrIterator")

	w <- .RGtkCall("S_pango_attr_iterator_range", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoAttrIteratorNext <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrIterator")

	w <- .RGtkCall("S_pango_attr_iterator_next", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrIteratorCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrIterator")

	w <- .RGtkCall("S_pango_attr_iterator_copy", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrIteratorDestroy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrIterator")

	w <- .RGtkCall("S_pango_attr_iterator_destroy", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoAttrIteratorGet <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrIterator")
	

	w <- .RGtkCall("S_pango_attr_iterator_get", object, type, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAttrIteratorGetFont <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrIterator")

	w <- .RGtkCall("S_pango_attr_iterator_get_font", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoAttrIteratorGetAttrs <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoAttrIterator")

	w <- .RGtkCall("S_pango_attr_iterator_get_attrs", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFindParagraphBoundary <-
function(text, length = "-1", .flush = TRUE, .depwarn = TRUE)
{
	text <- as.character(text)
	length <- as.integer(length)

	w <- .RGtkCall("S_pango_find_paragraph_boundary", text, length, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoCairoFontMapGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_cairo_font_map_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoFontMapNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_cairo_font_map_new", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoFontMapGetDefault <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_cairo_font_map_get_default", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoFontMapSetResolution <-
function(object, dpi, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoCairoFontMap")
	dpi <- as.numeric(dpi)

	w <- .RGtkCall("S_pango_cairo_font_map_set_resolution", object, dpi, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoCairoFontMapGetResolution <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoCairoFontMap")

	w <- .RGtkCall("S_pango_cairo_font_map_get_resolution", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoFontMapCreateContext <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoCairoFontMap")

	w <- .RGtkCall("S_pango_cairo_font_map_create_context", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoUpdateContext <-
function(cr, context, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(context, "PangoContext")

	w <- .RGtkCall("S_pango_cairo_update_context", cr, context, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoContextSetFontOptions <-
function(context, options, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(context, "PangoContext")
	checkPtrType(options, "CairoFontOptions")

	w <- .RGtkCall("S_pango_cairo_context_set_font_options", context, options, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoContextGetFontOptions <-
function(context, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(context, "PangoContext")

	w <- .RGtkCall("S_pango_cairo_context_get_font_options", context, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoContextSetResolution <-
function(context, dpi, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(context, "PangoContext")
	dpi <- as.numeric(dpi)

	w <- .RGtkCall("S_pango_cairo_context_set_resolution", context, dpi, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoContextGetResolution <-
function(context, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(context, "PangoContext")

	w <- .RGtkCall("S_pango_cairo_context_get_resolution", context, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoCreateLayout <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_pango_cairo_create_layout", cr, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoUpdateLayout <-
function(cr, layout, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(layout, "PangoLayout")

	w <- .RGtkCall("S_pango_cairo_update_layout", cr, layout, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoShowGlyphString <-
function(cr, font, glyphs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(font, "PangoFont")
	checkPtrType(glyphs, "PangoGlyphString")

	w <- .RGtkCall("S_pango_cairo_show_glyph_string", cr, font, glyphs, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoShowLayoutLine <-
function(cr, line, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(line, "PangoLayoutLine")

	w <- .RGtkCall("S_pango_cairo_show_layout_line", cr, line, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoShowLayout <-
function(cr, layout, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(layout, "PangoLayout")

	w <- .RGtkCall("S_pango_cairo_show_layout", cr, layout, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoGlyphStringPath <-
function(cr, font, glyphs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(font, "PangoFont")
	checkPtrType(glyphs, "PangoGlyphString")

	w <- .RGtkCall("S_pango_cairo_glyph_string_path", cr, font, glyphs, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoLayoutLinePath <-
function(cr, line, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(line, "PangoLayoutLine")

	w <- .RGtkCall("S_pango_cairo_layout_line_path", cr, line, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCairoLayoutPath <-
function(cr, layout, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(layout, "PangoLayout")

	w <- .RGtkCall("S_pango_cairo_layout_path", cr, layout, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoContextSetFontMap <-
function(object, font.map, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")
	checkPtrType(font.map, "PangoFontMap")

	w <- .RGtkCall("S_pango_context_set_font_map", object, font.map, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoContextGetFontMap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")

	w <- .RGtkCall("S_pango_context_get_font_map", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoContextListFamilies <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")

	w <- .RGtkCall("S_pango_context_list_families", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoContextLoadFont <-
function(object, desc, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")
	checkPtrType(desc, "PangoFontDescription")

	w <- .RGtkCall("S_pango_context_load_font", object, desc, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoContextLoadFontset <-
function(object, desc, language, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")
	checkPtrType(desc, "PangoFontDescription")
	checkPtrType(language, "PangoLanguage")

	w <- .RGtkCall("S_pango_context_load_fontset", object, desc, language, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoContextSetMatrix <-
function(object, matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")
	checkPtrType(matrix, "PangoMatrix")

	w <- .RGtkCall("S_pango_context_set_matrix", object, matrix, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoContextGetMetrics <-
function(object, desc, language = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")
	checkPtrType(desc, "PangoFontDescription")
	if (!is.null( language )) checkPtrType(language, "PangoLanguage")

	w <- .RGtkCall("S_pango_context_get_metrics", object, desc, language, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoContextSetFontDescription <-
function(object, desc, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")
	checkPtrType(desc, "PangoFontDescription")

	w <- .RGtkCall("S_pango_context_set_font_description", object, desc, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoContextGetFontDescription <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")

	w <- .RGtkCall("S_pango_context_get_font_description", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoContextGetLanguage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")

	w <- .RGtkCall("S_pango_context_get_language", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoContextSetLanguage <-
function(object, language, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")
	checkPtrType(language, "PangoLanguage")

	w <- .RGtkCall("S_pango_context_set_language", object, language, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoContextSetBaseDir <-
function(object, direction, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")
	

	w <- .RGtkCall("S_pango_context_set_base_dir", object, direction, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoContextGetBaseDir <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoContext")

	w <- .RGtkCall("S_pango_context_get_base_dir", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoItemize <-
function(context, text, start.index, length, attrs, cached.iter = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(context, "PangoContext")
	text <- as.character(text)
	start.index <- as.integer(start.index)
	length <- as.integer(length)
	checkPtrType(attrs, "PangoAttrList")
	if (!is.null( cached.iter )) checkPtrType(cached.iter, "PangoAttrIterator")

	w <- .RGtkCall("S_pango_itemize", context, text, start.index, length, attrs, cached.iter, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCoverageRef <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoCoverage")

	w <- .RGtkCall("S_pango_coverage_ref", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCoverageUnref <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoCoverage")

	w <- .RGtkCall("S_pango_coverage_unref", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoCoverageCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoCoverage")

	w <- .RGtkCall("S_pango_coverage_copy", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCoverageGet <-
function(object, index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoCoverage")
	index <- as.integer(index)

	w <- .RGtkCall("S_pango_coverage_get", object, index, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoCoverageSet <-
function(object, index, level, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoCoverage")
	index <- as.integer(index)
	

	w <- .RGtkCall("S_pango_coverage_set", object, index, level, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoCoverageMax <-
function(object, other, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoCoverage")
	checkPtrType(other, "PangoCoverage")

	w <- .RGtkCall("S_pango_coverage_max", object, other, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoCoverageToBytes <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoCoverage")

	w <- .RGtkCall("S_pango_coverage_to_bytes", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoCoverageFromBytes <-
function(bytes, .flush = TRUE, .depwarn = TRUE)
{
	bytes <- as.list(as.integer(bytes))

	w <- .RGtkCall("S_pango_coverage_from_bytes", bytes, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_font_description_new", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_copy", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionCopyStatic <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_copy_static", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionHash <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_hash", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionEqual <-
function(object, desc2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	checkPtrType(desc2, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_equal", object, desc2, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_free", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionSetFamily <-
function(object, family, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	family <- as.character(family)

	w <- .RGtkCall("S_pango_font_description_set_family", object, family, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionSetFamilyStatic <-
function(object, family, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	family <- as.character(family)

	w <- .RGtkCall("S_pango_font_description_set_family_static", object, family, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionGetFamily <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_get_family", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionSetStyle <-
function(object, style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	

	w <- .RGtkCall("S_pango_font_description_set_style", object, style, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionGetStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_get_style", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionSetVariant <-
function(object, variant, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	

	w <- .RGtkCall("S_pango_font_description_set_variant", object, variant, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionGetVariant <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_get_variant", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionSetWeight <-
function(object, weight, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	

	w <- .RGtkCall("S_pango_font_description_set_weight", object, weight, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionGetWeight <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_get_weight", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionSetStretch <-
function(object, stretch, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	

	w <- .RGtkCall("S_pango_font_description_set_stretch", object, stretch, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionGetStretch <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_get_stretch", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionSetSize <-
function(object, size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	size <- as.integer(size)

	w <- .RGtkCall("S_pango_font_description_set_size", object, size, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionGetSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_get_size", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionGetSetFields <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_get_set_fields", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionUnsetFields <-
function(object, to.unset, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	

	w <- .RGtkCall("S_pango_font_description_unset_fields", object, to.unset, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionMerge <-
function(object, desc.to.merge, replace.existing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	checkPtrType(desc.to.merge, "PangoFontDescription")
	replace.existing <- as.logical(replace.existing)

	w <- .RGtkCall("S_pango_font_description_merge", object, desc.to.merge, replace.existing, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionMergeStatic <-
function(object, desc.to.merge, replace.existing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	checkPtrType(desc.to.merge, "PangoFontDescription")
	replace.existing <- as.logical(replace.existing)

	w <- .RGtkCall("S_pango_font_description_merge_static", object, desc.to.merge, replace.existing, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontDescriptionBetterMatch <-
function(object, old.match = "NULL", new.match, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")
	if (!is.null( old.match )) checkPtrType(old.match, "PangoFontDescription")
	checkPtrType(new.match, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_better_match", object, old.match, new.match, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionFromString <-
function(str, .flush = TRUE, .depwarn = TRUE)
{
	str <- as.character(str)

	w <- .RGtkCall("S_pango_font_description_from_string", str, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionToString <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_to_string", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescriptionToFilename <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_description_to_filename", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMetricsGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_font_metrics_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMetricsRef <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMetrics")

	w <- .RGtkCall("S_pango_font_metrics_ref", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMetricsUnref <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMetrics")

	w <- .RGtkCall("S_pango_font_metrics_unref", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontMetricsGetAscent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMetrics")

	w <- .RGtkCall("S_pango_font_metrics_get_ascent", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMetricsGetDescent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMetrics")

	w <- .RGtkCall("S_pango_font_metrics_get_descent", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMetricsGetApproximateCharWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMetrics")

	w <- .RGtkCall("S_pango_font_metrics_get_approximate_char_width", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMetricsGetApproximateDigitWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMetrics")

	w <- .RGtkCall("S_pango_font_metrics_get_approximate_digit_width", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMetricsGetStrikethroughPosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMetrics")

	w <- .RGtkCall("S_pango_font_metrics_get_strikethrough_position", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMetricsGetStrikethroughThickness <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMetrics")

	w <- .RGtkCall("S_pango_font_metrics_get_strikethrough_thickness", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMetricsGetUnderlinePosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMetrics")

	w <- .RGtkCall("S_pango_font_metrics_get_underline_position", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMetricsGetUnderlineThickness <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMetrics")

	w <- .RGtkCall("S_pango_font_metrics_get_underline_thickness", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontFamilyGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_font_family_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontFamilyListFaces <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontFamily")

	w <- .RGtkCall("S_pango_font_family_list_faces", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontFamilyGetName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontFamily")

	w <- .RGtkCall("S_pango_font_family_get_name", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontFamilyIsMonospace <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontFamily")

	w <- .RGtkCall("S_pango_font_family_is_monospace", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontFaceGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_font_face_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontFaceDescribe <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontFace")

	w <- .RGtkCall("S_pango_font_face_describe", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontFaceGetFaceName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontFace")

	w <- .RGtkCall("S_pango_font_face_get_face_name", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontFaceListSizes <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontFace")

	w <- .RGtkCall("S_pango_font_face_list_sizes", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_font_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontDescribe <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFont")

	w <- .RGtkCall("S_pango_font_describe", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontGetCoverage <-
function(object, language, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFont")
	checkPtrType(language, "PangoLanguage")

	w <- .RGtkCall("S_pango_font_get_coverage", object, language, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontFindShaper <-
function(object, language, ch, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFont")
	checkPtrType(language, "PangoLanguage")
	ch <- as.numeric(ch)

	w <- .RGtkCall("S_pango_font_find_shaper", object, language, ch, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontGetMetrics <-
function(object, language = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFont")
	if (!is.null( language )) checkPtrType(language, "PangoLanguage")

	w <- .RGtkCall("S_pango_font_get_metrics", object, language, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontGetGlyphExtents <-
function(object, glyph, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFont")
	glyph <- as.numeric(glyph)

	w <- .RGtkCall("S_pango_font_get_glyph_extents", object, glyph, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontMapLoadFont <-
function(object, context, desc, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMap")
	checkPtrType(context, "PangoContext")
	checkPtrType(desc, "PangoFontDescription")

	w <- .RGtkCall("S_pango_font_map_load_font", object, context, desc, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMapLoadFontset <-
function(object, context, desc, language, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMap")
	checkPtrType(context, "PangoContext")
	checkPtrType(desc, "PangoFontDescription")
	checkPtrType(language, "PangoLanguage")

	w <- .RGtkCall("S_pango_font_map_load_fontset", object, context, desc, language, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontMapListFamilies <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontMap")

	w <- .RGtkCall("S_pango_font_map_list_families", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoFontsetGetFont <-
function(object, wc, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontset")
	wc <- as.numeric(wc)

	w <- .RGtkCall("S_pango_fontset_get_font", object, wc, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontsetGetMetrics <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontset")

	w <- .RGtkCall("S_pango_fontset_get_metrics", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoFontsetForeach <-
function(object, func, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoFontset")
	func <- as.function(func)
	

	w <- .RGtkCall("S_pango_fontset_foreach", object, func, data, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoGlyphStringNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_glyph_string_new", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoGlyphStringSetSize <-
function(object, new.len, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoGlyphString")
	new.len <- as.integer(new.len)

	w <- .RGtkCall("S_pango_glyph_string_set_size", object, new.len, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoGlyphStringGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_glyph_string_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoGlyphStringCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoGlyphString")

	w <- .RGtkCall("S_pango_glyph_string_copy", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoGlyphStringFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoGlyphString")

	w <- .RGtkCall("S_pango_glyph_string_free", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoGlyphStringExtents <-
function(object, font, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoGlyphString")
	checkPtrType(font, "PangoFont")

	w <- .RGtkCall("S_pango_glyph_string_extents", object, font, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoGlyphStringExtentsRange <-
function(object, start, end, font, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoGlyphString")
	start <- as.integer(start)
	end <- as.integer(end)
	checkPtrType(font, "PangoFont")

	w <- .RGtkCall("S_pango_glyph_string_extents_range", object, start, end, font, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoMatrixTranslate <-
function(object, tx, ty, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoMatrix")
	tx <- as.numeric(tx)
	ty <- as.numeric(ty)

	w <- .RGtkCall("S_pango_matrix_translate", object, tx, ty, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoMatrixScale <-
function(object, scale.x, scale.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoMatrix")
	scale.x <- as.numeric(scale.x)
	scale.y <- as.numeric(scale.y)

	w <- .RGtkCall("S_pango_matrix_scale", object, scale.x, scale.y, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoMatrixRotate <-
function(object, degrees, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoMatrix")
	degrees <- as.numeric(degrees)

	w <- .RGtkCall("S_pango_matrix_rotate", object, degrees, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoMatrixConcat <-
function(object, new.matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoMatrix")
	checkPtrType(new.matrix, "PangoMatrix")

	w <- .RGtkCall("S_pango_matrix_concat", object, new.matrix, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoMatrixCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoMatrix")

	w <- .RGtkCall("S_pango_matrix_copy", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoReorderItems <-
function(logical.items, .flush = TRUE, .depwarn = TRUE)
{
	logical.items <- as.GList(logical.items)

	w <- .RGtkCall("S_pango_reorder_items", logical.items, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_layout_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutNew <-
function(context, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(context, "PangoContext")

	w <- .RGtkCall("S_pango_layout_new", context, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_copy", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutGetContext <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_context", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetAttributes <-
function(object, attrs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	checkPtrType(attrs, "PangoAttrList")

	w <- .RGtkCall("S_pango_layout_set_attributes", object, attrs, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetAttributes <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_attributes", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetText <-
function(object, text, length = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	text <- as.character(text)
	length <- as.integer(length)

	w <- .RGtkCall("S_pango_layout_set_text", object, text, length, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_text", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetMarkup <-
function(object, markup, length = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	markup <- as.character(markup)
	length <- as.integer(length)

	w <- .RGtkCall("S_pango_layout_set_markup", object, markup, length, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutSetFontDescription <-
function(object, desc = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	if (!is.null( desc )) checkPtrType(desc, "PangoFontDescription")

	w <- .RGtkCall("S_pango_layout_set_font_description", object, desc, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetFontDescription <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_font_description", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetWidth <-
function(object, width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	width <- as.integer(width)

	w <- .RGtkCall("S_pango_layout_set_width", object, width, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_width", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetWrap <-
function(object, wrap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	

	w <- .RGtkCall("S_pango_layout_set_wrap", object, wrap, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetWrap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_wrap", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetIndent <-
function(object, indent, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	indent <- as.integer(indent)

	w <- .RGtkCall("S_pango_layout_set_indent", object, indent, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetIndent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_indent", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetSpacing <-
function(object, spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	spacing <- as.integer(spacing)

	w <- .RGtkCall("S_pango_layout_set_spacing", object, spacing, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetSpacing <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_spacing", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetJustify <-
function(object, justify, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	justify <- as.logical(justify)

	w <- .RGtkCall("S_pango_layout_set_justify", object, justify, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetJustify <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_justify", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetAutoDir <-
function(object, auto.dir, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	auto.dir <- as.logical(auto.dir)

	w <- .RGtkCall("S_pango_layout_set_auto_dir", object, auto.dir, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetAutoDir <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_auto_dir", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetAlignment <-
function(object, alignment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	

	w <- .RGtkCall("S_pango_layout_set_alignment", object, alignment, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetAlignment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_alignment", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetTabs <-
function(object, tabs = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	if (!is.null( tabs )) checkPtrType(tabs, "PangoTabArray")

	w <- .RGtkCall("S_pango_layout_set_tabs", object, tabs, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetTabs <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_tabs", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetSingleParagraphMode <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_pango_layout_set_single_paragraph_mode", object, setting, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetSingleParagraphMode <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_single_paragraph_mode", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutSetEllipsize <-
function(object, ellipsize, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	

	w <- .RGtkCall("S_pango_layout_set_ellipsize", object, ellipsize, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetEllipsize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_ellipsize", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutContextChanged <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_context_changed", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetLogAttrs <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_log_attrs", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutIndexToPos <-
function(object, index, pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	index <- as.integer(index)
	pos <- as.PangoRectangle(pos)

	w <- .RGtkCall("S_pango_layout_index_to_pos", object, index, pos, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetCursorPos <-
function(object, index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	index <- as.integer(index)

	w <- .RGtkCall("S_pango_layout_get_cursor_pos", object, index, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutMoveCursorVisually <-
function(object, strong, old.index, old.trailing, direction, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	strong <- as.logical(strong)
	old.index <- as.integer(old.index)
	old.trailing <- as.integer(old.trailing)
	direction <- as.integer(direction)

	w <- .RGtkCall("S_pango_layout_move_cursor_visually", object, strong, old.index, old.trailing, direction, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutXyToIndex <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_pango_layout_xy_to_index", object, x, y, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutGetExtents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_extents", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetPixelExtents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_pixel_extents", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_size", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetPixelSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_pixel_size", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutGetLineCount <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_line_count", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutGetLine <-
function(object, line, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")
	line <- as.integer(line)

	w <- .RGtkCall("S_pango_layout_get_line", object, line, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutGetLines <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_lines", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutLineXToIndex <-
function(object, x.pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutLine")
	x.pos <- as.integer(x.pos)

	w <- .RGtkCall("S_pango_layout_line_x_to_index", object, x.pos, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutLineIndexToX <-
function(object, index, trailing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutLine")
	index <- as.integer(index)
	trailing <- as.logical(trailing)

	w <- .RGtkCall("S_pango_layout_line_index_to_x", object, index, trailing, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutLineGetXRanges <-
function(object, start.index, end.index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutLine")
	start.index <- as.integer(start.index)
	end.index <- as.integer(end.index)

	w <- .RGtkCall("S_pango_layout_line_get_x_ranges", object, start.index, end.index, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutLineGetExtents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutLine")

	w <- .RGtkCall("S_pango_layout_line_get_extents", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutLineGetPixelExtents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutLine")

	w <- .RGtkCall("S_pango_layout_line_get_pixel_extents", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutIterGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_layout_iter_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutGetIter <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayout")

	w <- .RGtkCall("S_pango_layout_get_iter", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutIterFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_free", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutIterGetIndex <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_get_index", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutIterGetRun <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_get_run", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutIterGetLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_get_line", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutIterAtLastLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_at_last_line", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutIterNextChar <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_next_char", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutIterNextCluster <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_next_cluster", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutIterNextRun <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_next_run", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutIterNextLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_next_line", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutIterGetCharExtents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_get_char_extents", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLayoutIterGetClusterExtents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_get_cluster_extents", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutIterGetRunExtents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_get_run_extents", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutIterGetLineExtents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_get_line_extents", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutIterGetLineYrange <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_get_line_yrange", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutIterGetLayoutExtents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_get_layout_extents", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoLayoutIterGetBaseline <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLayoutIter")

	w <- .RGtkCall("S_pango_layout_iter_get_baseline", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoRendererGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_renderer_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoRendererDrawLayout <-
function(object, layout, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	checkPtrType(layout, "PangoLayout")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_pango_renderer_draw_layout", object, layout, x, y, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererDrawLayoutLine <-
function(object, line, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	checkPtrType(line, "PangoLayoutLine")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_pango_renderer_draw_layout_line", object, line, x, y, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererDrawGlyphs <-
function(object, font, glyphs, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	checkPtrType(font, "PangoFont")
	checkPtrType(glyphs, "PangoGlyphString")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_pango_renderer_draw_glyphs", object, font, glyphs, x, y, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererDrawRectangle <-
function(object, part, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_pango_renderer_draw_rectangle", object, part, x, y, width, height, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererDrawErrorUnderline <-
function(object, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_pango_renderer_draw_error_underline", object, x, y, width, height, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererDrawTrapezoid <-
function(object, part, y1., x11, x21, y2, x12, x22, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	
	y1. <- as.numeric(y1.)
	x11 <- as.numeric(x11)
	x21 <- as.numeric(x21)
	y2 <- as.numeric(y2)
	x12 <- as.numeric(x12)
	x22 <- as.numeric(x22)

	w <- .RGtkCall("S_pango_renderer_draw_trapezoid", object, part, y1., x11, x21, y2, x12, x22, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererDrawGlyph <-
function(object, font, glyph, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	checkPtrType(font, "PangoFont")
	glyph <- as.numeric(glyph)
	x <- as.numeric(x)
	y <- as.numeric(y)

	w <- .RGtkCall("S_pango_renderer_draw_glyph", object, font, glyph, x, y, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererActivate <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")

	w <- .RGtkCall("S_pango_renderer_activate", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererDeactivate <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")

	w <- .RGtkCall("S_pango_renderer_deactivate", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererPartChanged <-
function(object, part, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	

	w <- .RGtkCall("S_pango_renderer_part_changed", object, part, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererSetColor <-
function(object, part, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	
	checkPtrType(color, "PangoColor")

	w <- .RGtkCall("S_pango_renderer_set_color", object, part, color, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererGetColor <-
function(object, part, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	

	w <- .RGtkCall("S_pango_renderer_get_color", object, part, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoRendererSetMatrix <-
function(object, matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")
	checkPtrType(matrix, "PangoMatrix")

	w <- .RGtkCall("S_pango_renderer_set_matrix", object, matrix, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoRendererGetMatrix <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoRenderer")

	w <- .RGtkCall("S_pango_renderer_get_matrix", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoTabArrayNew <-
function(initial.size, positions.in.pixels, .flush = TRUE, .depwarn = TRUE)
{
	initial.size <- as.integer(initial.size)
	positions.in.pixels <- as.logical(positions.in.pixels)

	w <- .RGtkCall("S_pango_tab_array_new", initial.size, positions.in.pixels, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoTabArrayGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_pango_tab_array_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoTabArrayCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoTabArray")

	w <- .RGtkCall("S_pango_tab_array_copy", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoTabArrayFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoTabArray")

	w <- .RGtkCall("S_pango_tab_array_free", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoTabArrayGetSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoTabArray")

	w <- .RGtkCall("S_pango_tab_array_get_size", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoTabArrayResize <-
function(object, new.size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoTabArray")
	new.size <- as.integer(new.size)

	w <- .RGtkCall("S_pango_tab_array_resize", object, new.size, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoTabArraySetTab <-
function(object, tab.index, alignment, location, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoTabArray")
	tab.index <- as.integer(tab.index)
	
	location <- as.integer(location)

	w <- .RGtkCall("S_pango_tab_array_set_tab", object, tab.index, alignment, location, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoTabArrayGetTab <-
function(object, tab.index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoTabArray")
	tab.index <- as.integer(tab.index)

	w <- .RGtkCall("S_pango_tab_array_get_tab", object, tab.index, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoTabArrayGetTabs <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoTabArray")

	w <- .RGtkCall("S_pango_tab_array_get_tabs", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


pangoTabArrayGetPositionsInPixels <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoTabArray")

	w <- .RGtkCall("S_pango_tab_array_get_positions_in_pixels", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLanguageFromString <-
function(language, .flush = TRUE, .depwarn = TRUE)
{
	language <- as.character(language)

	w <- .RGtkCall("S_pango_language_from_string", language, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLanguageMatches <-
function(object, range.list, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLanguage")
	range.list <- as.character(range.list)

	w <- .RGtkCall("S_pango_language_matches", object, range.list, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLanguageToString <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "PangoLanguage")

	w <- .RGtkCall("S_pango_language_to_string", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoPixels <-
function(size, .flush = TRUE, .depwarn = TRUE)
{
	size <- as.integer(size)

	w <- .RGtkCall("S_PANGO_PIXELS", size, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoAscent <-
function(rect, .flush = TRUE, .depwarn = TRUE)
{
	rect <- as.PangoRectangle(rect)

	w <- .RGtkCall("S_PANGO_ASCENT", rect, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoDescent <-
function(rect, .flush = TRUE, .depwarn = TRUE)
{
	rect <- as.PangoRectangle(rect)

	w <- .RGtkCall("S_PANGO_DESCENT", rect, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoLbearing <-
function(rect, .flush = TRUE, .depwarn = TRUE)
{
	rect <- as.PangoRectangle(rect)

	w <- .RGtkCall("S_PANGO_LBEARING", rect, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


pangoRbearing <-
function(rect, .flush = TRUE, .depwarn = TRUE)
{
	rect <- as.PangoRectangle(rect)

	w <- .RGtkCall("S_PANGO_RBEARING", rect, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


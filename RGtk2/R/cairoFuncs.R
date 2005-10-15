
cairoCreate <-
function(target, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(target, "CairoSurface")

	w <- .RGtkCall("S_cairo_create", target, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoReference <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_reference", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoDestroy <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_destroy", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSave <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_save", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoRestore <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_restore", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetOperator <-
function(cr, op, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	

	w <- .RGtkCall("S_cairo_set_operator", cr, op, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetSource <-
function(cr, source, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(source, "CairoPattern")

	w <- .RGtkCall("S_cairo_set_source", cr, source, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetSourceRgb <-
function(cr, red, green, blue, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	red <- as.numeric(red)
	green <- as.numeric(green)
	blue <- as.numeric(blue)

	w <- .RGtkCall("S_cairo_set_source_rgb", cr, red, green, blue, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetSourceRgba <-
function(cr, red, green, blue, alpha, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	red <- as.numeric(red)
	green <- as.numeric(green)
	blue <- as.numeric(blue)
	alpha <- as.numeric(alpha)

	w <- .RGtkCall("S_cairo_set_source_rgba", cr, red, green, blue, alpha, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetSourceSurface <-
function(cr, surface, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(surface, "CairoSurface")
	x <- as.numeric(x)
	y <- as.numeric(y)

	w <- .RGtkCall("S_cairo_set_source_surface", cr, surface, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetTolerance <-
function(cr, tolerance, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	tolerance <- as.numeric(tolerance)

	w <- .RGtkCall("S_cairo_set_tolerance", cr, tolerance, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetFillRule <-
function(cr, fill.rule, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	

	w <- .RGtkCall("S_cairo_set_fill_rule", cr, fill.rule, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetLineWidth <-
function(cr, width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	width <- as.numeric(width)

	w <- .RGtkCall("S_cairo_set_line_width", cr, width, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetLineCap <-
function(cr, line.cap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	

	w <- .RGtkCall("S_cairo_set_line_cap", cr, line.cap, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetLineJoin <-
function(cr, line.join, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	

	w <- .RGtkCall("S_cairo_set_line_join", cr, line.join, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetDash <-
function(cr, dashes, offset, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	dashes <- as.list(as.numeric(dashes))
	offset <- as.numeric(offset)

	w <- .RGtkCall("S_cairo_set_dash", cr, dashes, offset, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoSetMiterLimit <-
function(cr, limit, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	limit <- as.numeric(limit)

	w <- .RGtkCall("S_cairo_set_miter_limit", cr, limit, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoTranslate <-
function(cr, tx, ty, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	tx <- as.numeric(tx)
	ty <- as.numeric(ty)

	w <- .RGtkCall("S_cairo_translate", cr, tx, ty, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoScale <-
function(cr, sx, sy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	sx <- as.numeric(sx)
	sy <- as.numeric(sy)

	w <- .RGtkCall("S_cairo_scale", cr, sx, sy, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoRotate <-
function(cr, angle, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	angle <- as.numeric(angle)

	w <- .RGtkCall("S_cairo_rotate", cr, angle, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoTransform <-
function(cr, matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(matrix, "CairoMatrix")

	w <- .RGtkCall("S_cairo_transform", cr, matrix, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetMatrix <-
function(cr, matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(matrix, "CairoMatrix")

	w <- .RGtkCall("S_cairo_set_matrix", cr, matrix, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoIdentityMatrix <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_identity_matrix", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoUserToDevice <-
function(cr, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	x <- as.list(as.numeric(x))
	y <- as.list(as.numeric(y))

	w <- .RGtkCall("S_cairo_user_to_device", cr, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoUserToDeviceDistance <-
function(cr, dx, dy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	dx <- as.list(as.numeric(dx))
	dy <- as.list(as.numeric(dy))

	w <- .RGtkCall("S_cairo_user_to_device_distance", cr, dx, dy, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoDeviceToUser <-
function(cr, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	x <- as.list(as.numeric(x))
	y <- as.list(as.numeric(y))

	w <- .RGtkCall("S_cairo_device_to_user", cr, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoDeviceToUserDistance <-
function(cr, dx, dy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	dx <- as.list(as.numeric(dx))
	dy <- as.list(as.numeric(dy))

	w <- .RGtkCall("S_cairo_device_to_user_distance", cr, dx, dy, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoNewPath <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_new_path", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMoveTo <-
function(cr, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	x <- as.numeric(x)
	y <- as.numeric(y)

	w <- .RGtkCall("S_cairo_move_to", cr, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoLineTo <-
function(cr, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	x <- as.numeric(x)
	y <- as.numeric(y)

	w <- .RGtkCall("S_cairo_line_to", cr, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoCurveTo <-
function(cr, x1, y1, x2, y2, x3, y3, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	x1 <- as.numeric(x1)
	y1 <- as.numeric(y1)
	x2 <- as.numeric(x2)
	y2 <- as.numeric(y2)
	x3 <- as.numeric(x3)
	y3 <- as.numeric(y3)

	w <- .RGtkCall("S_cairo_curve_to", cr, x1, y1, x2, y2, x3, y3, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoArc <-
function(cr, xc, yc, radius, angle1, angle2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	xc <- as.numeric(xc)
	yc <- as.numeric(yc)
	radius <- as.numeric(radius)
	angle1 <- as.numeric(angle1)
	angle2 <- as.numeric(angle2)

	w <- .RGtkCall("S_cairo_arc", cr, xc, yc, radius, angle1, angle2, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoArcNegative <-
function(cr, xc, yc, radius, angle1, angle2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	xc <- as.numeric(xc)
	yc <- as.numeric(yc)
	radius <- as.numeric(radius)
	angle1 <- as.numeric(angle1)
	angle2 <- as.numeric(angle2)

	w <- .RGtkCall("S_cairo_arc_negative", cr, xc, yc, radius, angle1, angle2, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoRelMoveTo <-
function(cr, dx, dy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	dx <- as.numeric(dx)
	dy <- as.numeric(dy)

	w <- .RGtkCall("S_cairo_rel_move_to", cr, dx, dy, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoRelLineTo <-
function(cr, dx, dy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	dx <- as.numeric(dx)
	dy <- as.numeric(dy)

	w <- .RGtkCall("S_cairo_rel_line_to", cr, dx, dy, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoRelCurveTo <-
function(cr, dx1, dy1, dx2, dy2, dx3, dy3, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	dx1 <- as.numeric(dx1)
	dy1 <- as.numeric(dy1)
	dx2 <- as.numeric(dx2)
	dy2 <- as.numeric(dy2)
	dx3 <- as.numeric(dx3)
	dy3 <- as.numeric(dy3)

	w <- .RGtkCall("S_cairo_rel_curve_to", cr, dx1, dy1, dx2, dy2, dx3, dy3, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoRectangle <-
function(cr, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	x <- as.numeric(x)
	y <- as.numeric(y)
	width <- as.numeric(width)
	height <- as.numeric(height)

	w <- .RGtkCall("S_cairo_rectangle", cr, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoClosePath <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_close_path", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPaint <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_paint", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPaintWithAlpha <-
function(cr, alpha, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	alpha <- as.numeric(alpha)

	w <- .RGtkCall("S_cairo_paint_with_alpha", cr, alpha, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMask <-
function(cr, pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(pattern, "CairoPattern")

	w <- .RGtkCall("S_cairo_mask", cr, pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMaskSurface <-
function(cr, surface, surface.x, surface.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(surface, "CairoSurface")
	surface.x <- as.numeric(surface.x)
	surface.y <- as.numeric(surface.y)

	w <- .RGtkCall("S_cairo_mask_surface", cr, surface, surface.x, surface.y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoStroke <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_stroke", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoStrokePreserve <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_stroke_preserve", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFill <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_fill", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFillPreserve <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_fill_preserve", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoCopyPage <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_copy_page", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoShowPage <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_show_page", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoInStroke <-
function(cr, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	x <- as.numeric(x)
	y <- as.numeric(y)

	w <- .RGtkCall("S_cairo_in_stroke", cr, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoInFill <-
function(cr, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	x <- as.numeric(x)
	y <- as.numeric(y)

	w <- .RGtkCall("S_cairo_in_fill", cr, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoStrokeExtents <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_stroke_extents", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoFillExtents <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_fill_extents", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoResetClip <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_reset_clip", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoClip <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_clip", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoClipPreserve <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_clip_preserve", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSelectFontFace <-
function(cr, family, slant, weight, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	family <- as.character(family)
	
	

	w <- .RGtkCall("S_cairo_select_font_face", cr, family, slant, weight, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetFontSize <-
function(cr, size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	size <- as.numeric(size)

	w <- .RGtkCall("S_cairo_set_font_size", cr, size, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSetFontMatrix <-
function(cr, matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(matrix, "CairoMatrix")

	w <- .RGtkCall("S_cairo_set_font_matrix", cr, matrix, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetFontMatrix <-
function(cr, matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(matrix, "CairoMatrix")

	w <- .RGtkCall("S_cairo_get_font_matrix", cr, matrix, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoShowText <-
function(cr, utf8, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	utf8 <- as.character(utf8)

	w <- .RGtkCall("S_cairo_show_text", cr, utf8, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoShowGlyphs <-
function(cr, glyphs, num.glyphs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	glyphs <- as.cairo_glyph_t(glyphs)
	num.glyphs <- as.integer(num.glyphs)

	w <- .RGtkCall("S_cairo_show_glyphs", cr, glyphs, num.glyphs, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetFontFace <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_font_face", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontExtents <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_font_extents", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoSetFontFace <-
function(cr, font.face, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(font.face, "CairoFontFace")

	w <- .RGtkCall("S_cairo_set_font_face", cr, font.face, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoTextExtents <-
function(cr, utf8, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	utf8 <- as.character(utf8)

	w <- .RGtkCall("S_cairo_text_extents", cr, utf8, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoGlyphExtents <-
function(cr, glyphs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	glyphs <- lapply(glyphs, function(x) { x <- as.cairo_glyph_t(x); x })

	w <- .RGtkCall("S_cairo_glyph_extents", cr, glyphs, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoTextPath <-
function(cr, utf8, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	utf8 <- as.character(utf8)

	w <- .RGtkCall("S_cairo_text_path", cr, utf8, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGlyphPath <-
function(cr, glyphs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	glyphs <- lapply(glyphs, function(x) { x <- as.cairo_glyph_t(x); x })

	w <- .RGtkCall("S_cairo_glyph_path", cr, glyphs, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoSetFontOptions <-
function(cr, options, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(options, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_set_font_options", cr, options, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetFontOptions <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_font_options", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoFontFaceReference <-
function(font.face, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(font.face, "CairoFontFace")

	w <- .RGtkCall("S_cairo_font_face_reference", font.face, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontFaceDestroy <-
function(font.face, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(font.face, "CairoFontFace")

	w <- .RGtkCall("S_cairo_font_face_destroy", font.face, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontFaceGetUserData <-
function(font.face, key, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(font.face, "CairoFontFace")
	checkPtrType(key, "CairoUserDataKey")

	w <- .RGtkCall("S_cairo_font_face_get_user_data", font.face, key, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontFaceSetUserData <-
function(font.face, key, user.data, destroy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(font.face, "CairoFontFace")
	checkPtrType(key, "CairoUserDataKey")
	
	checkPtrType(destroy, "CairoDestroyFunc")

	w <- .RGtkCall("S_cairo_font_face_set_user_data", font.face, key, user.data, destroy, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontFaceStatus <-
function(font.face, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(font.face, "CairoFontFace")

	w <- .RGtkCall("S_cairo_font_face_status", font.face, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoScaledFontCreate <-
function(font.face, font.matrix, ctm, option, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(font.face, "CairoFontFace")
	checkPtrType(font.matrix, "CairoMatrix")
	checkPtrType(ctm, "CairoMatrix")
	checkPtrType(option, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_scaled_font_create", font.face, font.matrix, ctm, option, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoScaledFontReference <-
function(scaled.font, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(scaled.font, "CairoScaledFont")

	w <- .RGtkCall("S_cairo_scaled_font_reference", scaled.font, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoScaledFontDestroy <-
function(scaled.font, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(scaled.font, "CairoScaledFont")

	w <- .RGtkCall("S_cairo_scaled_font_destroy", scaled.font, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoScaledFontExtents <-
function(scaled.font, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(scaled.font, "CairoScaledFont")

	w <- .RGtkCall("S_cairo_scaled_font_extents", scaled.font, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoScaledFontGlyphExtents <-
function(scaled.font, glyphs, num.glyphs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(scaled.font, "CairoScaledFont")
	glyphs <- as.cairo_glyph_t(glyphs)
	num.glyphs <- as.integer(num.glyphs)

	w <- .RGtkCall("S_cairo_scaled_font_glyph_extents", scaled.font, glyphs, num.glyphs, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoScaledFontStatus <-
function(scaled.font, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(scaled.font, "CairoScaledFont")

	w <- .RGtkCall("S_cairo_scaled_font_status", scaled.font, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetOperator <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_operator", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetSource <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_source", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetTolerance <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_tolerance", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetCurrentPoint <-
function(cr, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	x <- as.list(as.numeric(x))
	y <- as.list(as.numeric(y))

	w <- .RGtkCall("S_cairo_get_current_point", cr, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetFillRule <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_fill_rule", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetLineWidth <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_line_width", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetLineCap <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_line_cap", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetLineJoin <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_line_join", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetMiterLimit <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_miter_limit", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetMatrix <-
function(cr, matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(matrix, "CairoMatrix")

	w <- .RGtkCall("S_cairo_get_matrix", cr, matrix, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoGetTarget <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_get_target", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoCopyPath <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_copy_path", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoCopyPathFlat <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_copy_path_flat", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoAppendPath <-
function(cr, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	path <- as.cairo_path_t(path)

	w <- .RGtkCall("S_cairo_append_path", cr, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPathDestroy <-
function(path, .flush = TRUE, .depwarn = TRUE)
{
	path <- as.cairo_path_t(path)

	w <- .RGtkCall("S_cairo_path_destroy", path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoStatus <-
function(cr, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")

	w <- .RGtkCall("S_cairo_status", cr, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoStatusToString <-
function(status, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_cairo_status_to_string", status, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSurfaceCreateSimilar <-
function(other, content, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(other, "CairoSurface")
	checkPtrType(content, "CairoContent")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_cairo_surface_create_similar", other, content, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSurfaceReference <-
function(surface, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")

	w <- .RGtkCall("S_cairo_surface_reference", surface, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSurfaceDestroy <-
function(surface, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")

	w <- .RGtkCall("S_cairo_surface_destroy", surface, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSurfaceFinish <-
function(surface, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")

	w <- .RGtkCall("S_cairo_surface_finish", surface, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSurfaceWriteToPng <-
function(surface, filename, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")
	filename <- as.character(filename)

	w <- .RGtkCall("S_cairo_surface_write_to_png", surface, filename, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSurfaceWriteToPngStream <-
function(surface, write.func, closure, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")
	checkPtrType(write.func, "CairoWriteFunc")
	

	w <- .RGtkCall("S_cairo_surface_write_to_png_stream", surface, write.func, closure, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSurfaceGetUserData <-
function(surface, key, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")
	checkPtrType(key, "CairoUserDataKey")

	w <- .RGtkCall("S_cairo_surface_get_user_data", surface, key, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSurfaceSetUserData <-
function(surface, key, user.data, destroy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")
	checkPtrType(key, "CairoUserDataKey")
	
	checkPtrType(destroy, "CairoDestroyFunc")

	w <- .RGtkCall("S_cairo_surface_set_user_data", surface, key, user.data, destroy, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSurfaceSetDeviceOffset <-
function(surface, x.offset, y.offset, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")
	x.offset <- as.numeric(x.offset)
	y.offset <- as.numeric(y.offset)

	w <- .RGtkCall("S_cairo_surface_set_device_offset", surface, x.offset, y.offset, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoSurfaceGetFontOptions <-
function(surface, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")

	w <- .RGtkCall("S_cairo_surface_get_font_options", surface, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


cairoSurfaceStatus <-
function(surface, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")

	w <- .RGtkCall("S_cairo_surface_status", surface, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoImageSurfaceCreate <-
function(format, width, height, .flush = TRUE, .depwarn = TRUE)
{
	
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_cairo_image_surface_create", format, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoImageSurfaceCreateForData <-
function(data, format, width, height, stride, .flush = TRUE, .depwarn = TRUE)
{
	data <- as.list(as.integer(data))
	
	width <- as.integer(width)
	height <- as.integer(height)
	stride <- as.integer(stride)

	w <- .RGtkCall("S_cairo_image_surface_create_for_data", data, format, width, height, stride, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoImageSurfaceGetWidth <-
function(surface, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")

	w <- .RGtkCall("S_cairo_image_surface_get_width", surface, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoImageSurfaceGetHeight <-
function(surface, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")

	w <- .RGtkCall("S_cairo_image_surface_get_height", surface, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoImageSurfaceCreateFromPng <-
function(filename, .flush = TRUE, .depwarn = TRUE)
{
	filename <- as.character(filename)

	w <- .RGtkCall("S_cairo_image_surface_create_from_png", filename, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoImageSurfaceCreateFromPngStream <-
function(read.func, closure, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(read.func, "CairoReadFunc")
	

	w <- .RGtkCall("S_cairo_image_surface_create_from_png_stream", read.func, closure, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternCreateRgb <-
function(red, green, blue, .flush = TRUE, .depwarn = TRUE)
{
	red <- as.numeric(red)
	green <- as.numeric(green)
	blue <- as.numeric(blue)

	w <- .RGtkCall("S_cairo_pattern_create_rgb", red, green, blue, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternCreateRgba <-
function(red, green, blue, alpha, .flush = TRUE, .depwarn = TRUE)
{
	red <- as.numeric(red)
	green <- as.numeric(green)
	blue <- as.numeric(blue)
	alpha <- as.numeric(alpha)

	w <- .RGtkCall("S_cairo_pattern_create_rgba", red, green, blue, alpha, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternCreateForSurface <-
function(surface, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(surface, "CairoSurface")

	w <- .RGtkCall("S_cairo_pattern_create_for_surface", surface, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternCreateLinear <-
function(x0, y0, x1, y1, .flush = TRUE, .depwarn = TRUE)
{
	x0 <- as.numeric(x0)
	y0 <- as.numeric(y0)
	x1 <- as.numeric(x1)
	y1 <- as.numeric(y1)

	w <- .RGtkCall("S_cairo_pattern_create_linear", x0, y0, x1, y1, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternCreateRadial <-
function(cx0, cy0, radius0, cx1, cy1, radius1, .flush = TRUE, .depwarn = TRUE)
{
	cx0 <- as.numeric(cx0)
	cy0 <- as.numeric(cy0)
	radius0 <- as.numeric(radius0)
	cx1 <- as.numeric(cx1)
	cy1 <- as.numeric(cy1)
	radius1 <- as.numeric(radius1)

	w <- .RGtkCall("S_cairo_pattern_create_radial", cx0, cy0, radius0, cx1, cy1, radius1, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternReference <-
function(pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")

	w <- .RGtkCall("S_cairo_pattern_reference", pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternDestroy <-
function(pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")

	w <- .RGtkCall("S_cairo_pattern_destroy", pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternStatus <-
function(pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")

	w <- .RGtkCall("S_cairo_pattern_status", pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternAddColorStopRgb <-
function(pattern, offset, red, green, blue, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")
	offset <- as.numeric(offset)
	red <- as.numeric(red)
	green <- as.numeric(green)
	blue <- as.numeric(blue)

	w <- .RGtkCall("S_cairo_pattern_add_color_stop_rgb", pattern, offset, red, green, blue, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternAddColorStopRgba <-
function(pattern, offset, red, green, blue, alpha, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")
	offset <- as.numeric(offset)
	red <- as.numeric(red)
	green <- as.numeric(green)
	blue <- as.numeric(blue)
	alpha <- as.numeric(alpha)

	w <- .RGtkCall("S_cairo_pattern_add_color_stop_rgba", pattern, offset, red, green, blue, alpha, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternSetMatrix <-
function(pattern, matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")
	checkPtrType(matrix, "CairoMatrix")

	w <- .RGtkCall("S_cairo_pattern_set_matrix", pattern, matrix, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternGetMatrix <-
function(pattern, matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")
	checkPtrType(matrix, "CairoMatrix")

	w <- .RGtkCall("S_cairo_pattern_get_matrix", pattern, matrix, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternSetExtend <-
function(pattern, extend, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")
	

	w <- .RGtkCall("S_cairo_pattern_set_extend", pattern, extend, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternGetExtend <-
function(pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")

	w <- .RGtkCall("S_cairo_pattern_get_extend", pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternSetFilter <-
function(pattern, filter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")
	

	w <- .RGtkCall("S_cairo_pattern_set_filter", pattern, filter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoPatternGetFilter <-
function(pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pattern, "CairoPattern")

	w <- .RGtkCall("S_cairo_pattern_get_filter", pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixInit <-
function(matrix, xx, yx, xy, yy, x0, y0, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")
	xx <- as.numeric(xx)
	yx <- as.numeric(yx)
	xy <- as.numeric(xy)
	yy <- as.numeric(yy)
	x0 <- as.numeric(x0)
	y0 <- as.numeric(y0)

	w <- .RGtkCall("S_cairo_matrix_init", matrix, xx, yx, xy, yy, x0, y0, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixInitIdentity <-
function(matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")

	w <- .RGtkCall("S_cairo_matrix_init_identity", matrix, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixInitTranslate <-
function(matrix, tx, ty, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")
	tx <- as.numeric(tx)
	ty <- as.numeric(ty)

	w <- .RGtkCall("S_cairo_matrix_init_translate", matrix, tx, ty, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixInitScale <-
function(matrix, sx, sy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")
	sx <- as.numeric(sx)
	sy <- as.numeric(sy)

	w <- .RGtkCall("S_cairo_matrix_init_scale", matrix, sx, sy, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixInitRotate <-
function(matrix, radians, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")
	radians <- as.numeric(radians)

	w <- .RGtkCall("S_cairo_matrix_init_rotate", matrix, radians, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixTranslate <-
function(matrix, tx, ty, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")
	tx <- as.numeric(tx)
	ty <- as.numeric(ty)

	w <- .RGtkCall("S_cairo_matrix_translate", matrix, tx, ty, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixScale <-
function(matrix, sx, sy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")
	sx <- as.numeric(sx)
	sy <- as.numeric(sy)

	w <- .RGtkCall("S_cairo_matrix_scale", matrix, sx, sy, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixRotate <-
function(matrix, radians, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")
	radians <- as.numeric(radians)

	w <- .RGtkCall("S_cairo_matrix_rotate", matrix, radians, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixInvert <-
function(matrix, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")

	w <- .RGtkCall("S_cairo_matrix_invert", matrix, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixMultiply <-
function(result, a, b, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(result, "CairoMatrix")
	checkPtrType(a, "CairoMatrix")
	checkPtrType(b, "CairoMatrix")

	w <- .RGtkCall("S_cairo_matrix_multiply", result, a, b, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixTransformDistance <-
function(matrix, dx, dy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")
	dx <- as.list(as.numeric(dx))
	dy <- as.list(as.numeric(dy))

	w <- .RGtkCall("S_cairo_matrix_transform_distance", matrix, dx, dy, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoMatrixTransformPoint <-
function(matrix, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(matrix, "CairoMatrix")
	x <- as.list(as.numeric(x))
	y <- as.list(as.numeric(y))

	w <- .RGtkCall("S_cairo_matrix_transform_point", matrix, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsCreate <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_cairo_font_options_create", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsCopy <-
function(original, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(original, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_font_options_copy", original, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsDestroy <-
function(options, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_font_options_destroy", options, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsStatus <-
function(options, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_font_options_status", options, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsMerge <-
function(options, other, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")
	checkPtrType(other, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_font_options_merge", options, other, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsEqual <-
function(options, other, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")
	checkPtrType(other, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_font_options_equal", options, other, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsSetAntialias <-
function(options, antialias, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")
	

	w <- .RGtkCall("S_cairo_font_options_set_antialias", options, antialias, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsGetAntialias <-
function(options, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_font_options_get_antialias", options, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsSetSubpixelOrder <-
function(options, subpixel.order, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")
	

	w <- .RGtkCall("S_cairo_font_options_set_subpixel_order", options, subpixel.order, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsGetSubpixelOrder <-
function(options, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_font_options_get_subpixel_order", options, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsSetHintStyle <-
function(options, hint.style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")
	

	w <- .RGtkCall("S_cairo_font_options_set_hint_style", options, hint.style, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsGetHintStyle <-
function(options, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_font_options_get_hint_style", options, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsSetHintMetrics <-
function(options, hint.metrics, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")
	

	w <- .RGtkCall("S_cairo_font_options_set_hint_metrics", options, hint.metrics, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


cairoFontOptionsGetHintMetrics <-
function(options, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(options, "CairoFontOptions")

	w <- .RGtkCall("S_cairo_font_options_get_hint_metrics", options, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


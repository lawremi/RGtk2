
cairoVersion <-
function()
{
  

  w <- .RGtkCall("S_cairo_version")

  return(w)
} 


cairoVersionString <-
function()
{
  

  w <- .RGtkCall("S_cairo_version_string")

  return(w)
} 


cairoCreate <-
function(target)
{
  checkPtrType(target, "CairoSurface")

  w <- .RGtkCall("S_cairo_create", target)

  return(w)
} 


cairoSave <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_save", cr)

  return(w)
} 


cairoRestore <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_restore", cr)

  return(w)
} 


cairoSetOperator <-
function(cr, op)
{
  checkPtrType(cr, "Cairo")
  

  w <- .RGtkCall("S_cairo_set_operator", cr, op)

  return(w)
} 


cairoSetSource <-
function(cr, source)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(source, "CairoPattern")

  w <- .RGtkCall("S_cairo_set_source", cr, source)

  return(w)
} 


cairoSetSourceRgb <-
function(cr, red, green, blue)
{
  checkPtrType(cr, "Cairo")
  red <- as.numeric(red)
  green <- as.numeric(green)
  blue <- as.numeric(blue)

  w <- .RGtkCall("S_cairo_set_source_rgb", cr, red, green, blue)

  return(w)
} 


cairoSetSourceRgba <-
function(cr, red, green, blue, alpha)
{
  checkPtrType(cr, "Cairo")
  red <- as.numeric(red)
  green <- as.numeric(green)
  blue <- as.numeric(blue)
  alpha <- as.numeric(alpha)

  w <- .RGtkCall("S_cairo_set_source_rgba", cr, red, green, blue, alpha)

  return(w)
} 


cairoSetSourceSurface <-
function(cr, surface, x, y)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(surface, "CairoSurface")
  x <- as.numeric(x)
  y <- as.numeric(y)

  w <- .RGtkCall("S_cairo_set_source_surface", cr, surface, x, y)

  return(w)
} 


cairoSetTolerance <-
function(cr, tolerance)
{
  checkPtrType(cr, "Cairo")
  tolerance <- as.numeric(tolerance)

  w <- .RGtkCall("S_cairo_set_tolerance", cr, tolerance)

  return(w)
} 


cairoSetAntialias <-
function(cr, antialias)
{
  checkPtrType(cr, "Cairo")
  

  w <- .RGtkCall("S_cairo_set_antialias", cr, antialias)

  return(w)
} 


cairoSetFillRule <-
function(cr, fill.rule)
{
  checkPtrType(cr, "Cairo")
  

  w <- .RGtkCall("S_cairo_set_fill_rule", cr, fill.rule)

  return(w)
} 


cairoSetLineWidth <-
function(cr, width)
{
  checkPtrType(cr, "Cairo")
  width <- as.numeric(width)

  w <- .RGtkCall("S_cairo_set_line_width", cr, width)

  return(w)
} 


cairoSetLineCap <-
function(cr, line.cap)
{
  checkPtrType(cr, "Cairo")
  

  w <- .RGtkCall("S_cairo_set_line_cap", cr, line.cap)

  return(w)
} 


cairoSetLineJoin <-
function(cr, line.join)
{
  checkPtrType(cr, "Cairo")
  

  w <- .RGtkCall("S_cairo_set_line_join", cr, line.join)

  return(w)
} 


cairoSetDash <-
function(cr, dashes, offset)
{
  checkPtrType(cr, "Cairo")
  dashes <- as.list(as.numeric(dashes))
  offset <- as.numeric(offset)

  w <- .RGtkCall("S_cairo_set_dash", cr, dashes, offset)

  return(invisible(w))
} 


cairoSetMiterLimit <-
function(cr, limit)
{
  checkPtrType(cr, "Cairo")
  limit <- as.numeric(limit)

  w <- .RGtkCall("S_cairo_set_miter_limit", cr, limit)

  return(w)
} 


cairoTranslate <-
function(cr, tx, ty)
{
  checkPtrType(cr, "Cairo")
  tx <- as.numeric(tx)
  ty <- as.numeric(ty)

  w <- .RGtkCall("S_cairo_translate", cr, tx, ty)

  return(w)
} 


cairoScale <-
function(cr, sx, sy)
{
  checkPtrType(cr, "Cairo")
  sx <- as.numeric(sx)
  sy <- as.numeric(sy)

  w <- .RGtkCall("S_cairo_scale", cr, sx, sy)

  return(w)
} 


cairoRotate <-
function(cr, angle)
{
  checkPtrType(cr, "Cairo")
  angle <- as.numeric(angle)

  w <- .RGtkCall("S_cairo_rotate", cr, angle)

  return(w)
} 


cairoTransform <-
function(cr, matrix)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(matrix, "CairoMatrix")

  w <- .RGtkCall("S_cairo_transform", cr, matrix)

  return(w)
} 


cairoSetMatrix <-
function(cr, matrix)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(matrix, "CairoMatrix")

  w <- .RGtkCall("S_cairo_set_matrix", cr, matrix)

  return(w)
} 


cairoIdentityMatrix <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_identity_matrix", cr)

  return(w)
} 


cairoUserToDevice <-
function(cr, x, y)
{
  checkPtrType(cr, "Cairo")
  x <- as.list(as.numeric(x))
  y <- as.list(as.numeric(y))

  w <- .RGtkCall("S_cairo_user_to_device", cr, x, y)

  return(w)
} 


cairoUserToDeviceDistance <-
function(cr, dx, dy)
{
  checkPtrType(cr, "Cairo")
  dx <- as.list(as.numeric(dx))
  dy <- as.list(as.numeric(dy))

  w <- .RGtkCall("S_cairo_user_to_device_distance", cr, dx, dy)

  return(w)
} 


cairoDeviceToUser <-
function(cr, x, y)
{
  checkPtrType(cr, "Cairo")
  x <- as.list(as.numeric(x))
  y <- as.list(as.numeric(y))

  w <- .RGtkCall("S_cairo_device_to_user", cr, x, y)

  return(w)
} 


cairoDeviceToUserDistance <-
function(cr, dx, dy)
{
  checkPtrType(cr, "Cairo")
  dx <- as.list(as.numeric(dx))
  dy <- as.list(as.numeric(dy))

  w <- .RGtkCall("S_cairo_device_to_user_distance", cr, dx, dy)

  return(w)
} 


cairoNewPath <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_new_path", cr)

  return(w)
} 


cairoMoveTo <-
function(cr, x, y)
{
  checkPtrType(cr, "Cairo")
  x <- as.numeric(x)
  y <- as.numeric(y)

  w <- .RGtkCall("S_cairo_move_to", cr, x, y)

  return(w)
} 


cairoLineTo <-
function(cr, x, y)
{
  checkPtrType(cr, "Cairo")
  x <- as.numeric(x)
  y <- as.numeric(y)

  w <- .RGtkCall("S_cairo_line_to", cr, x, y)

  return(w)
} 


cairoCurveTo <-
function(cr, x1, y1, x2, y2, x3, y3)
{
  checkPtrType(cr, "Cairo")
  x1 <- as.numeric(x1)
  y1 <- as.numeric(y1)
  x2 <- as.numeric(x2)
  y2 <- as.numeric(y2)
  x3 <- as.numeric(x3)
  y3 <- as.numeric(y3)

  w <- .RGtkCall("S_cairo_curve_to", cr, x1, y1, x2, y2, x3, y3)

  return(w)
} 


cairoArc <-
function(cr, xc, yc, radius, angle1, angle2)
{
  checkPtrType(cr, "Cairo")
  xc <- as.numeric(xc)
  yc <- as.numeric(yc)
  radius <- as.numeric(radius)
  angle1 <- as.numeric(angle1)
  angle2 <- as.numeric(angle2)

  w <- .RGtkCall("S_cairo_arc", cr, xc, yc, radius, angle1, angle2)

  return(w)
} 


cairoArcNegative <-
function(cr, xc, yc, radius, angle1, angle2)
{
  checkPtrType(cr, "Cairo")
  xc <- as.numeric(xc)
  yc <- as.numeric(yc)
  radius <- as.numeric(radius)
  angle1 <- as.numeric(angle1)
  angle2 <- as.numeric(angle2)

  w <- .RGtkCall("S_cairo_arc_negative", cr, xc, yc, radius, angle1, angle2)

  return(w)
} 


cairoRelMoveTo <-
function(cr, dx, dy)
{
  checkPtrType(cr, "Cairo")
  dx <- as.numeric(dx)
  dy <- as.numeric(dy)

  w <- .RGtkCall("S_cairo_rel_move_to", cr, dx, dy)

  return(w)
} 


cairoRelLineTo <-
function(cr, dx, dy)
{
  checkPtrType(cr, "Cairo")
  dx <- as.numeric(dx)
  dy <- as.numeric(dy)

  w <- .RGtkCall("S_cairo_rel_line_to", cr, dx, dy)

  return(w)
} 


cairoRelCurveTo <-
function(cr, dx1, dy1, dx2, dy2, dx3, dy3)
{
  checkPtrType(cr, "Cairo")
  dx1 <- as.numeric(dx1)
  dy1 <- as.numeric(dy1)
  dx2 <- as.numeric(dx2)
  dy2 <- as.numeric(dy2)
  dx3 <- as.numeric(dx3)
  dy3 <- as.numeric(dy3)

  w <- .RGtkCall("S_cairo_rel_curve_to", cr, dx1, dy1, dx2, dy2, dx3, dy3)

  return(w)
} 


cairoRectangle <-
function(cr, x, y, width, height)
{
  checkPtrType(cr, "Cairo")
  x <- as.numeric(x)
  y <- as.numeric(y)
  width <- as.numeric(width)
  height <- as.numeric(height)

  w <- .RGtkCall("S_cairo_rectangle", cr, x, y, width, height)

  return(w)
} 


cairoClosePath <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_close_path", cr)

  return(w)
} 


cairoPaint <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_paint", cr)

  return(w)
} 


cairoPaintWithAlpha <-
function(cr, alpha)
{
  checkPtrType(cr, "Cairo")
  alpha <- as.numeric(alpha)

  w <- .RGtkCall("S_cairo_paint_with_alpha", cr, alpha)

  return(w)
} 


cairoMask <-
function(cr, pattern)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(pattern, "CairoPattern")

  w <- .RGtkCall("S_cairo_mask", cr, pattern)

  return(w)
} 


cairoMaskSurface <-
function(cr, surface, surface.x, surface.y)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(surface, "CairoSurface")
  surface.x <- as.numeric(surface.x)
  surface.y <- as.numeric(surface.y)

  w <- .RGtkCall("S_cairo_mask_surface", cr, surface, surface.x, surface.y)

  return(w)
} 


cairoStroke <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_stroke", cr)

  return(w)
} 


cairoStrokePreserve <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_stroke_preserve", cr)

  return(w)
} 


cairoFill <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_fill", cr)

  return(w)
} 


cairoFillPreserve <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_fill_preserve", cr)

  return(w)
} 


cairoCopyPage <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_copy_page", cr)

  return(w)
} 


cairoShowPage <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_show_page", cr)

  return(w)
} 


cairoInStroke <-
function(cr, x, y)
{
  checkPtrType(cr, "Cairo")
  x <- as.numeric(x)
  y <- as.numeric(y)

  w <- .RGtkCall("S_cairo_in_stroke", cr, x, y)

  return(w)
} 


cairoInFill <-
function(cr, x, y)
{
  checkPtrType(cr, "Cairo")
  x <- as.numeric(x)
  y <- as.numeric(y)

  w <- .RGtkCall("S_cairo_in_fill", cr, x, y)

  return(w)
} 


cairoStrokeExtents <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_stroke_extents", cr)

  return(invisible(w))
} 


cairoFillExtents <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_fill_extents", cr)

  return(invisible(w))
} 


cairoResetClip <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_reset_clip", cr)

  return(w)
} 


cairoClip <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_clip", cr)

  return(w)
} 


cairoClipPreserve <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_clip_preserve", cr)

  return(w)
} 


cairoSelectFontFace <-
function(cr, family, slant, weight)
{
  checkPtrType(cr, "Cairo")
  family <- as.character(family)
  
  

  w <- .RGtkCall("S_cairo_select_font_face", cr, family, slant, weight)

  return(w)
} 


cairoSetFontSize <-
function(cr, size)
{
  checkPtrType(cr, "Cairo")
  size <- as.numeric(size)

  w <- .RGtkCall("S_cairo_set_font_size", cr, size)

  return(w)
} 


cairoSetFontMatrix <-
function(cr, matrix)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(matrix, "CairoMatrix")

  w <- .RGtkCall("S_cairo_set_font_matrix", cr, matrix)

  return(w)
} 


cairoGetFontMatrix <-
function(cr, matrix)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(matrix, "CairoMatrix")

  w <- .RGtkCall("S_cairo_get_font_matrix", cr, matrix)

  return(w)
} 


cairoShowText <-
function(cr, utf8)
{
  checkPtrType(cr, "Cairo")
  utf8 <- as.character(utf8)

  w <- .RGtkCall("S_cairo_show_text", cr, utf8)

  return(w)
} 


cairoShowGlyphs <-
function(cr, glyphs, num.glyphs)
{
  checkPtrType(cr, "Cairo")
  glyphs <- as.cairo_glyph_t(glyphs)
  num.glyphs <- as.integer(num.glyphs)

  w <- .RGtkCall("S_cairo_show_glyphs", cr, glyphs, num.glyphs)

  return(w)
} 


cairoGetFontFace <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_font_face", cr)

  return(w)
} 


cairoFontExtents <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_font_extents", cr)

  return(invisible(w))
} 


cairoSetFontFace <-
function(cr, font.face)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(font.face, "CairoFontFace")

  w <- .RGtkCall("S_cairo_set_font_face", cr, font.face)

  return(w)
} 


cairoTextExtents <-
function(cr, utf8)
{
  checkPtrType(cr, "Cairo")
  utf8 <- as.character(utf8)

  w <- .RGtkCall("S_cairo_text_extents", cr, utf8)

  return(invisible(w))
} 


cairoGlyphExtents <-
function(cr, glyphs)
{
  checkPtrType(cr, "Cairo")
  glyphs <- lapply(glyphs, function(x) { x <- as.cairo_glyph_t(x); x })

  w <- .RGtkCall("S_cairo_glyph_extents", cr, glyphs)

  return(invisible(w))
} 


cairoTextPath <-
function(cr, utf8)
{
  checkPtrType(cr, "Cairo")
  utf8 <- as.character(utf8)

  w <- .RGtkCall("S_cairo_text_path", cr, utf8)

  return(w)
} 


cairoGlyphPath <-
function(cr, glyphs)
{
  checkPtrType(cr, "Cairo")
  glyphs <- lapply(glyphs, function(x) { x <- as.cairo_glyph_t(x); x })

  w <- .RGtkCall("S_cairo_glyph_path", cr, glyphs)

  return(invisible(w))
} 


cairoSetFontOptions <-
function(cr, options)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(options, "CairoFontOptions")

  w <- .RGtkCall("S_cairo_set_font_options", cr, options)

  return(w)
} 


cairoGetFontOptions <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_font_options", cr)

  return(invisible(w))
} 


cairoFontFaceGetUserData <-
function(font.face, key)
{
  checkPtrType(font.face, "CairoFontFace")
  checkPtrType(key, "CairoUserDataKey")

  w <- .RGtkCall("S_cairo_font_face_get_user_data", font.face, key)

  return(w)
} 


cairoFontFaceSetUserData <-
function(font.face, key, user.data)
{
  checkPtrType(font.face, "CairoFontFace")
  checkPtrType(key, "CairoUserDataKey")
  

  w <- .RGtkCall("S_cairo_font_face_set_user_data", font.face, key, user.data)

  return(w)
} 


cairoFontFaceStatus <-
function(font.face)
{
  checkPtrType(font.face, "CairoFontFace")

  w <- .RGtkCall("S_cairo_font_face_status", font.face)

  return(w)
} 


cairoScaledFontCreate <-
function(font.face, font.matrix, ctm, option)
{
  checkPtrType(font.face, "CairoFontFace")
  checkPtrType(font.matrix, "CairoMatrix")
  checkPtrType(ctm, "CairoMatrix")
  checkPtrType(option, "CairoFontOptions")

  w <- .RGtkCall("S_cairo_scaled_font_create", font.face, font.matrix, ctm, option)

  return(w)
} 


cairoScaledFontExtents <-
function(scaled.font)
{
  checkPtrType(scaled.font, "CairoScaledFont")

  w <- .RGtkCall("S_cairo_scaled_font_extents", scaled.font)

  return(invisible(w))
} 


cairoScaledFontGlyphExtents <-
function(scaled.font, glyphs, num.glyphs)
{
  checkPtrType(scaled.font, "CairoScaledFont")
  glyphs <- as.cairo_glyph_t(glyphs)
  num.glyphs <- as.integer(num.glyphs)

  w <- .RGtkCall("S_cairo_scaled_font_glyph_extents", scaled.font, glyphs, num.glyphs)

  return(invisible(w))
} 


cairoScaledFontStatus <-
function(scaled.font)
{
  checkPtrType(scaled.font, "CairoScaledFont")

  w <- .RGtkCall("S_cairo_scaled_font_status", scaled.font)

  return(w)
} 


cairoGetOperator <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_operator", cr)

  return(w)
} 


cairoGetSource <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_source", cr)

  return(w)
} 


cairoGetTolerance <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_tolerance", cr)

  return(w)
} 


cairoGetAntialias <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_antialias", cr)

  return(w)
} 


cairoGetCurrentPoint <-
function(cr, x, y)
{
  checkPtrType(cr, "Cairo")
  x <- as.list(as.numeric(x))
  y <- as.list(as.numeric(y))

  w <- .RGtkCall("S_cairo_get_current_point", cr, x, y)

  return(w)
} 


cairoGetFillRule <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_fill_rule", cr)

  return(w)
} 


cairoGetLineWidth <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_line_width", cr)

  return(w)
} 


cairoGetLineCap <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_line_cap", cr)

  return(w)
} 


cairoGetLineJoin <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_line_join", cr)

  return(w)
} 


cairoGetMiterLimit <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_miter_limit", cr)

  return(w)
} 


cairoGetMatrix <-
function(cr, matrix)
{
  checkPtrType(cr, "Cairo")
  checkPtrType(matrix, "CairoMatrix")

  w <- .RGtkCall("S_cairo_get_matrix", cr, matrix)

  return(w)
} 


cairoGetTarget <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_target", cr)

  return(w)
} 


cairoCopyPath <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_copy_path", cr)

  return(w)
} 


cairoCopyPathFlat <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_copy_path_flat", cr)

  return(w)
} 


cairoAppendPath <-
function(cr, path)
{
  checkPtrType(cr, "Cairo")
  path <- as.cairo_path_t(path)

  w <- .RGtkCall("S_cairo_append_path", cr, path)

  return(w)
} 


cairoStatus <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_status", cr)

  return(w)
} 


cairoStatusToString <-
function(status)
{
  

  w <- .RGtkCall("S_cairo_status_to_string", status)

  return(w)
} 


cairoSurfaceCreateSimilar <-
function(other, content, width, height)
{
  checkPtrType(other, "CairoSurface")
  
  width <- as.integer(width)
  height <- as.integer(height)

  w <- .RGtkCall("S_cairo_surface_create_similar", other, content, width, height)

  return(w)
} 


cairoSurfaceReference <-
function(surface)
{
  checkPtrType(surface, "CairoSurface")

  w <- .RGtkCall("S_cairo_surface_reference", surface)

  return(w)
} 


cairoSurfaceDestroy <-
function(surface)
{
  checkPtrType(surface, "CairoSurface")

  w <- .RGtkCall("S_cairo_surface_destroy", surface)

  return(w)
} 


cairoSurfaceFinish <-
function(surface)
{
  checkPtrType(surface, "CairoSurface")

  w <- .RGtkCall("S_cairo_surface_finish", surface)

  return(w)
} 


cairoSurfaceWriteToPng <-
function(surface, filename)
{
  checkPtrType(surface, "CairoSurface")
  filename <- as.character(filename)

  w <- .RGtkCall("S_cairo_surface_write_to_png", surface, filename)

  return(w)
} 


cairoSurfaceGetUserData <-
function(surface, key)
{
  checkPtrType(surface, "CairoSurface")
  checkPtrType(key, "CairoUserDataKey")

  w <- .RGtkCall("S_cairo_surface_get_user_data", surface, key)

  return(w)
} 


cairoSurfaceSetUserData <-
function(surface, key, user.data)
{
  checkPtrType(surface, "CairoSurface")
  checkPtrType(key, "CairoUserDataKey")
  

  w <- .RGtkCall("S_cairo_surface_set_user_data", surface, key, user.data)

  return(w)
} 


cairoSurfaceFlush <-
function(surface)
{
  checkPtrType(surface, "CairoSurface")

  w <- .RGtkCall("S_cairo_surface_flush", surface)

  return(w)
} 


cairoSurfaceMarkDirty <-
function(surface)
{
  checkPtrType(surface, "CairoSurface")

  w <- .RGtkCall("S_cairo_surface_mark_dirty", surface)

  return(w)
} 


cairoSurfaceMarkDirtyRectangle <-
function(surface, x, y, width, height)
{
  checkPtrType(surface, "CairoSurface")
  x <- as.integer(x)
  y <- as.integer(y)
  width <- as.integer(width)
  height <- as.integer(height)

  w <- .RGtkCall("S_cairo_surface_mark_dirty_rectangle", surface, x, y, width, height)

  return(w)
} 


cairoSurfaceSetDeviceOffset <-
function(surface, x.offset, y.offset)
{
  checkPtrType(surface, "CairoSurface")
  x.offset <- as.numeric(x.offset)
  y.offset <- as.numeric(y.offset)

  w <- .RGtkCall("S_cairo_surface_set_device_offset", surface, x.offset, y.offset)

  return(w)
} 


cairoSurfaceGetFontOptions <-
function(surface)
{
  checkPtrType(surface, "CairoSurface")

  w <- .RGtkCall("S_cairo_surface_get_font_options", surface)

  return(invisible(w))
} 


cairoSurfaceStatus <-
function(surface)
{
  checkPtrType(surface, "CairoSurface")

  w <- .RGtkCall("S_cairo_surface_status", surface)

  return(w)
} 


cairoImageSurfaceCreate <-
function(format, width, height)
{
  
  width <- as.integer(width)
  height <- as.integer(height)

  w <- .RGtkCall("S_cairo_image_surface_create", format, width, height)

  return(w)
} 


cairoImageSurfaceCreateForData <-
function(data, format, width, height, stride)
{
  data <- as.list(as.raw(data))
  
  width <- as.integer(width)
  height <- as.integer(height)
  stride <- as.integer(stride)

  w <- .RGtkCall("S_cairo_image_surface_create_for_data", data, format, width, height, stride)

  return(w)
} 


cairoImageSurfaceGetWidth <-
function(surface)
{
  checkPtrType(surface, "CairoSurface")

  w <- .RGtkCall("S_cairo_image_surface_get_width", surface)

  return(w)
} 


cairoImageSurfaceGetHeight <-
function(surface)
{
  checkPtrType(surface, "CairoSurface")

  w <- .RGtkCall("S_cairo_image_surface_get_height", surface)

  return(w)
} 


cairoImageSurfaceCreateFromPng <-
function(filename)
{
  filename <- as.character(filename)

  w <- .RGtkCall("S_cairo_image_surface_create_from_png", filename)

  return(w)
} 


cairoPatternCreateRgb <-
function(red, green, blue)
{
  red <- as.numeric(red)
  green <- as.numeric(green)
  blue <- as.numeric(blue)

  w <- .RGtkCall("S_cairo_pattern_create_rgb", red, green, blue)

  return(w)
} 


cairoPatternCreateRgba <-
function(red, green, blue, alpha)
{
  red <- as.numeric(red)
  green <- as.numeric(green)
  blue <- as.numeric(blue)
  alpha <- as.numeric(alpha)

  w <- .RGtkCall("S_cairo_pattern_create_rgba", red, green, blue, alpha)

  return(w)
} 


cairoPatternCreateForSurface <-
function(surface)
{
  checkPtrType(surface, "CairoSurface")

  w <- .RGtkCall("S_cairo_pattern_create_for_surface", surface)

  return(w)
} 


cairoPatternCreateLinear <-
function(x0, y0, x1, y1)
{
  x0 <- as.numeric(x0)
  y0 <- as.numeric(y0)
  x1 <- as.numeric(x1)
  y1 <- as.numeric(y1)

  w <- .RGtkCall("S_cairo_pattern_create_linear", x0, y0, x1, y1)

  return(w)
} 


cairoPatternCreateRadial <-
function(cx0, cy0, radius0, cx1, cy1, radius1)
{
  cx0 <- as.numeric(cx0)
  cy0 <- as.numeric(cy0)
  radius0 <- as.numeric(radius0)
  cx1 <- as.numeric(cx1)
  cy1 <- as.numeric(cy1)
  radius1 <- as.numeric(radius1)

  w <- .RGtkCall("S_cairo_pattern_create_radial", cx0, cy0, radius0, cx1, cy1, radius1)

  return(w)
} 


cairoPatternStatus <-
function(pattern)
{
  checkPtrType(pattern, "CairoPattern")

  w <- .RGtkCall("S_cairo_pattern_status", pattern)

  return(w)
} 


cairoPatternAddColorStopRgb <-
function(pattern, offset, red, green, blue)
{
  checkPtrType(pattern, "CairoPattern")
  offset <- as.numeric(offset)
  red <- as.numeric(red)
  green <- as.numeric(green)
  blue <- as.numeric(blue)

  w <- .RGtkCall("S_cairo_pattern_add_color_stop_rgb", pattern, offset, red, green, blue)

  return(w)
} 


cairoPatternAddColorStopRgba <-
function(pattern, offset, red, green, blue, alpha)
{
  checkPtrType(pattern, "CairoPattern")
  offset <- as.numeric(offset)
  red <- as.numeric(red)
  green <- as.numeric(green)
  blue <- as.numeric(blue)
  alpha <- as.numeric(alpha)

  w <- .RGtkCall("S_cairo_pattern_add_color_stop_rgba", pattern, offset, red, green, blue, alpha)

  return(w)
} 


cairoPatternSetMatrix <-
function(pattern, matrix)
{
  checkPtrType(pattern, "CairoPattern")
  checkPtrType(matrix, "CairoMatrix")

  w <- .RGtkCall("S_cairo_pattern_set_matrix", pattern, matrix)

  return(w)
} 


cairoPatternGetMatrix <-
function(pattern, matrix)
{
  checkPtrType(pattern, "CairoPattern")
  checkPtrType(matrix, "CairoMatrix")

  w <- .RGtkCall("S_cairo_pattern_get_matrix", pattern, matrix)

  return(w)
} 


cairoPatternSetExtend <-
function(pattern, extend)
{
  checkPtrType(pattern, "CairoPattern")
  

  w <- .RGtkCall("S_cairo_pattern_set_extend", pattern, extend)

  return(w)
} 


cairoPatternGetExtend <-
function(pattern)
{
  checkPtrType(pattern, "CairoPattern")

  w <- .RGtkCall("S_cairo_pattern_get_extend", pattern)

  return(w)
} 


cairoPatternSetFilter <-
function(pattern, filter)
{
  checkPtrType(pattern, "CairoPattern")
  

  w <- .RGtkCall("S_cairo_pattern_set_filter", pattern, filter)

  return(w)
} 


cairoPatternGetFilter <-
function(pattern)
{
  checkPtrType(pattern, "CairoPattern")

  w <- .RGtkCall("S_cairo_pattern_get_filter", pattern)

  return(w)
} 


cairoMatrixInit <-
function(xx, yx, xy, yy, x0, y0)
{
  xx <- as.numeric(xx)
  yx <- as.numeric(yx)
  xy <- as.numeric(xy)
  yy <- as.numeric(yy)
  x0 <- as.numeric(x0)
  y0 <- as.numeric(y0)

  w <- .RGtkCall("S_cairo_matrix_init", xx, yx, xy, yy, x0, y0)

  return(invisible(w))
} 


cairoMatrixInitIdentity <-
function()
{
  

  w <- .RGtkCall("S_cairo_matrix_init_identity")

  return(invisible(w))
} 


cairoMatrixInitTranslate <-
function(tx, ty)
{
  tx <- as.numeric(tx)
  ty <- as.numeric(ty)

  w <- .RGtkCall("S_cairo_matrix_init_translate", tx, ty)

  return(invisible(w))
} 


cairoMatrixInitScale <-
function(sx, sy)
{
  sx <- as.numeric(sx)
  sy <- as.numeric(sy)

  w <- .RGtkCall("S_cairo_matrix_init_scale", sx, sy)

  return(invisible(w))
} 


cairoMatrixInitRotate <-
function(radians)
{
  radians <- as.numeric(radians)

  w <- .RGtkCall("S_cairo_matrix_init_rotate", radians)

  return(invisible(w))
} 


cairoMatrixTranslate <-
function(matrix, tx, ty)
{
  checkPtrType(matrix, "CairoMatrix")
  tx <- as.numeric(tx)
  ty <- as.numeric(ty)

  w <- .RGtkCall("S_cairo_matrix_translate", matrix, tx, ty)

  return(w)
} 


cairoMatrixScale <-
function(matrix, sx, sy)
{
  checkPtrType(matrix, "CairoMatrix")
  sx <- as.numeric(sx)
  sy <- as.numeric(sy)

  w <- .RGtkCall("S_cairo_matrix_scale", matrix, sx, sy)

  return(w)
} 


cairoMatrixRotate <-
function(matrix, radians)
{
  checkPtrType(matrix, "CairoMatrix")
  radians <- as.numeric(radians)

  w <- .RGtkCall("S_cairo_matrix_rotate", matrix, radians)

  return(w)
} 


cairoMatrixInvert <-
function(matrix)
{
  checkPtrType(matrix, "CairoMatrix")

  w <- .RGtkCall("S_cairo_matrix_invert", matrix)

  return(w)
} 


cairoMatrixMultiply <-
function(result, a, b)
{
  checkPtrType(result, "CairoMatrix")
  checkPtrType(a, "CairoMatrix")
  checkPtrType(b, "CairoMatrix")

  w <- .RGtkCall("S_cairo_matrix_multiply", result, a, b)

  return(w)
} 


cairoMatrixTransformDistance <-
function(matrix, dx, dy)
{
  checkPtrType(matrix, "CairoMatrix")
  dx <- as.list(as.numeric(dx))
  dy <- as.list(as.numeric(dy))

  w <- .RGtkCall("S_cairo_matrix_transform_distance", matrix, dx, dy)

  return(w)
} 


cairoMatrixTransformPoint <-
function(matrix, x, y)
{
  checkPtrType(matrix, "CairoMatrix")
  x <- as.list(as.numeric(x))
  y <- as.list(as.numeric(y))

  w <- .RGtkCall("S_cairo_matrix_transform_point", matrix, x, y)

  return(w)
} 


cairoFontOptionsCreate <-
function()
{
  

  w <- .RGtkCall("S_cairo_font_options_create")

  return(w)
} 


cairoFontOptionsCopy <-
function(original)
{
  checkPtrType(original, "CairoFontOptions")

  w <- .RGtkCall("S_cairo_font_options_copy", original)

  return(w)
} 


cairoFontOptionsStatus <-
function(options)
{
  checkPtrType(options, "CairoFontOptions")

  w <- .RGtkCall("S_cairo_font_options_status", options)

  return(w)
} 


cairoFontOptionsMerge <-
function(options, other)
{
  checkPtrType(options, "CairoFontOptions")
  checkPtrType(other, "CairoFontOptions")

  w <- .RGtkCall("S_cairo_font_options_merge", options, other)

  return(w)
} 


cairoFontOptionsEqual <-
function(options, other)
{
  checkPtrType(options, "CairoFontOptions")
  checkPtrType(other, "CairoFontOptions")

  w <- .RGtkCall("S_cairo_font_options_equal", options, other)

  return(w)
} 


cairoFontOptionsSetAntialias <-
function(options, antialias)
{
  checkPtrType(options, "CairoFontOptions")
  

  w <- .RGtkCall("S_cairo_font_options_set_antialias", options, antialias)

  return(w)
} 


cairoFontOptionsGetAntialias <-
function(options)
{
  checkPtrType(options, "CairoFontOptions")

  w <- .RGtkCall("S_cairo_font_options_get_antialias", options)

  return(w)
} 


cairoFontOptionsSetSubpixelOrder <-
function(options, subpixel.order)
{
  checkPtrType(options, "CairoFontOptions")
  

  w <- .RGtkCall("S_cairo_font_options_set_subpixel_order", options, subpixel.order)

  return(w)
} 


cairoFontOptionsGetSubpixelOrder <-
function(options)
{
  checkPtrType(options, "CairoFontOptions")

  w <- .RGtkCall("S_cairo_font_options_get_subpixel_order", options)

  return(w)
} 


cairoFontOptionsSetHintStyle <-
function(options, hint.style)
{
  checkPtrType(options, "CairoFontOptions")
  

  w <- .RGtkCall("S_cairo_font_options_set_hint_style", options, hint.style)

  return(w)
} 


cairoFontOptionsGetHintStyle <-
function(options)
{
  checkPtrType(options, "CairoFontOptions")

  w <- .RGtkCall("S_cairo_font_options_get_hint_style", options)

  return(w)
} 


cairoFontOptionsSetHintMetrics <-
function(options, hint.metrics)
{
  checkPtrType(options, "CairoFontOptions")
  

  w <- .RGtkCall("S_cairo_font_options_set_hint_metrics", options, hint.metrics)

  return(w)
} 


cairoFontOptionsGetHintMetrics <-
function(options)
{
  checkPtrType(options, "CairoFontOptions")

  w <- .RGtkCall("S_cairo_font_options_get_hint_metrics", options)

  return(w)
} 


cairoPushGroup <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_push_group", cr)

  return(w)
} 


cairoPushGroupWithContent <-
function(cr, content)
{
  checkPtrType(cr, "Cairo")
  

  w <- .RGtkCall("S_cairo_push_group_with_content", cr, content)

  return(w)
} 


cairoPopGroup <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_pop_group", cr)

  return(w)
} 


cairoPopGroupToSource <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_pop_group_to_source", cr)

  return(w)
} 


cairoGetGroupTarget <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_get_group_target", cr)

  return(w)
} 


cairoNewSubPath <-
function(cr)
{
  checkPtrType(cr, "Cairo")

  w <- .RGtkCall("S_cairo_new_sub_path", cr)

  return(w)
} 


cairoScaledFontGetFontFace <-
function(scaled.font)
{
  checkPtrType(scaled.font, "CairoScaledFont")

  w <- .RGtkCall("S_cairo_scaled_font_get_font_face", scaled.font)

  return(w)
} 


cairoScaledFontGetFontMatrix <-
function(scaled.font)
{
  checkPtrType(scaled.font, "CairoScaledFont")

  w <- .RGtkCall("S_cairo_scaled_font_get_font_matrix", scaled.font)

  return(invisible(w))
} 


cairoScaledFontGetCtm <-
function(scaled.font)
{
  checkPtrType(scaled.font, "CairoScaledFont")

  w <- .RGtkCall("S_cairo_scaled_font_get_ctm", scaled.font)

  return(invisible(w))
} 


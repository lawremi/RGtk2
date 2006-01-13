cairo <- cairoCreate

cairoPattern <-
function(red, green, blue, alpha, surface, x0, y0, x1, y1, cx0, cy0, radius0, cx1, cy1, radius1, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(red)) {
		if (!missing(alpha)) {
			cairoPatternCreateRgba(red, green, blue, alpha, .flush, .depwarn)
		}
		else {
			cairoPatternCreateRgb(red, green, blue, .flush, .depwarn)
		}
	}
	else {
		if (!missing(surface)) {
			cairoPatternCreateForSurface(surface, .flush, .depwarn)
		}
		else {
			if (!missing(x0)) {
				cairoPatternCreateLinear(x0, y0, x1, y1, .flush, .depwarn)
			}
			else {
				cairoPatternCreateRadial(cx0, cy0, radius0, cx1, cy1, radius1, .flush, .depwarn)
			}
		}
	}
}

cairoSurface <-
function(width, height, format, other, content, data, stride, filename, con, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(other)) {
		cairoSurfaceCreateSimilar(other, content, width, height, .flush, .depwarn)
	}
	else {
		if (!missing(width)) {
			if (!missing(data)) {
				cairoImageSurfaceCreateForData(data, format, width, height, stride, .flush, .depwarn)
			}
			else {
				cairoImageSurfaceCreate(format, width, height, .flush, .depwarn)
			}
		}
		else {
			if (!missing(filename)) {
				cairoImageSurfaceCreateFromPng(filename, .flush, .depwarn)
			}
			else {
				cairoImageSurfaceCreateFromPngStream(con, .flush, .depwarn)
			}
		}
	}
}

cairoScaledFont <- cairoScaledFontCreate

cairoFontOptions <- cairoFontOptionsCreate


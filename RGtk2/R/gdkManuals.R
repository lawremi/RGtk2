# reason: generator leaves off 'width' parameter thinking it holds the length of 'data'
gdkBitmapCreateFromData <-
function(drawable = NULL, data, width, height, .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( drawable )) checkPtrType(drawable, "GdkDrawable")
	data <- as.list(as.integer(data))
	height <- as.integer(height)
	width <- as.integer(width)
	
	w <- .RGtkCall("S_gdk_bitmap_create_from_data", drawable, data, width, height, .flush = .flush)

	return(w)
} 

# reason: the following functions need the text length param omitted for convenience
GdkTextExtents <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GdkFont")
        text <- as.character(text)
        text.length <- nchar(text)

        w <- .RGtkCall("S_gdk_text_extents", object, text, text.length, .flush = .flush)

        return(invisible(w))
}

# reason: need to omit the GdkWindowHints flags
gdkWindowConstrainSize <-
function(geometry, width, height, .flush = TRUE, .depwarn = TRUE)
{
        geometry <- as.GdkGeometry(geometry)
        width <- as.integer(width)
        height <- as.integer(height)

        w <- .RGtkCall("S_gdk_window_constrain_size", geometry, width, height, .flush = .flush)

        return(invisible(w))
}

# reason: need to omit memory handling stuff
gdkPixbufNewFromData <-
function(data, colorspace, has.alpha, bits.per.sample, width, height, rowstride, .flush = TRUE, .depwarn = TRUE)
{
        data <- as.list(as.integer(data))
        
        has.alpha <- as.logical(has.alpha)
        bits.per.sample <- as.integer(bits.per.sample)
        width <- as.integer(width)
        height <- as.integer(height)
        rowstride <- as.integer(rowstride)
        
        w <- .RGtkCall("S_gdk_pixbuf_new_from_data", data, colorspace, has.alpha, bits.per.sample, width, height, rowstride, .flush = .flush)

        return(w)
}

# reason: omit the GdkWindowAttr mask
gdkWindowNew <-
function(parent, attributes, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(parent, "GdkWindow")
        attributes <- as.GdkWindowAttr(attributes)
        
        w <- .RGtkCall("S_gdk_window_new", parent, attributes, .flush = .flush)

        return(w)
}

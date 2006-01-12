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
# reason: need to include the rowstride param (it is not length of buffer)
gdkDrawRgbImage <-
function (object, gc, x, y, width, height, dith, rgb.buf, rowstride, .flush = TRUE, 
    .depwarn = TRUE) 
{
    checkPtrType(object, "GdkDrawable")
    checkPtrType(gc, "GdkGC")
    x <- as.integer(x)
    y <- as.integer(y)
    width <- as.integer(width)
    height <- as.integer(height)
    rgb.buf <- as.list(as.integer(rgb.buf))
	rowstride <- as.integer(rowstride)
    w <- .RGtkCall("S_gdk_draw_rgb_image", object, gc, x, y, 
        width, height, dith, rgb.buf, rowstride, PACKAGE = "RGtk2", .flush = .flush)
    return(w)
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
function(parent = NULL, attributes, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(parent, "GdkWindow", nullOk = T)
        attributes <- as.GdkWindowAttr(attributes)
        
        w <- .RGtkCall("S_gdk_window_new", parent, attributes, .flush = .flush)

        return(w)
}

# reason: calculating the text length in bytes is a pain, it's a null-terminated string so..
gdkTextExtents <- gdkStringExtents

# reason: the API defines the callback in a weird way
gdkWindowInvalidateMaybeRecurse <-
function(object, region, child.func, user.data, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GdkWindow")
        checkPtrType(region, "GdkRegion")
        child.func <- as.function(child.func)
        

        w <- .RGtkCall("S_gdk_window_invalidate_maybe_recurse", object, region, child.func, user.data, PACKAGE = "RGtk2", .flush = .flush)

        return(invisible(w))
}

# reason: collect var-args and send to gdkPixbufSavev
gdkPixbufSave <-
function(object, filename, type, ..., .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
        checkPtrType(object, "GdkPixbuf")
        filename <- as.character(filename)
        type <- as.character(type)
		args <- c(...)

		w <- gdkPixbufSavev(object, filename, type, names(args), args, .flush, .depwarn, .errwarn)

        return(w)
}
# reason: collect var-args and send to gdkPixbufSaveToCallbackv
gdkPixbufSaveToCallback <-
function(object, save.func, user.data, type, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
        checkPtrType(object, "GdkPixbuf")
        save.func <- as.function(save.func)
        type <- as.character(type)
		args <- c(...)

		w <- gdkPixbufSaveToCallbackv(object, save.func, user.data, type, names(args), args, .flush, .depwarn, .errwarn)
        
        return(w)
}
gdkColormapAllocColors <-
function(colormap, colors, writeable, best.match, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(colormap, "GdkColormap")
	writeable <- as.logical(writeable)
	best.match <- as.logical(best.match)
	sapply(colors, function(color) gdkColormapAllocColor(colormap, color, writeable, best.match, .flush, .depwarn))
}

# reason: handle var-args by passing to save_to_bufferv
gdkPixbufSaveToBuffer <-
function(object, type, ..., .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
        checkPtrType(object, "GdkPixbuf")
        type <- as.character(type)
		args <- c(...)

        w <- object$saveToBufferv(object, type, names(args), args, .flush, .depwarn, .errwarn)

        return(invisible(w))
}

# reason: allow access to the GdkPixbuf error domain quark
GDK_PIXBUF_ERROR <- gdkPixbufErrorQuark <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_pixbuf_error_quark", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 

gdkDisplaySetPointerHooks <-
function(object, new.hooks, .flush = TRUE, .depwarn = TRUE)
{
        notimplemented("does not have user data for the hooks. What are you trying to do... implement an event system in R? Come on")
}
gdkSetPointerHooks <-
function(object, new.hooks, .flush = TRUE, .depwarn = TRUE)
{
        notimplemented("does not have user data for the hooks. What are you trying to do... implement an event system in R? Come on")
}
gdkColorsStore <-
function(object, colors, .flush = TRUE, .depwarn = TRUE)
{
	notimplemented("is obsolete and would probably break things if you used it. Just use a new colormap or something")
}

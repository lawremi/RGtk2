gdkColormap <- gdkColormapNew

gdkDisplay <- gdkDisplayOpen

gdkDragContext <- gdkDragContextNew

gdkWindow <- gdkWindowNew

gdkPixmap <- gdkPixmapNew

gdkGC <- gdkGCNew

gdkImage <- gdkImageNew

gdkPixbuf <-
function(width, height, filename, colorspace, has.alpha, bits.per.sample, data, preserve.aspect.ratio, rowstride, .errwarn = TRUE)
{
	if (!missing(colorspace)) {
		if (!missing(data)) {
			gdkPixbufNewFromData(data, colorspace, has.alpha, bits.per.sample, width, height, rowstride)
		}
		else {
			gdkPixbufNew(colorspace, has.alpha, bits.per.sample, width, height)
		}
	}
	else {
		if (!missing(width)) {
			if (!missing(preserve.aspect.ratio)) {
				gdkPixbufNewFromFileAtScale(filename, width, height, preserve.aspect.ratio, .errwarn)
			}
			else {
				gdkPixbufNewFromFileAtSize(filename, width, height, .errwarn)
			}
		}
		else {
			if (!missing(filename)) {
				gdkPixbufNewFromFile(filename, .errwarn)
			}
			else {
				gdkPixbufNewFromXpmData(data)
			}
		}
	}
}

gdkPixbufAnimation <- gdkPixbufAnimationNewFromFile

gdkPixbufSimpleAnim <- gdkPixbufSimpleAnimNew

gdkPixbufLoader <-
function(image.type, mime.type, .errwarn = TRUE)
{
	if (!missing(image.type)) {
		gdkPixbufLoaderNewWithType(image.type, .errwarn)
	}
	else {
		if (!missing(.errwarn)) {
			gdkPixbufLoaderNewWithMimeType(mime.type, .errwarn)
		}
		else {
			gdkPixbufLoaderNew()
		}
	}
}

gdkPangoRenderer <- gdkPangoRendererNew


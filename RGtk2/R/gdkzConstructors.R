gdkColormap <- gdkColormapNew

gdkDisplay <- gdkDisplayOpen

gdkDragContext <- gdkDragContextNew

gdkWindow <- gdkWindowNew

gdkPixmap <- gdkPixmapNew

gdkGC <- gdkGCNew

gdkImage <- gdkImageNew

gdkPixbuf <-
function(width, height, filename, colorspace, has.alpha, bits.per.sample, data, preserve.aspect.ratio, rowstride, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	if (!missing(colorspace)) {
		if (!missing(data)) {
			gdkPixbufNewFromData(data, colorspace, has.alpha, bits.per.sample, width, height, rowstride, .flush, .depwarn)
		}
		else {
			gdkPixbufNew(colorspace, has.alpha, bits.per.sample, width, height, .flush, .depwarn)
		}
	}
	else {
		if (!missing(width)) {
			if (!missing(preserve.aspect.ratio)) {
				gdkPixbufNewFromFileAtScale(filename, width, height, preserve.aspect.ratio, .flush, .depwarn, .errwarn)
			}
			else {
				gdkPixbufNewFromFileAtSize(filename, width, height, .flush, .depwarn, .errwarn)
			}
		}
		else {
			if (!missing(filename)) {
				gdkPixbufNewFromFile(filename, .flush, .depwarn, .errwarn)
			}
			else {
				gdkPixbufNewFromXpmData(data, .flush, .depwarn)
			}
		}
	}
}

gdkPixbufAnimation <- gdkPixbufAnimationNewFromFile

gdkPixbufSimpleAnim <- gdkPixbufSimpleAnimNew

gdkPixbufLoader <-
function(image.type, mime.type, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	if (!missing(image.type)) {
		gdkPixbufLoaderNewWithType(image.type, .flush, .depwarn, .errwarn)
	}
	else {
		if (!missing(.errwarn)) {
			gdkPixbufLoaderNewWithMimeType(mime.type, .flush, .depwarn, .errwarn)
		}
		else {
			gdkPixbufLoaderNew(.flush, .depwarn)
		}
	}
}

gdkPangoRenderer <- gdkPangoRendererNew


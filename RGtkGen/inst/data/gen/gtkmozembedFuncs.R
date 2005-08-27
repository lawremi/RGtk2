
gtkMozEmbedGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_moz_embed_get_type", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_moz_embed_new", PACKAGE = "RGtk", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkMozEmbedPushStartup <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_moz_embed_push_startup", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedPopStartup <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_moz_embed_pop_startup", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedSetCompPath <-
function(aPath, .flush = TRUE, .depwarn = TRUE)
{
	aPath <- as.character(aPath)

	w <- .RGtkCall("S_gtk_moz_embed_set_comp_path", aPath, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedSetProfilePath <-
function(aDir, aName, .flush = TRUE, .depwarn = TRUE)
{
	aDir <- as.character(aDir)
	aName <- as.character(aName)

	w <- .RGtkCall("S_gtk_moz_embed_set_profile_path", aDir, aName, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedLoadUrl <-
function(object, url, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")
	url <- as.character(url)

	w <- .RGtkCall("S_gtk_moz_embed_load_url", object, url, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


gtkMozEmbedStopLoad <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_stop_load", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


gtkMozEmbedCanGoBack <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_can_go_back", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedCanGoForward <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_can_go_forward", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedGoBack <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_go_back", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


gtkMozEmbedGoForward <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_go_forward", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


gtkMozEmbedRenderData <-
function(object, data, len, base.uri, mime.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")
	data <- as.character(data)
	len <- as.numeric(len)
	base.uri <- as.character(base.uri)
	mime.type <- as.character(mime.type)

	w <- .RGtkCall("S_gtk_moz_embed_render_data", object, data, len, base.uri, mime.type, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


gtkMozEmbedOpenStream <-
function(object, base.uri, mime.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")
	base.uri <- as.character(base.uri)
	mime.type <- as.character(mime.type)

	w <- .RGtkCall("S_gtk_moz_embed_open_stream", object, base.uri, mime.type, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


gtkMozEmbedAppendData <-
function(object, data, len, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")
	data <- as.character(data)
	len <- as.numeric(len)

	w <- .RGtkCall("S_gtk_moz_embed_append_data", object, data, len, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


gtkMozEmbedCloseStream <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_close_stream", object, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


gtkMozEmbedGetLinkMessage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_get_link_message", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedGetJsStatus <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_get_js_status", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedGetTitle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_get_title", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedGetLocation <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_get_location", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedReload <-
function(object, flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")
	flags <- as.integer(flags)

	w <- .RGtkCall("S_gtk_moz_embed_reload", object, flags, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


gtkMozEmbedSetChromeMask <-
function(object, flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")
	flags <- as.numeric(flags)

	w <- .RGtkCall("S_gtk_moz_embed_set_chrome_mask", object, flags, PACKAGE = "RGtk", .flush = .flush)

	return(invisible(w))
} 


gtkMozEmbedGetChromeMask <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_get_chrome_mask", object, PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


gtkMozEmbedSingleGet <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_moz_embed_single_get", PACKAGE = "RGtk", .flush = .flush)

	return(w)
} 


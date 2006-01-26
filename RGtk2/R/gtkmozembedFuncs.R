
gtkMozEmbedGetType <-
function()
{
	

	w <- .RGtkCall("S_gtk_moz_embed_get_type", PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedNew <-
function(show = TRUE)
{
	

	w <- .RGtkCall("S_gtk_moz_embed_new", PACKAGE = "RGtk2")

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkMozEmbedPushStartup <-
function()
{
	

	w <- .RGtkCall("S_gtk_moz_embed_push_startup", PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedPopStartup <-
function()
{
	

	w <- .RGtkCall("S_gtk_moz_embed_pop_startup", PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedSetCompPath <-
function(aPath)
{
	aPath <- as.character(aPath)

	w <- .RGtkCall("S_gtk_moz_embed_set_comp_path", aPath, PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedSetProfilePath <-
function(aDir, aName)
{
	aDir <- as.character(aDir)
	aName <- as.character(aName)

	w <- .RGtkCall("S_gtk_moz_embed_set_profile_path", aDir, aName, PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedLoadUrl <-
function(object, url)
{
	checkPtrType(object, "GtkMozEmbed")
	url <- as.character(url)

	w <- .RGtkCall("S_gtk_moz_embed_load_url", object, url, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gtkMozEmbedStopLoad <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_stop_load", object, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gtkMozEmbedCanGoBack <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_can_go_back", object, PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedCanGoForward <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_can_go_forward", object, PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedGoBack <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_go_back", object, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gtkMozEmbedGoForward <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_go_forward", object, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gtkMozEmbedRenderData <-
function(object, data, len, base.uri, mime.type)
{
	checkPtrType(object, "GtkMozEmbed")
	data <- as.character(data)
	len <- as.numeric(len)
	base.uri <- as.character(base.uri)
	mime.type <- as.character(mime.type)

	w <- .RGtkCall("S_gtk_moz_embed_render_data", object, data, len, base.uri, mime.type, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gtkMozEmbedOpenStream <-
function(object, base.uri, mime.type)
{
	checkPtrType(object, "GtkMozEmbed")
	base.uri <- as.character(base.uri)
	mime.type <- as.character(mime.type)

	w <- .RGtkCall("S_gtk_moz_embed_open_stream", object, base.uri, mime.type, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gtkMozEmbedAppendData <-
function(object, data, len)
{
	checkPtrType(object, "GtkMozEmbed")
	data <- as.character(data)
	len <- as.numeric(len)

	w <- .RGtkCall("S_gtk_moz_embed_append_data", object, data, len, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gtkMozEmbedCloseStream <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_close_stream", object, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gtkMozEmbedGetLinkMessage <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_get_link_message", object, PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedGetJsStatus <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_get_js_status", object, PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedGetTitle <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_get_title", object, PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedGetLocation <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_get_location", object, PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedReload <-
function(object, flags)
{
	checkPtrType(object, "GtkMozEmbed")
	flags <- as.integer(flags)

	w <- .RGtkCall("S_gtk_moz_embed_reload", object, flags, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gtkMozEmbedSetChromeMask <-
function(object, flags)
{
	checkPtrType(object, "GtkMozEmbed")
	flags <- as.numeric(flags)

	w <- .RGtkCall("S_gtk_moz_embed_set_chrome_mask", object, flags, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gtkMozEmbedGetChromeMask <-
function(object)
{
	checkPtrType(object, "GtkMozEmbed")

	w <- .RGtkCall("S_gtk_moz_embed_get_chrome_mask", object, PACKAGE = "RGtk2")

	return(w)
} 


gtkMozEmbedSingleGet <-
function()
{
	

	w <- .RGtkCall("S_gtk_moz_embed_single_get", PACKAGE = "RGtk2")

	return(w)
} 


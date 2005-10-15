
gladeRequire <-
function(library, .flush = TRUE, .depwarn = TRUE)
{
	library <- as.character(library)

	w <- .RGtkCall("S_glade_require", library, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gladeProvide <-
function(library, .flush = TRUE, .depwarn = TRUE)
{
	library <- as.character(library)

	w <- .RGtkCall("S_glade_provide", library, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gladeXMLGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_glade_xml_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gladeXMLNew <-
function(fname, root = "NULL", domain = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	fname <- as.character(fname)
	if (!is.null( root )) root <- as.character(root)
	if (!is.null( domain )) domain <- as.character(domain)

	w <- .RGtkCall("S_glade_xml_new", fname, root, domain, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gladeXMLSignalAutoconnect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GladeXML")

	w <- .RGtkCall("S_glade_xml_signal_autoconnect", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gladeXMLSignalConnectFull <-
function(object, handler.name, func, user.data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GladeXML")
	handler.name <- as.character(handler.name)
	func <- as.function(func)
	

	w <- .RGtkCall("S_glade_xml_signal_connect_full", object, handler.name, func, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gladeXMLSignalAutoconnectFull <-
function(object, func, user.data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GladeXML")
	func <- as.function(func)
	

	w <- .RGtkCall("S_glade_xml_signal_autoconnect_full", object, func, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gladeXMLGetWidget <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GladeXML")
	name <- as.character(name)

	w <- .RGtkCall("S_glade_xml_get_widget", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gladeXMLGetWidgetPrefix <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GladeXML")
	name <- as.character(name)

	w <- .RGtkCall("S_glade_xml_get_widget_prefix", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gladeGetWidgetName <-
function(widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_glade_get_widget_name", widget, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gladeGetWidgetTree <-
function(widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_glade_get_widget_tree", widget, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gladeSetCustomHandler <-
function(handler, user.data, .flush = TRUE, .depwarn = TRUE)
{
	handler <- as.function(handler)
	

	w <- .RGtkCall("S_glade_set_custom_handler", handler, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


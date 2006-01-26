
gladeRequire <-
function(library)
{
	library <- as.character(library)

	w <- .RGtkCall("S_glade_require", library, PACKAGE = "RGtk2")

	return(w)
} 


gladeProvide <-
function(library)
{
	library <- as.character(library)

	w <- .RGtkCall("S_glade_provide", library, PACKAGE = "RGtk2")

	return(w)
} 


gladeXMLGetType <-
function()
{
	

	w <- .RGtkCall("S_glade_xml_get_type", PACKAGE = "RGtk2")

	return(w)
} 


gladeXMLNew <-
function(fname, root = NULL, domain = NULL)
{
	fname <- as.character(fname)
	if (!is.null( root )) root <- as.character(root)
	if (!is.null( domain )) domain <- as.character(domain)

	w <- .RGtkCall("S_glade_xml_new", fname, root, domain, PACKAGE = "RGtk2")

	return(w)
} 


gladeXMLSignalConnect <-
function(object, handlername, func)
{
	checkPtrType(object, "GladeXML")
	handlername <- as.character(handlername)
	func <- as.function(func)

	w <- .RGtkCall("S_glade_xml_signal_connect", object, handlername, func, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gladeXMLSignalConnectData <-
function(object, handlername, func, user.data)
{
	checkPtrType(object, "GladeXML")
	handlername <- as.character(handlername)
	func <- as.function(func)
	

	w <- .RGtkCall("S_glade_xml_signal_connect_data", object, handlername, func, user.data, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gladeXMLSignalAutoconnect <-
function(object)
{
	checkPtrType(object, "GladeXML")

	w <- .RGtkCall("S_glade_xml_signal_autoconnect", object, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gladeXMLSignalConnectFull <-
function(object, handler.name, func, user.data)
{
	checkPtrType(object, "GladeXML")
	handler.name <- as.character(handler.name)
	func <- as.function(func)
	

	w <- .RGtkCall("S_glade_xml_signal_connect_full", object, handler.name, func, user.data, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gladeXMLSignalAutoconnectFull <-
function(object, func, user.data)
{
	checkPtrType(object, "GladeXML")
	func <- as.function(func)
	

	w <- .RGtkCall("S_glade_xml_signal_autoconnect_full", object, func, user.data, PACKAGE = "RGtk2")

	return(invisible(w))
} 


gladeXMLGetWidget <-
function(object, name)
{
	checkPtrType(object, "GladeXML")
	name <- as.character(name)

	w <- .RGtkCall("S_glade_xml_get_widget", object, name, PACKAGE = "RGtk2")

	return(w)
} 


gladeXMLGetWidgetPrefix <-
function(object, name)
{
	checkPtrType(object, "GladeXML")
	name <- as.character(name)

	w <- .RGtkCall("S_glade_xml_get_widget_prefix", object, name, PACKAGE = "RGtk2")

	return(w)
} 


gladeGetWidgetName <-
function(widget)
{
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_glade_get_widget_name", widget, PACKAGE = "RGtk2")

	return(w)
} 


gladeGetWidgetTree <-
function(widget)
{
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_glade_get_widget_tree", widget, PACKAGE = "RGtk2")

	return(w)
} 


gladeSetCustomHandler <-
function(handler, user.data)
{
	handler <- as.function(handler)
	

	w <- .RGtkCall("S_glade_set_custom_handler", handler, user.data, PACKAGE = "RGtk2")

	return(w)
} 


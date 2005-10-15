# reason: just wanted to add default for size parameter, for convenience
gladeXMLNewFromBuffer <-
function(buffer, size = nchar(buffer), root = "NULL", domain = "NULL", .flush = TRUE, .depwarn = TRUE)
{
        buffer <- as.character(buffer)
        size <- as.integer(size)
        if (!is.null( root )) root <- as.character(root)
        if (!is.null( domain )) domain <- as.character(domain)

        w <- .RGtkCall("S_glade_xml_new_from_buffer", buffer, size, root, domain, .flush = .flush)

        return(w)
}

# reason: the following could not be generated due to the bad GtkSignalFunc type
# - we're just treating it as any arbitrary R callback
gladeXMLSignalConnect <-
function(object, handlername, func, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GladeXML")
        handlername <- as.character(handlername)
        func <- as.function(func)

        w <- .RGtkCall("S_glade_xml_signal_connect", object, handlername, func, .flush = .flush)

        return(invisible(w))
}
gladeXMLSignalConnectData <-
function(object, handlername, func, user.data, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GladeXML")
        handlername <- as.character(handlername)
        func <- as.function(func)
        
        w <- .RGtkCall("S_glade_xml_signal_connect_data", object, handlername, func, user.data, .flush = .flush)

        return(invisible(w))
}

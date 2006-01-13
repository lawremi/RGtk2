gladeXML <-
function(root = NULL, domain = NULL, fname, buffer, size = nchar(buffer), .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(fname)) {
		gladeXMLNew(fname, root, domain, .flush, .depwarn)
	}
	else {
		gladeXMLNewFromBuffer(buffer, size, root, domain, .flush, .depwarn)
	}
}


gladeXML <-
function(root = NULL, domain = NULL, fname, buffer, size = nchar(buffer))
{
  if (!missing(fname)) {
    gladeXMLNew(fname, root, domain)
  }
  else {
    gladeXMLNewFromBuffer(buffer, size, root, domain)
  }
}


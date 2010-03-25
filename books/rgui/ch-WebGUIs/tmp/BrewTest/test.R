require(XML)
fname <- "brew.html"

doThis <- function() {
  doc <- xmlTreeParse(fname, useInternalNodes=TRUE)
  
  ## works using doc xmlns:r=""
  nodes <- getNodeSet(doc, "//block[@id='block1']", namespaces=c("r"="http://www.r-project.org"))
  print(nodes)
  
##   node <- xmlNode("block", "replacement text", attrs=c("id"="block1"))
##   xpathApply(doc, "/doc//block[@id='block1']", replaceNodes, node, namespaces=c("r"="http://www.r-project.org"))
##   doc
}

#obj <- doThis()
#obj

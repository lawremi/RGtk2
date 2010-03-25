## ajax app.
## Use jQuery request to populate a page,
## can be html, xml, json
## put in errors
## for older versions of R
if(!exists("grepl"))
  grepl <- function(pattern, x,...) length(grep(pattern, x)) > 0

d <- data.frame(car=rownames(mtcars), mpg=mtcars$mpg, stringsAsFactors=FALSE)

processError <- function(e) {
  stop(e$message)
}

show_json <- function() {
  require(rjson, quietly=TRUE)
  n <- as.numeric(GET$n)
  out <- toJSON(list(mpg=mtcars$mpg[1:n],car=rownames(mtcars)[1:n]))
  setContentType("application/json")
  cat(out)
}

show_xml <- function() {
  require(XML, quietly=TRUE)
  n <- as.numeric(GET$n)
  children <- sapply(1:n, function(i) newXMLNode("car", newXMLNode("make",d[i,1]), newXMLNode("mpg", d[i,2])))
  out <- saveXML(newXMLNode("data", .children=children))
  setContentType("text/xml")
  cat(out)
}

show_html <- function() {
#  return(404L)
  require(hwriter, quietly=TRUE)
  setContentType("text/html")
  hwrite(d[1:5,], page=stdout())
}

## Use path_info to dispatch on
## this is how django works
urls <- list(json=list(call="show_json", regexp="^/json"),
             xml = list(call="show_xml", regexp = "^/xml")
             )
default_call <- "show_html"

path_info <- SERVER$path_info
flag <- FALSE
for(i in urls) {
  if(!flag && grepl(i$regexp, path_info)) {
    flag <- TRUE
    tryCatch(do.call(i$call, list()), error=processError)
  }
}
if(!flag)
  tryCatch(do.call(default_call, list()), error=processError)


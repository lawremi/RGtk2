## goal to have inheritance, akin to how Django does: extends and block
require(XML)
require(brew)

Brew <- function(filename, xmlns=c("r"="http://www.r-project.org"), envir=new.env(parent=globalenv())) {
  obj <- get_template(filename)
  obj <- replace_blocks(obj, "", envir)
  return(obj)
#  tmpfile <- tempfile()
##  saveXML(obj, tmpfile)
 # brew(tmpfile)
}



#' pass in xml object and return template with blocks replaced
#' @param obj an object parsed without internal nodes
#' @param namesspaces comes from head of document that brew will parse
replace_blocks <- function(obj, namespaces=c("r"="http://www.r-rproject.org"), envir=new.env(parent=globalenv())) {

  ## we first recurse finding the blocks until we get to a template that does not inherit from another
  all_blocks <- list()
  ## grab all blocks, or get template if no more
  grab_blocks <- function(obj) {
    eval_rcode(obj, envir=envir)
    
    add_blocks <- get_blocks(obj)
    sapply(add_blocks, function(i) {
      id <- xmlGetAttr(i, "id")
      if(is.null(all_blocks[[id]])) {
        all_blocks[[id]] <<- i
      }
    })
    obj1 <- get_extended_template(obj)
    if(extends_template(obj1)) {
      grab_blocks(obj1)
    } else{
      obj <- get_extended_template(obj)
      return(obj)
    }
  }

  if(extends_template(obj)) {
    obj <- grab_blocks(obj)
    sapply(all_blocks, function(node) {
      id <- xmlGetAttr(node, "id")
      newXMLNamespace(node, namespace=namespaces)
      xpathApply(obj, sprintf("//block[@id='%s']", id), replaceNodes, node,namespaces=c("r"="http://www.r-project.org"))
    })
#    xpathApply(obj, "/doc//block", function(node) {
#      xmlName(node) <- "div"
#      xmlAttrs(node, append=FALSE) <- c("class"="block")
#    },
#               namespaces=namespaces
#               )
  } 

  eval_rcode(obj)
  return(obj)
}

## get_template return object from template
get_template <- function(fname, ...) {
  obj <- try(xmlTreeParse(fname, ..., useInternalNodes=TRUE), silent=TRUE)
  if(inherits(obj, "try-error"))
    print(obj)
  obj
}
## Does this obj extend a template?
extends_template <- function(obj) {
  length(xmlElementsByTagName(xmlChildren(obj)[[1]], "extends", recursive=TRUE)) > 0
}

## get the template we extend
get_extended_template <- function(obj, ...) {
  node <- xmlElementsByTagName(xmlChildren(obj)[[1]], "extends", recursive=TRUE)[[1]]
  fname <- xmlValue(node)
  fname <- gsub("\\n","",fname)
  get_template(fname, ...)
}

## return block objects in XML object
get_blocks <- function(obj) {
  xmlElementsByTagName(xmlChildren(obj)[[1]],"block", recursive=TRUE)
}

#' escapeHTML code
#'
#' @param ... strings to scrub
#' @return value of strings scrubbed of <,>,&,@
#' @note from RApache manual, by Jeffrey Horner
scrub <- function(...) {
  str <- paste(..., sep=" ", collapse=" ")
  if (is.null(str)) return('NULL')
  if (length(str) == 0) return('length 0 string')
  str <- as.character(str)
  str <- gsub('&','&amp;',str); str <- gsub('@','_at_',str); 
  str <- gsub('<','&lt;',str); str <- gsub('>','&gt;',str); 
  if (length(str) == 0 || is.null(str) || str == '')
    str <- '&nbsp;' 
  str
}
  
#' Evaluate R Code in object and replace -- if requested
#'
#' @param obj XML object
#' @envir Environment to evaluate code within
#' @returns modifies mutable object obj
#' @note The rcode tag has attributes echo, eval, newline and filter_by
#' The first 3 are logicals, the latter the name of a function to call after
#' evaluating which defaults to scrub. Set to "NULL" to bypass
eval_rcode <- function(obj, envir=new.env(parent=globalenv())) {
  xpathApply(obj, "/html//rcode", function(node) {
    val <- xmlValue(node)
    doEcho <- xmlGetAttr(node, "echo", TRUE) # place into cell
    doEval <- xmlGetAttr(node, "eval", TRUE) # evaluate? Why not?
    doNewLine <- xmlGetAttr(node, "newline", TRUE) # put in DIV or SPAN tags
    filterBy <- xmlGetAttr(node, "filter_by", "scrub") # NULL or "NULL" for no filter
    
    if(doEval) {
      val <- eval(parse(text=val), envir=envir)
      if(!is.null(filterBy) || filterBy != "NULL") 
        val <- do.call(filterBy, list(val))
      if(doEcho) {
        xmlValue(node) <- val
      } else {
        xmlValue(node) <- ""
      }
    }
    xmlName(node) <- ifelse(doNewLine,"div","span")
    xmlAttrs(node, append=FALSE) <- c(class="rcode")
  })
}

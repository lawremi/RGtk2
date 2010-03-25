## for older versions of R
if(!exists("grepl"))
  grepl <- function(pattern, x,...) length(grep(pattern, x)) > 0

#' similar to URLencode, but encodes <, >, &, " as entities
HTMLencode <- function(str) {
  str <- as.character(str)
  vals <- list(c('&','&amp;'),
               c('"','&quot;'),
               c('<','&lt;'),
               c('>','&gt;')
               )
  for(i in vals)
    str <- gsub(i[1],i[2],str)
  str
}

#' get with default values -- identity if defined, else default
get_d <- function(x, default="") ifelse(is.null(x) || is.na(x) || x == "", default, x)

require(brew, quietly=TRUE)
require(hwriter, quietly=TRUE)
dir <- "/var/www/GUI/simpleapp"
setwd(dir)

df <- mtcars

processError <- function(e) {
  e$title <- "Error"
  with(e, brew("error.brew"))
}

## functions to call up web pages in proper context
showLogon <- function() {
  title <- "Logon"
  brew("login-form.brew")
}

selectID <- function() {
  title <- "Select an ID"
  context <- list(nms=rownames(df))    # adjust
  with(context, brew("select-id.brew"))
}

showID <- function() {
  title <- "Show an ID"
  id <- GET$id
  if(! id %in% rownames(df))           # use whitelist
    processError(list(message="id does not match"))

  context <- list(d=df[id,], id=id)
  with(context, brew("show-id.brew"))
}



## process and dispatch
## the user name
user_name <- ""
if (!is.null(POST)) {
  user_name <- get_d(POST$name, "")
}
if(user_name == "" && !is.null(COOKIES)) {
  user_name <- get_d(COOKIES$name, "")
} 

## start output
setContentType("text/html")
if(user_name != "")
  setCookie("name",user_name)

## Use path_info to dispatch on
## this is how django works
urls <- list(select=list(call="selectID", regexp="^/select"),
             id = list(call="showID", regexp = "^/id")
             )
default_call <- "showLogon"

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


DONE

## based on URI we do different things
require(hwriter, quietly=TRUE)
require(brew, quietly=TRUE)


##################################################
## libraries -- these should be read into RApache on startup
## source with source(file, local=TRUE) so that SERVER, ... are in global namespace
## paginator
paginator <- function(objects, pageSize=20, orphanMin=5 + floor(pageSize/4)) {
  n <- length(objects)
  if(n == 1) n <- objects               # objects can be vector or number
  sq <- seq(0,n, by=pageSize)
  if( n %% pageSize < orphanMin)
    sq[length(sq)] <- n
  else
    sq <- c(sq,n)
  l <- list(objects=objects,
            seq = sq,
            n=n)
  class(l) <- c("Paginator")
  l
}

## how many objects
p.count <- function(pg) pg$n
p.nopages <- function(pg) length(pg$seq) - 1
## return indices of ith page
p.page <- function(pg, i) {
  i <- as.integer(i)
  if(1 <= i && i <= pg$n) 
    return(seq(pg$seq[i]+1, pg$seq[i+1]))
  else
    return(NA)
}
p.hasNext <- function(pg, i) as.integer(i) < p.nopages(pg)
p.hasPrevious <- function(pg, i) as.integer(i) > 1
p.hasPage <- function(pg, i) {
  i <- as.integer(i)
  1 <= i && i <= p.nopages(pg)
}

##

## follow django
getTemplate <- function(tmpl) {
  if(!file.exists(tmpl)) {
    ## need to have template dircectories
    tmpl <- paste(tmpl_dir, tmpl, sep="/")
  }
  if(!file.exists(tmpl))
    stop("Can't find template")
  return(tmpl)
}

HttpResponse <- function(txt, content.type="text/html") {
  setContentType(content.type)
  cat('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">')
  cat(paste(txt,sep="\n"),"\n")
}
renderToResponse <- function(tmpl, context=new.env(), type="text/html") {
  if(!file.exists(tmpl))
    tmpl <- try(getTemplate(tmpl), silent=TRUE)
  if(inherits(tmpl,"try-error"))
    HttpResponse("Error Will Rogers")
  out <- with(context, renderBrew(tmpl))
  HttpResponse(out)
}
## brew additions

## recurse down dir + filename until it exists
findFile <- function(filename, dir=getwd(), sep="/") {
  tmp <- unlist(strsplit(dir, sep))
  if(length(tmp) == 0)
    tmp <- ""
  for(i in length(tmp):1) {
    tmpdir <- paste(tmp[1:i], collapse=sep)
    file <- paste(tmpdir, filename, sep=sep)
    if(file.exists(file))
      return(file)
  }
  stop(paste(filename,"not found"))
}

## return text of brew output
## want to recurse
renderBrew <- function(file,  context=.GlobalEnv, text, envir=parent.frame()) {
  con <- textConnection(".brew", open="w")
  if(!missing(text))
    brew(text=text, output=con, envir=envir)
  else
    brew(file, output=con, envir=envir)
  close(con)
  return(.brew)
}

  
##################################################
        
  


## set variables
path_info<- SERVER$path_info
dir <- "/var/www/GUI"
tmpl_dir <- paste(dir,"simpleapp","templates", sep="/")

## The model

printMessage <- function(msg) {
  HttpResponse(hmakeTag("h3", msg))
}

## what is the abstraction for the model?


##################################################
## The views of the model
doView <- function() {
  context <- new.env()
  context$title <- "Basic view"

  tmpl <- paste(tmpl_dir,"view.brew", sep="/")
  out <- with(context, renderBrew(tmpl))
  HttpResponse(out)


#  files <- paste(dir,"simpleapp","source-test.R", sep="/")
#  source(files, local=TRUE)
#  HttpResponse(f())

}

doDetailView <- function() {
  ## grab id from url: detail&id=34
  uri <- SERVER$uri
  ## id is a numeric code at end of /'s
  x <- unlist(strsplit(uri,"/"))
  id <- x[length(x)]

  ## lookup record for id
#  context <- getRecordFromId(id)
  context <- new.env()
  context$title <- "Detail view"
  context$id <- id
  
  tmpl <- paste(tmpl_dir,"detailView.brew", sep="/")
  out <- with(context, renderBrew(tmpl))
  HttpResponse(out)

}
doMostRecentView <- function() {
  doView()

}
doEditView <- doView


##################################################
## equivalent of urls.py
## redirect to a view based on path info
if(length(grep("^/view", path_info))) {
  doView()
} else if(length(grep("^/detail", path_info))) {
  doDetailView()
} else if(length(grep("^/mostrecent", path_info))) {
  doMostRecentView()
} else if(length(grep("^/edit", path_info))) {
  doEditView()
} else {
  doView()
}
 


library(gWidgets)
## Simple GUI to browse gWidgets examples

browsegWidgets <- function() {
  e <- new.env()
  
  listFiles <- function() {
    files <- list.files(path=dir, pattern="^ex-.*R$", full.names=TRUE)
    names(files) <- list.files(path=dir, pattern="^ex-.*R$", full.names=FALSE)
    return(files)
  }

##  dir <- system.file("Examples","gWidgets", package="PGUIinR")
  dir <- "~/GUI/ch-gWidgets"
  files <- listFiles()
  
  w <- gwindow("Browse files", width=600, height=500)
  g <- ggroup(horizontal=FALSE, cont = w)
  bg <- ggroup(cont = g, horizontal=TRUE); addSpring(bg)
  
  runButton <- gbutton("source", cont = bg, handler = function(h,...) {
    out <- svalue(sourceViewer)
    out <- paste(out, collapse="\n")
    eval(parse(text=out), envir=e)
  })
  
  pg <- gpanedgroup(cont = g, expand=TRUE)
  fBrowser <- gtable(data.frame(Files=names(files), stringsAsFactors=FALSE), cont = pg,
                     handler = function(h, ...) {
                       val <- svalue(h$obj)
                       f <- files[val]
                       svalue(sourceViewer) <- readLines(f)
                     })
  
  sourceViewer <- gtext("", cont = pg, expand=TRUE)


}

browsegWidgets()

###################################################
### chunk number 1: 
###################################################
## not shown
## load in tcltk
library(tcltk)

## helper funtion to add scrollbars
addScrollbars <- function(parent, widget) {
  xscr <- ttkscrollbar(parent, orient="horizontal",
                       command=function(...) tkxview(widget, ...))
  yscr <- ttkscrollbar(parent, orient="vertical",
                       command=function(...) tkxview(widget, ...))

  tkconfigure(widget,
              xscrollcommand=function(...) tkset(xscr,...),
              yscrollcommand=function(...) tkset(yscr,...))

  tkgrid(widget, row=0, column=0, sticky="news")
  tkgrid(yscr,row=0,column=1, sticky="ns")
  tkgrid(xscr, row=1, column=0, sticky="ew")
  tkgrid.columnconfigure(parent, 0, weight=1)
  tkgrid.rowconfigure(parent, 0, weight=1)
}


###################################################
### chunk number 2: 
###################################################
library(XML)
fileName <- "http://www.omegahat.org/RSXML/shortIntro.html" # XML's doc
QT <- function(...) {}  # quit next call
doc <- htmlTreeParse(fileName, useInternalNodes=TRUE, error=QT)
root <- xmlRoot(doc)


###################################################
### chunk number 3: 
###################################################
w <- tktoplevel()
tkwm.title(w, "Treeview example with XML")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")
tr <- ttktreeview(f, displaycolumns="#all", columns=2)
addScrollbars(f, tr)                    # previously defined


###################################################
### chunk number 4: columnConfiguration
###################################################
tcl(tr, "heading", "#0", text="Name")
tcl(tr, "column", "#0", minwidth=20)
tcl(tr, "heading", 0, text="value")
tcl(tr, "column", 0, minwidth=20)


###################################################
### chunk number 5: 
###################################################
## http://www.omegahat.org/RSXML/shortIntro.html
## xmlChildren gives children
## xmlName gives name of node
## xmlValue gives values stored in node -- text

## issue with quoting values of tree. This taken from shQuote
quoteIt <- function(string) {           
  doQuote <- function(x) {
    xx <- strsplit(x, '"', fixe=TRUE)[[1]]
    paste(paste('"', xx, '"', sep=""), collapse='\'"\'')
  }
  if(!length(string)) return("")
  has_double_quote <- grep('"',string)
  if(!length(has_double_quote))
    return(paste('"',string,'"',sep=""))
  if (!length(grep("([$`])", string))) {
    paste("\"", gsub("([\"!\\])", "\\\\\\1", string), 
          "\"", sep = "")
  } else sapply(string, doQuote)
}


###################################################
### chunk number 6: 
###################################################
insertChild <- function(tr, node, parent="") {
  l <- list(tr, "insert",parent,"end",text=xmlName(node))
  children <- xmlChildren(node)
  if(length(children) == 0) {             # add in values
    values <- paste(xmlValue(node), sep=" ", collapse=" ")
    values <- gsub("\n"," ", values)    # tree view doesn't like \n
    values <- quoteIt(values)           # tree view doesn't like spaces
    l$values <- values
  }
  treePath <- do.call("tcl", l)

  if(length(children))                  # recurse
    for(i in children) insertChild(tr, i, treePath)
}
insertChild(tr, root)


###################################################
### chunk number 7: 
###################################################
.selectedID <- ""                       # globals
.dragging <- FALSE


###################################################
### chunk number 8: 
###################################################
tkbind(tr, "<Button-1>", function(W,x,y) {
  .selectedID <<- as.character(tcl(W, "identify","row", x, y))
})  


###################################################
### chunk number 9: 
###################################################
tkbind(tr, "<B1-Motion>", function(W, x, y, X, Y) {
  tkconfigure(W, cursor="diamond_cross")
  .dragging <<-TRUE
})


###################################################
### chunk number 10: 
###################################################
tkbind(tr, "<ButtonRelease-1>", function(W, x, y, X, Y) {
  if(.dragging && .selectedID != "") {
    w = tkwinfo("containing", X, Y)
    if(as.character(w) == as.character(W)) {
      dropID <- as.character(tcl(W, "identify","row", x, y))
      try(tkmove(W, .selectedID, dropID, "0"), silent=TRUE) # can't always work
    }
  }
  .dragging <<- FALSE; .selectedID <<- "" # reset
})


###################################################
### chunk number 11: walkTreeReturnAList
###################################################
treeToList <- function(tr) {
  l <- list()
  walkTree <- function(child, l) {
    l$name <- tclvalue(tcl(tr,"item",child,"-text"))
    l$value <- tclvalue(tcl(tr,"item",child,"-values"))
    children <- as.character(tcl(tr, "children", child)) # not tclvalue
    if(length(children)) {
      l$children <- list()
      for(i in children) {
        l$children[[i]] <- list()
        l$children[[i]] <- walkTree(i, l$children[[i]]) # recurse
      }
    }
    return(l)
  }
  l <- walkTree("",l)
  return(l)
}




###################################################
### chunk number 1: 
###################################################
#line 4 "ex-tcltk-tree.Rnw"
## not shown
## load in tcltk
library(tcltk)

## helper function to add scrollbars
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
#line 46 "ex-tcltk-tree.Rnw"
library(XML)
fileName <- "http://www.omegahat.org/RSXML/shortIntro.html"
QT <- function(...) {}  # quiet next call
doc <- htmlTreeParse(fileName, useInternalNodes=TRUE, error=QT)
root <- xmlRoot(doc)


###################################################
### chunk number 3: notShown
###################################################
#line 54 "ex-tcltk-tree.Rnw"
w <- tktoplevel()
tkwm.title(w, "Treeview example with XML")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 4: 
###################################################
#line 60 "ex-tcltk-tree.Rnw"
tr <- ttktreeview(f, displaycolumns="#all", columns=1)
addScrollbars(f, tr)                    


###################################################
### chunk number 5: columnConfiguration
###################################################
#line 67 "ex-tcltk-tree.Rnw"
tcl(tr, "heading", "#0", text="Name")
tcl(tr, "column", "#0", minwidth=20)
tcl(tr, "heading", 1, text="value")
tcl(tr, "column", 1, minwidth=20)


###################################################
### chunk number 6: 
###################################################
#line 73 "ex-tcltk-tree.Rnw"
## http://www.omegahat.org/RSXML/shortIntro.html
## xmlChildren gives children
## xmlName gives name of node
## xmlValue gives values stored in node -- text

## issue with quoting values of tree. This taken from shout
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
### chunk number 7: 
###################################################
#line 102 "ex-tcltk-tree.Rnw"
insertChild <- function(tr, node, parent="") {
  l <- list(tr, "insert", parent, "end", text=xmlName(node))
  children <- xmlChildren(node)
  if(length(children) == 0) {           # add in values
    values <- paste(xmlValue(node), sep=" ", collapse=" ")
    l$values <- as.tclObj(values)        # avoid split on spaces
  }
  treePath <- do.call("tcl", l)

  if(length(children))                          # recurse
    for(i in children) insertChild(tr, i, treePath)
}
insertChild(tr, root)


###################################################
### chunk number 8: 
###################################################
#line 128 "ex-tcltk-tree.Rnw"
.selectedID <- ""                               # globals
.dragging <- FALSE


###################################################
### chunk number 9: 
###################################################
#line 134 "ex-tcltk-tree.Rnw"
tkbind(tr, "<Button-1>", function(W,x,y) {
  .selectedID <<- as.character(tcl(W, "identify","row", x, y))
})  


###################################################
### chunk number 10: 
###################################################
#line 142 "ex-tcltk-tree.Rnw"
tkbind(tr, "<B1-Motion>", function(W, x, y, X, Y) {
  tkconfigure(W, cursor="diamond_cross")
  .dragging <<-TRUE
})


###################################################
### chunk number 11: 
###################################################
#line 156 "ex-tcltk-tree.Rnw"
tkbind(tr, "<ButtonRelease-1>", function(W, x, y, X, Y) {
  if(.dragging && .selectedID != "") {
    w = tkwinfo("containing", X, Y)
    if(as.character(w) == as.character(W)) {
      dropID <- as.character(tcl(W, "identify","row", x, y))
      try(tkmove(W, .selectedID, dropID, "0"), silent=TRUE)
    }
  }
  .dragging <<- FALSE; .selectedID <<- "" # reset
})


###################################################
### chunk number 12: walkTreeReturnAList
###################################################
#line 179 "ex-tcltk-tree.Rnw"
treeToList <- function(tr) {
  l <- list()
  walkTree <- function(child, l) {
    l$name <- tclvalue(tcl(tr,"item", child, "-text"))
    l$value <- as.character(tcl(tr,"item", child, "-values"))
    children <- as.character(tcl(tr, "children", child)) 
    if(length(children)) {
      l$children <- list()
      for(i in children) 
        l$children[[i]] <- walkTree(i, list()) # recurse
    }
    return(l)
  }
  l <- walkTree("",l)
  return(l)
}




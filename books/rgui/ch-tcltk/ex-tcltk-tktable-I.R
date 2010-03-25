## function to add scrollbars to widget and pack into grid
addScrollbarsToWidget <- function(widget, parent) {
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

## take a data frame or matrix make a character matrix
toCharacterMatrix <- function(x, rNames, cNames) {
  mat <- as.data.frame(x)
  mat <- sapply(mat, format)
  if(!missing(rNames)) 
    mat <- cbind(rNames,mat)
  if(!missing(cNames)) 
    mat <- rbind(c(rep("", !missing(rNames)), cNames), mat)
  return(mat)
}

## fill in a tclArray object
fillTclArrayFromCharMat <- function(ta, cm) {
  ## cm[,1] contains column names, while cm[1,] has rownames
  ## cm[1,1] is ignored
  for (j in 2:ncol(cm))
    ta[[0, j - 1]] <- as.tclObj(cm[1, j], drop = TRUE)
  for(i in 2:nrow(cm))
    for(j in 1:ncol(cm)) {
      ta[[i - 1, j - 1]] <- as.tclObj(cm[i, j], drop = TRUE)
  }
}

library(tcltk)
library(MASS)

## defaults in case written as a function
maxWidth <- 400; maxHeight <- 400 ## size of  table

tt <- tktoplevel()
tkwm.title(tt, "tktable example")
parent <- ttkframe(tt, padding=c(3,3,12,12))
tkpack(parent, expand=TRUE, fill="both")


           


## data set
x <- data.frame(integer=1:4, numeric=rnorm(4), character=letters[1:4],
                factor = factor(rownames(mtcars)[1:4]),
                logical = c(TRUE,TRUE, FALSE, FALSE),
                posix = rep(Sys.time(), 4))





if (!inherits(tclRequire("Tktable", warn = FALSE), "tclObj")) {
  stop("The Tcl (not R!) package 'Tktable' must be installed on your computer")
}
#.Tcl(paste("option add *Table.font {courier", fontsize, "bold}"))
#old <- options(scipen = 7)
#on.exit(options(old))

## process data frame
cmat <- toCharacterMatrix(x, rNames=rownames(x), cNames=colnames(x))
tA <- tclArray()
fillTclArrayFromCharMat(tA, cmat)

## colwidths 
colwidths <- apply(cmat, 2, function(x) max(nchar(x)) + 1 )


tktable <- tkwidget(parent, "table", variable = tA,
                    rows = nrow(cmat), cols = ncol(cmat),
                    titlerows = 1, titlecols = 1, selecttitle = 1,
                    anchor = "e", multiline = 1, selectmode = "extended",
                    rowseparator = dQuote("\n"), colseparator = dQuote("\t"),
                    background = "white", maxheight = maxHeight, maxwidth = maxWidth
                    )

## set column widths
for(i in 1:ncol(cmat))
  tcl(tktable, "width", i - 1, colwidths[i])

## rebind the Backspace key, which somehow gets messed up
## string <- "bind Table <BackSpace> {
##                set ::tk::table::Priv(junk) [%W icursor]
##        if {[string compare {} $::tk::table::Priv(junk)] && $::tk::table::Priv(junk)} {
##                %W delete active [expr {$::tk::table::Priv(junk)-1}]
##        }}"
## .Tcl(string)

                                        # internal functions for buttons
  undoEdits <- function(){
  ta <- tclArray()
  fillTclArrayFromCharMat(ta, cmat)
  assign("tA", ta, inherits = TRUE)
  tkconfigure(tktable, variable = tA)
}
  undoEditsButton <- tkbutton(tt, text = "Undo All Edits", command = undoEdits)

saveCommand <- function() {
  for (i in 1:nrow(x))
    for (j in 1:ncol(x)) {
      val <- tA[[i,j]]
      if (is.null(val)) stop(paste("illegal value in cell", i, j))
      else val <- tclvalue(val)
      x[i,j] <- as(val, class(x[i,j]))
    }
}
  saveButton <- ttkbutton(parent, text = "Save", command = saveCommand)

## layout
addScrollbarsToWidget(tktable, parent)
tkgrid(saveButton)


tkactivate(tktable, "0,0")
tktag.configure(tktable, "active", background = "lightyellow2")
tktag.configure(tktable, "title", state = "normal")

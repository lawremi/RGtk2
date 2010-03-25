library(tcltk)


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
## basically sapply(mat,format) but also has dimnames
toCharacterMatrix <- function(x, rNames, cNames) {
  mat <- as.data.frame(x)
  mat <- as.data.frame(lapply(mat, format))
  if(!missing(rNames)) {
    mat <- cbind(rNames,mat)
    mat[,1] <- as.character(mat[,1])
  }
  if(!missing(cNames)) 
    mat <- rbind(c(rep("", !missing(rNames)), cNames), mat)
  return(mat)
}

## fill in a tclArray object from character matrix
## modifies ta in place -- passed through environment
fillTclArrayFromCharMat <- function(ta, cm) {
  ## cm[,1] contains column names, while cm[1,] has rownames
  sapply(2:ncol(cm), function(j)
         ta[[0, j - 1]] <- as.tclObj(cm[1, j], drop = TRUE))
  for(j in 1:ncol(cm)) 
    sapply(2:nrow(cm), function(i) 
      ta[[i - 1, j - 1]] <- as.tclObj(cm[i, j], drop = TRUE))
}

## tclArray -> DataFrame
tclArrayToDataFrame <- function(ta, tktable, classes) {
  d <- tkindex(tktable, "end") # get size from tktable
  d <- as.numeric(unlist(strsplit(as.character(d), ",")))
  l <- list()
  for (j in 1:d[2]) {
    vals <- sapply(1:d[1], function(i) {
      val <- ta[[i,j]]
      ifelse(is.null(val), NA, tclvalue(val))
    })
    l[[j]] <- try(switch(classes[j],
                     factor=factor(vals),
                     as(vals, classes[j])),
                  silent=TRUE)
    if(inherits(l[[j]], "try-error")) l[[j]] <- vals ## character
  }
  df <- as.data.frame(l)
  ## dimnames
  colnames(df) <- sapply(1:d[2], function(j) tclvalue(ta[[0,j]]))
  rownames(df) <- sapply(1:d[1], function(i) tclvalue(ta[[i,0]]))
  return(df)
}

maxHeight=400; maxWidth=400

## set up some toplevel window for the example
tt <- tktoplevel()
tkwm.title(tt, "tktable example")
parent <- ttkframe(tt, padding=c(3,3,12,12))
tkpack(parent, expand=TRUE, fill="both")

## data set with different types
x <- data.frame(integer=1:4, numeric=rnorm(4), character=letters[1:4],
                factor = factor(rownames(mtcars)[1:4]),
                logical = c(TRUE,TRUE, FALSE, FALSE),
                POSIXt = rep(Sys.time(), 4))



if (!inherits(tclRequire("Tktable", warn = FALSE), "tclObj")) {
  stop("The Tcl (not R!) package 'Tktable' must be installed on your computer")
}
#.Tcl(paste("option add *Table.font {courier", fontsize, "bold}"))
#old <- options(scipen = 7)
#on.exit(options(old))

## rebind the Backspace key, which somehow gets messed up
## string <- "bind Table <BackSpace> {
##                set ::tk::table::Priv(junk) [%W icursor]
##        if {[string compare {} $::tk::table::Priv(junk)] && $::tk::table::Priv(junk)} {
##                %W delete active [expr {$::tk::table::Priv(junk)-1}]
##        }}"
## .Tcl(string)


## process data frame
cmat <- toCharacterMatrix(x, rNames=rownames(x), cNames=colnames(x))
tA <- tclArray()
fillTclArrayFromCharMat(tA, cmat)


tktable <- tkwidget(parent, "table", variable = tA,
                   rows = nrow(cmat), cols = ncol(cmat),
                   titlerows = 1, titlecols = 1, # no or rows (cols) for titles
                   selecttitle = TRUE,    # can edit titles (1 or 0)
                   anchor = "e",
                   multiline = 0,   # display newlines with new lines
                   selectmode = "extended",
                   rowseparator = dQuote("\n"), # controls display of selection
                   colseparator = dQuote("\t"),
                   background = "white",
                   maxheight = maxHeight, maxwidth = maxWidth
                   )



## set column widths
colwidths <- apply(cmat, 2, function(x) max(nchar(x)) + 1 )
for(i in 1:ncol(cmat))
  tcl(tktable, "width", i - 1, colwidths[i])

## layout
addScrollbarsToWidget(tktable, parent)

## set some values
tkactivate(tktable, "0,0")
tktag.configure(tktable, "active", background = "lightyellow2")
tktag.configure(tktable, "title", state = "normal")

## manipulations

## getFromIndex -- not using tcl array variable
tktable.get <- function(tktable, i, j) {
  val <- tkget(tktable, paste(i,j, sep=","))
  as.character(val)
}

## set From Index -- not using tcl array variable
tktable.set <- function(tktable, i, j, value) 
  tkset(tktable, paste(i, j, sep=","), as.character(value))

## dim of table
tktable.dim <- function(tktable) {
  d <- tkindex(tktable, "end") # get size from tktable
  d <- as.numeric(unlist(strsplit(as.character(d), ",")))
}


## dimnames, colnames, names
tktable.dimnames <- function(tktable) {
  d <- tktable.dim(tktable)
  dimnames <- list(sapply(1:d[1], function(i) tktable.get(tktable, i, 0)),
                   sapply(1:d[2], function(j) tktable.get(tktable, 0, j)))
  dimnames
}

tktable.colnames <- tktable.names <- function(tktable)
  tktable.dimnames(tktable)[[2]]
tktable.rownames <- function(tktable)
  tktable.dimnames(tktable)[[2]]

## set same, replace get with set in dimnames

## insert row, delete row. Use cols instead of rows
tcl(tktable, "insert", "rows", 1)
tcl(tktable, "delete","rows",1)



## use tags to adjust column display

## give columns tag name column.
d <- tktable.dim(tktable)
sapply(1:d[2], function(j) tcl(tktable, "tag","col",paste("column", j, sep="."), j))

##
tktag.configure(tktable, "column.1", foreground="red")
tktag.configure(tktable, "column.1", anchor="w")


## put an image in the cell
#tkimage.create("photo", "::img::tclLogo", file = "tclp.gif")
#tcl(tktable,"tag","cell","1-1","1,1")
#tktag.configure(tktable, "1-1", image="::img::tclLogo")


## put object into cell using window configure index, window=widget)
## make logical use checkbuttons
d <- tktable.dim(tktable)
sapply(1:d[1], function(i) {
  value <- tclVar(sample(c(TRUE,FALSE),1))
  cb <- ttkcheckbutton(tktable, variable=value)
  tkwindow.configure(tktable, paste(i,"5", sep=","), window = cb)
})

## popup context menu
.Tcl("option add *tearOff 0")

## 

menu <- tkmenu(tktable)
command <- function() {
  getWhere()
}

x0 <- NA; y0 <- NA
getWhere <-  function() {
  where <- paste("@",x0,",",y0, sep="")
  ind <- tcl(tktable,"index",where)
  ind <- as.numeric(unlist(strsplit(as.character(ind),",")))
  ind
}

## Need to write these for gdf
transformVariable <- function(col,...) {
  ## GUI to write expression to evalute to fill in column

}
columnEmpty <- function(col) FALSE
rowEmpty <- function(row) FALSE

confirmDelete <- function() {
  out <- tkmessageBox(icon="question",
               message=gettext("Really delete? There is non empty data"),
               type="yesno",
               parent=tktable)
  ifelse(as.character(out) == "yes",TRUE, FALSE)
}
                  
formatColumn <- function(col, type) {
  ## use tktable tag to format column to type.
}

tkadd(menu,"command",label=gettext("Transform Variable"), command = function() {
  ind <- getWhere()
  transformVariable(ind[2])
})
tkadd(menu,"separator")
tkadd(menu,"command",label=gettext("Insert Variable"), command = function() {
  ind <- getWhere()
  tcl(tktable,"insert","cols",ind[2])
})
tkadd(menu,"command",label=gettext("Delete Variable"), command = function() {
  ind <- getWhere()
  if(columnEmpty(ind[2]) || confirmDelete())
    tcl(tktable,"delete","cols",ind[2])
})

tkadd(menu,"command",label=gettext("Insert Case"), command = function() {
  ind <- getWhere()
  tcl(tktable,"insert","rows",ind[1])
})
tkadd(menu,"command",label=gettext("Delete Case"), command = function() {
  ind <- getWhere()
  if(rowEmpty(ind[1]) || confirmDelete())
    tcl(tktable,"delete","rows",ind[1])
})

tkadd(menu,"separator")

typeVar <- tclVar("numeric")
setClass <- function(type) {
  ind <- getWhere()
  tclvalue(typeVar) <- type
  classes[ind[2]] <<- type
  formatColumn(col=ind[2], type=type)
}
tkadd(menu, "radiobutton", label="numeric", variable=typeVar, command=function() setClass("numeric"))
tkadd(menu, "radiobutton", label="integer", variable=typeVar, command=function() setClass("integer"))
tkadd(menu, "radiobutton", label="factor", variable=typeVar, command=function() setClass("factor"))
tkadd(menu, "radiobutton", label="character", variable=typeVar, command=function() setClass("character"))
tkadd(menu, "radiobutton", label="logical", variable=typeVar, command=function() setClass("logical"))
tkadd(menu, "radiobutton", label="other", variable=typeVar, command=function() {
  ## need to popup dialog to get function name for other.
  cat("write me")
})

classes <- rep("numeric",6)
popupCommand <- function(x,y,X,Y) {
  ## before popping up we have some work to do
  x0 <<- x; y0 <<- y;
  classMenuItems <- 7:12
  ind <- getWhere()
  ## delete depends on which row or column
  tkentryconfigure(menu,3, state=ifelse(ind[2] == 0, "disabled", "normal"))
  tkentryconfigure(menu,5, state=ifelse(ind[1] == 0, "disabled", "normal"))
  ## adjust class depends on which column
  if(ind[2] == 0) {
    ## disable the values
    for(i in classMenuItems) tkentryconfigure(menu,i,state="disabled")
    tclvalue(typeVar) <- FALSE
  } else {
    ## enable the values then set class typeVar
    for(i in classMenuItems) tkentryconfigure(menu,i,state="normal")
    theClass <- classes[ind[2]]
    if(theClass %in% c("numeric","factor","logical","integer"))
      tclvalue(typeVar) <- theClass
    else
      tclvalue(typeVar) <- "other"
    ## popup
  }
  tkpopup(menu,X,Y)
}
## mac binding, just 3 for all
if( as.character(tcl("tk","windowingsystem")) == "aqua" ) {
  tkbind(tktable, "<2>", popupCommand)
  tkbind(tktable, "<Control-1>", popupCommand)
}
tkbind(tktable, "<3>", popupCommand)

nextCell <- function() {
  cat("go to next cell")
}

.Tcl("bind Table <Return>		{::tk::table::MoveCell %W 1 0}" )
#tkbind(tktable,"<Return>", function(W) {
#  tcl("::tk::table::MoveCell",W,1,0)
#  tcl("eval","break")
#})
tkbind(tktable,"<Tab>", function(W) tcl("::tk::table::MoveCell",W,0,1))

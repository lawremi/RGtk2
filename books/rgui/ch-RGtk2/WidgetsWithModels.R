###################################################
### chunk number 1: 
###################################################
#line 2 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
#line 83 "SweaveInput"
data(Cars93, package="MASS")             # mix of classes
model <- rGtkDataFrame(Cars93)
model[1, 4] <- 12
model[1, 4]                              # get value


###################################################
### chunk number 3: 
###################################################
#line 104 "SweaveInput"
model$setFrame(Cars93[1:5, 1:5])


###################################################
### chunk number 4: rgtk2-mvc-treeview-construc
###################################################
#line 129 "SweaveInput"
view <- gtkTreeView(model)


###################################################
### chunk number 5: rgtk2-mvc-insert-column-hardway
###################################################
#line 141 "SweaveInput"
vc <- gtkTreeViewColumn()
vc$setTitle("Manufacturer")
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)
view$insertColumn(vc, 0)


###################################################
### chunk number 6: rgtk2-mvc-insert-column-easyway
###################################################
#line 170 "SweaveInput"
view$insertColumnWithAttributes(position = -1, 
     title = "Model", cell = gtkCellRendererText(), text = 1)


###################################################
### chunk number 7: rgtk2-mvc-insert-all-columns
###################################################
#line 186 "SweaveInput"
view <- gtkTreeView(model)
mapply(view$insertColumnWithAttributes,  -1, colnames(model), 
       list(gtkCellRendererText()), 
       text = seq_len(ncol(model)) - 1)


###################################################
### chunk number 8: rgtk2-mvc-path-constructor-list
###################################################
#line 259 "SweaveInput"
secondRow <- gtkTreePathNewFromIndices(2)


###################################################
### chunk number 9: rgtk2-mvc-path-constructor-tree
###################################################
#line 264 "SweaveInput"
abcPath <- gtkTreePathNewFromIndices(c(1, 3, 2))
abcPath <- gtkTreePathNewFromString("1:3:2")


###################################################
### chunk number 10: rgtk2-mvc-iter-traverse
###################################################
#line 285 "SweaveInput"
iter <- model$getIterFirst()
manufacturer <- character()
while(iter$retval) {
  manufacturer <- c(manufacturer, model$get(iter$iter, 0)[[1]])
  iter$retval <- model$iterNext(iter$iter)
}


###################################################
### chunk number 11: rgtk2-mvc-iter-apply
###################################################
#line 314 "SweaveInput"
nrows <- model$iterNChildren(NULL)
manufacturer <- sapply(seq(nrows), function(i) {
  iter <- model$iterNthChild(NULL, i)
  model$get(iter$iter, 0)[[1]]
})


###################################################
### chunk number 12: 
###################################################
#line 367 "SweaveInput"
model <- rGtkDataFrame(mtcars)
view <- gtkTreeView(model)
selection <- view$getSelection()
selection$setMode("single")


###################################################
### chunk number 13: 
###################################################
#line 379 "SweaveInput"
vc <- gtkTreeViewColumn()
view$insertColumnWithAttributes(0, "title", gtkCellRendererText(), text = 0)
## pack in GUI
sw <- gtkScrolledWindow()
sw$add(view)
##
w <- gtkWindow(show=FALSE)
w['title'] <- "Multiple selection example"
w$add(sw)
w$show()
## some selection
selection$selectPath(gtkTreePathNewFromIndices(3)) # set 
# 


###################################################
### chunk number 14: 
###################################################
#line 397 "SweaveInput"
curSel <- selection$getSelected()
with(curSel, model$getValue(iter, 0)$value)


###################################################
### chunk number 15: 
###################################################
#line 410 "SweaveInput"
gSignalConnect(selection, "changed", function(selection) {
  curSel <- selection$getSelectedRows()
  if(length(curSel$retval)) {
    rows <- sapply(curSel$retval, gtkTreePathGetIndices) + 1L
    curSel$model[rows, 1]
  }
})


###################################################
### chunk number 16:  eval=FALSE
###################################################
## #line 429 "SweaveInput"
## sapply(view$getColumns(), function(i) i == column)


###################################################
### chunk number 17: rgtk2-mvc-sorting-clickable
###################################################
#line 445 "SweaveInput"
vc <- view$getColumn(0)
vc$setSortColumnId(0)


###################################################
### chunk number 18: rgtk2-mvc-sorting-sortable
###################################################
#line 454 "SweaveInput"
model$setSortColumnId(0, "ascending")


###################################################
### chunk number 19: basicSort
###################################################
#line 465 "SweaveInput"
store <- rGtkDataFrame(mtcars)
sorted <- gtkTreeModelSortNewWithModel(store)
view <- gtkTreeView(sorted)
view$insertColumnWithAttributes(0, "Click to sort", 
                                gtkCellRendererText(), text=0)
view$getColumn(0)$setSortColumnId(0)


###################################################
### chunk number 20: sort-example
###################################################
#line 480 "SweaveInput"
f <- function(model, iter1, iter2, user.data) {
  column <- user.data
  val1 <- model$getValue(iter1, column)$value
  val2 <- model$getValue(iter2, column)$value
  as.integer(val1 - val2)
}
sorted$setSortFunc(sort.column.id=0, sort.func=f)


###################################################
### chunk number 21: notShown
###################################################
#line 490 "SweaveInput"
## basic GUI
sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of sortable tree view"
w$add(sw)
w$show()


###################################################
### chunk number 22: 
###################################################
#line 513 "SweaveInput"
df <- data.frame(col=letters[1:3], vis=c(TRUE, TRUE, FALSE))
store <- rGtkDataFrame(df)
filtered <- store$filter()
filtered$setVisibleColumn(1)            # 0-based
view <- gtkTreeView(filtered)


###################################################
### chunk number 23: notShown
###################################################
#line 533 "SweaveInput"
vc <- gtkTreeViewColumn()
QT <- view$insertColumn(vc, 0)
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)      

sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w$add(sw)
w$show()


###################################################
### chunk number 24: 
###################################################
#line 555 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 25: 
###################################################
#line 570 "SweaveInput"
df <- data.frame(state.name)
df$visible <- rep(TRUE, nrow(df))
store <- rGtkDataFrame(df)


###################################################
### chunk number 26: 
###################################################
#line 578 "SweaveInput"
filteredStore <- store$filter()
filteredStore$setVisibleColumn(ncol(df)-1)      # offset
view <- gtkTreeView(filteredStore)


###################################################
### chunk number 27: 
###################################################
#line 585 "SweaveInput"
view$insertColumnWithAttributes(0, "Col", 
                 gtkCellRendererText(), text = 0)


###################################################
### chunk number 28: 
###################################################
#line 595 "SweaveInput"
e <- gtkEntry()
gSignalConnect(e, "changed", function(w, data) {
  pattern <- w$getText()
  df <- data$getModel()
  values <- df[, "state.name"]
  df[, "visible"] <- grepl(pattern, values)
}, data=filteredStore)


###################################################
### chunk number 29: 
###################################################
#line 608 "SweaveInput"
## not shown, but this places widgets into a simple GUI
w <- gtkWindow(show=FALSE)
w['title'] <- "A filtered data store"
w$setSizeRequest(width=300, height=400)

g <- gtkVBox()
w$add(g)
g$packStart(e, expand=FALSE)

## add scroll window
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(view)
g$packStart(sw, expand=TRUE, fill=TRUE)

w$show()


###################################################
### chunk number 30: gtk-mvc-cell-explicit
###################################################
#line 655 "SweaveInput"
renderer <- gtkCellRendererText()
renderer['cell-background'] <- "gray"


###################################################
### chunk number 31: cr-right-aligned
###################################################
#line 683 "SweaveInput"
cr <- gtkCellRendererText()
cr['xalign'] <- 1                    # default 0.5 = centered
cr['family'] <- "Helvetica"  


###################################################
### chunk number 32: 
###################################################
#line 711 "SweaveInput"
cr <- gtkCellRendererCombo()
store <- rGtkDataFrame(state.name)
cr['model'] <- store
cr['text-column'] <- 0
cr['editable'] <- TRUE                  # needed


###################################################
### chunk number 33: VariableSelectionExample
###################################################
#line 749 "SweaveInput"
## Example showing implementation of variable selection widget where two tables show possible selections
## and selection. Similar to SPSS widget
## Illustrates filtered models, icons in view column
library(RGtk2)


###################################################
### chunk number 34: 
###################################################
#line 771 "SweaveInput"
df <- get(data(Cars93, package="MASS"))


###################################################
### chunk number 35: 
###################################################
#line 778 "SweaveInput"
#library(ProgGUIinR)                     # for make_icon
source("../ProgGUIInR/R/misc.R")     # for make_icon


###################################################
### chunk number 36: make_icon
###################################################
#line 783 "SweaveInput"
make_icon_pixmap <- function(x, ...) {
  require(grid); require(cairoDevice)
  pixmap <- gdkPixmap(drawable=NULL, width=16, height=16, 
  depth=24)
  asCairoDevice(pixmap)
  grid.newpage()
  grid.draw(make_icon(x))
  dev.off()
  gdkPixbufGetFromDrawable(NULL, pixmap, NULL, 0,0,0,0,-1,-1)
}


###################################################
### chunk number 37: model
###################################################
#line 800 "SweaveInput"
mdf <- data.frame(Variables = I(sort(names(df))),
                  icon = I(sapply(df, make_icon_pixmap)),
                  selected = rep(FALSE, ncol(df)))
model <- rGtkDataFrame(mdf)


###################################################
### chunk number 38: filterModels
###################################################
#line 810 "SweaveInput"
selectedFilter <- model$filter()
selectedFilter$setVisibleColumn(2)
unselectedFilter <- model$filter()
unselectedFilter$setVisibleFunc(function(model, iter) {
  !model$get(iter, 2)[[1]]
})


###################################################
### chunk number 39: views
###################################################
#line 825 "SweaveInput"
unselectedView <- gtkTreeView(unselectedFilter)
selectedView <- gtkTreeView(selectedFilter)
unselectedView$getSelection()$setMode('multiple')
selectedView$getSelection()$setMode('multiple')


###################################################
### chunk number 40: viewColumns
###################################################
#line 834 "SweaveInput"
make_view_column <- function() {
  vc <- gtkTreeViewColumn()
  vc$setTitle("Variable")
  cr <- gtkCellRendererPixbuf()
  vc$packStart(cr)
  vc$addAttribute(cr, "pixbuf", 1)
  cr <- gtkCellRendererText()
  vc$packStart(cr)
  vc$addAttribute(cr, "text", 0)
  vc
}
unselectedView$insertColumn(make_view_column(), 0)
selectedView$insertColumn(make_view_column(), 0)


###################################################
### chunk number 41: extendAPI
###################################################
#line 853 "SweaveInput"
## add to the gtkTreeView API for convenience
gtkTreeViewSelectedIndices <- function(object) {
  paths <- object$getSelection()$getSelectedRows()$retval
  out <- sapply(paths, function(i) {
    model <- object$getModel()          # Filtered!
    model$convertPathToChildPath(i)$toString()
  })
  if(length(out) == 0)
    integer(0)
  else
    as.numeric(out) + 1                             # 1-based
}
#
gtkTreeViewHasSelection <- function(obj) length(obj$selectedIndices()) > 0


###################################################
### chunk number 42: buttons
###################################################
#line 873 "SweaveInput"
selectButton <- gtkButton(">")
unselectButton <- gtkButton("<")
toggleSelectionOnClick <- function(button, view) {
  gSignalConnect(button, "clicked", function (x) {
    ind <- view$selectedIndices()
    model[ind, "selected"] <- !model[ind, "selected"]
  })
}
toggleSelectionOnClick(selectButton, unselectedView)
toggleSelectionOnClick(unselectButton, selectedView)


###################################################
### chunk number 43: sensitiveButtons
###################################################
#line 888 "SweaveInput"
selectButton['sensitive'] <- FALSE
unselectButton['sensitive'] <- FALSE
trackSelection <- function(button, view)
  gSignalConnect(view$getSelection(), "changed", 
                 function(x) button['sensitive'] <- view$hasSelection())
trackSelection(selectButton, unselectedView)
trackSelection(unselectButton, selectedView)


###################################################
### chunk number 44: guiLayout
###################################################
#line 901 "SweaveInput"
w <- gtkWindow(show=FALSE)
w$setDefaultSize(600, 400)
g <- gtkHBox()
w$add(g)

selectedScroll <- gtkScrolledWindow()
selectedScroll$add(selectedView)
selectedScroll$setPolicy("automatic", "automatic")

unselectedScroll <- gtkScrolledWindow()
unselectedScroll$add(unselectedView)
unselectedScroll$setPolicy("automatic", "automatic")

buttonBox <- gtkVBox()
centeredBox <- gtkVBox()
buttonBox$packStart(centeredBox, expand = TRUE, fill = FALSE)
centeredBox$setSpacing(12)
centeredBox$packStart(selectButton, expand = FALSE)
centeredBox$packStart(unselectButton, expand = FALSE)

g$packStart(unselectedScroll, expand=TRUE)
g$packStart(buttonBox, expand=FALSE)
g$packStart(selectedScroll, expand=TRUE)


###################################################
### chunk number 45: packButtons
###################################################
#line 928 "SweaveInput"
w$show()


###################################################
### chunk number 46: cellRendererToggle
###################################################
#line 952 "SweaveInput"
cr <- gtkCellRendererToggle()
cr['activatable'] <- TRUE             # cell can be activated
cr['active'] <- TRUE
gSignalConnect(cr, "toggled", function(w, path) {
  model$active[as.numeric(path) + 1] <- w['active']
})


###################################################
### chunk number 47: 
###################################################
#line 975 "SweaveInput"
## example showing how to add a toggle button on left of data display
library(RGtk2)


###################################################
### chunk number 48: FixACRANforSweave
###################################################
#line 982 "SweaveInput"
repos <- getOption("repos")
repos["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN"
options(repos = repos)


###################################################
### chunk number 49: getUpgradablePackages
###################################################
#line 987 "SweaveInput"
d <- old.packages()[,c("Package", "Installed", "ReposVer")]
d <- as.data.frame(d)


###################################################
### chunk number 50: 
###################################################
#line 995 "SweaveInput"
doUpdate <- function(d)  install.packages(d$Package)


###################################################
### chunk number 51: 
###################################################
#line 1002 "SweaveInput"
n <- ncol(d)
nms <- colnames(d)
d$.toggle <- rep(FALSE, nrow(d))
store <- rGtkDataFrame(d)


###################################################
### chunk number 52: 
###################################################
#line 1011 "SweaveInput"
view <- gtkTreeView()
# add toggle
cr <- gtkCellRendererToggle()
view$insertColumnWithAttributes(0, "", cr, active = n)
cr['activatable'] <- TRUE
gSignalConnect(cr, "toggled", function(cr, path, user.data) {
  view <- user.data
  row <- as.numeric(path) + 1
  model <- view$getModel()
  n <- dim(model)[2]
  model[row, n] <- !model[row, n]
}, data=view)


###################################################
### chunk number 53: 
###################################################
#line 1027 "SweaveInput"
mapply(view$insertColumnWithAttributes, -1, nms, 
       list(gtkCellRendererText()), text = 1:n-1)


###################################################
### chunk number 54: 
###################################################
#line 1033 "SweaveInput"
view$setModel(store)


###################################################
### chunk number 55: 
###################################################
#line 1042 "SweaveInput"
b <- gtkButton("Update packages")
gSignalConnect(b, "clicked", function(w, data) {
  view <- data
  model <- view$getModel()
  n <- dim(model)[2]
  vals <- model[model[, n], -n, drop=FALSE]
  doUpdate(vals)
}, data=view)


###################################################
### chunk number 56: 
###################################################
#line 1056 "SweaveInput"
w <- gtkWindow(show=FALSE)
w$setTitle("Installed packages that need upgrading")
w$setSizeRequest(300, 300)

g <- gtkVBox(); w$add(g)
sw <- gtkScrolledWindow()
g$packStart(sw, expand=TRUE, fill=TRUE)

sw$add(view)
sw$setPolicy("automatic", "automatic")
g$packStart(b, expand=FALSE)
w$show()


###################################################
### chunk number 57: comboEditor
###################################################
#line 1084 "SweaveInput"
cr <- gtkCellRendererProgress()
cr["value"] <- 50


###################################################
### chunk number 58: 
###################################################
#line 1122 "SweaveInput"
func <- function(viewCol, cellRend, model, iter, data) {
  curVal <- model$getValue(iter, 0)$value
  fVal <- sprintf("%.3f", curVal)
  cellRend['text'] <- fVal
  cellRend['xalign'] <- 1
}


###################################################
### chunk number 59: 
###################################################
#line 1133 "SweaveInput"
view <- gtkTreeView(rGtkDataFrame(data.frame(rnorm(100))))
cr <- gtkCellRendererText()
view$insertColumnWithAttributes(0, "numbers", cr, text = 0)
vc <- view$getColumn(0)
vc$setCellDataFunc(cr, func)


###################################################
### chunk number 60: 
###################################################
#line 1173 "SweaveInput"
cr <- gtkCellRendererText()


###################################################
### chunk number 61: editedSignal
###################################################
#line 1176 "SweaveInput"
cr['editable'] <- TRUE
ID <- gSignalConnect(cr, "edited", 
f=function(cr, path, newtext, user.data) {
  i <- as.numeric(path) + 1
  j <- user.data$column
  model <- user.data$model
  model[i, j] <- newtext
}, data=list(model=store, column=1))


###################################################
### chunk number 62: editableTableForCollectingOptions
###################################################
#line 1203 "SweaveInput"
## GUI for configuring options -- in a table
library(RGtk2)


###################################################
### chunk number 63: 
###################################################
#line 1216 "SweaveInput"
opts <- c("main","sub","xlab","ylab", "line","outer")
df <- data.frame(option=opts,
                 value=c("","","","","0","FALSE"),
                 class=c(rep("character", 4), "integer", "logical"),
                 edit_color=rep("gray95", 6),
                 dirty = rep(FALSE, 6),
                 stringsAsFactors=FALSE)


###################################################
### chunk number 64: model
###################################################
#line 1233 "SweaveInput"
m <- rGtkDataFrame(df)
v <- gtkTreeView(m)


###################################################
### chunk number 65: firstColumn
###################################################
#line 1239 "SweaveInput"
cr <- gtkCellRendererText()
cr['background'] <- 'gray80'
v$insertColumnWithAttributes(position=-1,
                             title="Option",
                             cell=cr,
                             text=1 - 1)


###################################################
### chunk number 66: secondColumn
###################################################
#line 1252 "SweaveInput"
cr <- gtkCellRendererText()
cr['editable'] <- TRUE
v$insertColumnWithAttributes(position = -1,
                             title = "Value",
                             cell = cr,
                             text = 2 - 1,
                             background = 4 - 1
                             )


###################################################
### chunk number 67: editConnect
###################################################
#line 1267 "SweaveInput"
gSignalConnect(cr, "edited", function(cr, path, new.text, 
                                      user.data) {
  m <- user.data$model
  i <- as.numeric(path) + 1; j <- user.data$column
  m[i,j] <- as(as(new.text, m[i, 'class']), "character")   # format
  m[i, 'dirty'] <- TRUE                                    # mark dirty
  m[i, 'edit_color'] <- 'gray70'                           # change color
}, data=list(model=m, column=2))


###################################################
### chunk number 68: 
###################################################
#line 1279 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['title'] <- "Option editor"
w$setSizeRequest(300,500)
sw <- gtkScrolledWindow()
w$add(sw)
sw$add(v)
w$show()


###################################################
### chunk number 69: 
###################################################
#line 1303 "SweaveInput"
require(helpr, quietly=TRUE)
package <- "graphics"; topic <- "title"
rd <- helpr:::parse_help(helpr:::pkg_topic(package, topic), 
                         package = package)
descs <- rd$params$args
names(descs) <- sapply(descs, function(i) i$param)


###################################################
### chunk number 70: 
###################################################
#line 1321 "SweaveInput"
v["has-tooltip"] <- TRUE
gSignalConnect(v, "query-tooltip", 
       function(w, x, y, key_mode, tooltip, user.data) {
         out <- w$getTooltipContext(x, y, key_mode)
         if(out$retval) {
           m <- w$getModel()
           i <- as.numeric(out$path$toString()) + 1
           val <- m[i, "option"]
           txt <- descs[[val]]$desc
           txt <- gsub("code>","b>", txt)  # no code in PANGO
           tooltip$setMarkup(txt)
           TRUE
         } else {
           FALSE                           # no tooltip
         }
       })


###################################################
### chunk number 71: 
###################################################
#line 1382 "SweaveInput"
tstore <- gtkTreeStore("gchararray")
by(Cars93, Cars93$Manufacturer, function(df) {
  piter <- tstore$append()              # parent
  tstore$setValue(piter$iter, column = 0, value = df$Manufacturer[1])
  sapply(df$Model, function(model) {
    sibiter <- tstore$append(parent = piter$iter) # child
    if (is.null(sibiter$retval)) 
      tstore$setValue(sibiter$iter, column = 0, value = model)
  })
})


###################################################
### chunk number 72: 
###################################################
#line 1395 "SweaveInput"
iter <- tstore$getIterFromString("0:0")
tstore$getValue(iter$iter, column = 0)$value


###################################################
### chunk number 73: rgtk2-mvc-tree-traverse
###################################################
#line 1425 "SweaveInput"
iter <- tstore$getIterFirst()
models <- NULL
while(iter$retval) {
  child <- tstore$iterChildren(iter$iter)
  while(child$retval) {
    models <- c(models, tstore$get(child$iter, 0)[[1]])
    child$retval <- tstore$iterNext(child$iter)
  }
  iter$retval <- tstore$iterNext(iter$iter)
}


###################################################
### chunk number 74: notShown
###################################################
#line 1490 "SweaveInput"
## define tstore, but aslo in earlier example so not shown
data(Cars93, package="MASS")
tstore <- gtkTreeStore("gchararray")
Manufacturers <- Cars93$Manufacturer
Makes <- split(Cars93[,"Model"], Manufacturers)
for(i in unique(Manufacturers)) {
  piter <- tstore$append()              # parent
  tstore$setValue(piter$iter, column=0, value=i)
  for(j in Makes[[i]]) { 
    sibiter <- tstore$append(parent=piter$iter) # child
    if(is.null(sibiter$retval)) 
      tstore$setValue(sibiter$iter,column=0, value=j)
  }
}


###################################################
### chunk number 75: 
###################################################
#line 1510 "SweaveInput"
store <- rGtkDataFrame(Cars93[,"Model", drop=FALSE])


###################################################
### chunk number 76: makeView
###################################################
#line 1515 "SweaveInput"
view <- gtkTreeView()
view$insertColumnWithAttributes(0, "Make", 
           gtkCellRendererText(), text = 0)


###################################################
### chunk number 77: makeGUI
###################################################
#line 1521 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of changing models"
sw <- gtkScrolledWindow()
sw$add(view)
w$add(sw)
w$show()


###################################################
### chunk number 78: 
###################################################
#line 1531 "SweaveInput"
view$setModel(store)               # the rectangular store
view$setModel(tstore)              # or the tree store


###################################################
### chunk number 79: 
###################################################
#line 1547 "SweaveInput"
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 80: SetUpStore
###################################################
#line 1555 "SweaveInput"
store <- gtkTreeStore(rep("gchararray", 2))
sstore <- gtkTreeModelSort(store)


###################################################
### chunk number 81: 
###################################################
#line 1561 "SweaveInput"
iter <- store$append(parent=NULL)$iter
store$setValue(iter, column=0, "GlobalEnv")
store$setValue(iter, column=1, "environment")
iter <- store$append(parent=iter)


###################################################
### chunk number 82: 
###################################################
#line 1572 "SweaveInput"
view <- gtkTreeView(sstore)
view$getSelection()$setMode("multiple")


###################################################
### chunk number 83: 
###################################################
#line 1581 "SweaveInput"
gSignalConnect(view, signal = "row-expanded",
               f = function(view, iter, tpath, user.data) {
                 sortedModel <- view$getModel()
                 iter <- pathToIter(sortedModel, tpath)
                 path <- iterToRPath(sortedModel, iter)
                 children <- getChildren(path)
                 addChildren(store, children, parentIter=iter)
                 ## remove errant offspring, cf. addChildren
                 ci <- store$iterChildren(iter)
                 if(ci$retval) store$remove(ci$iter)
               })


###################################################
### chunk number 84: trePathToIter
###################################################
#line 1601 "SweaveInput"
pathToIter <- function(sstore, tpath) {
  store <- sstore$getModel()
  uspath <- sstore$convertPathToChildPath(tpath)
  store$getIter(uspath)$iter
}


###################################################
### chunk number 85: IterToPath
###################################################
#line 1612 "SweaveInput"
iterToRPath <- function(sstore, iter) {
  store <- sstore$getModel()
  indices <- store$getPath(iter)$getIndices()
  iter <- NULL
  path <- sapply(indices, function(i) {
    iter <<- store$iterNthChild(iter, i)$iter
    store$getValue(iter, 0)$value
  })
  return(path[-1])
}


###################################################
### chunk number 86: getChildren
###################################################
#line 1630 "SweaveInput"
getChildren <- function(path=character(0)) {
  hasChildren <- function(obj) 
    (is.list(obj) || is.environment(obj)) && 
  !is.null(names(as.list(obj)))
  
  getType <- function(obj) head(class(obj), n=1)

  obj <- 
    if (!length(path)) {
      .GlobalEnv
    } else {
      x <- get(path[1], envir=.GlobalEnv)
      if(length(path) > 1)
        get(path[1], envir=.GlobalEnv)[[path[-1]]]
      else
        x
    }

  children <- as.list(obj)
  
  d <- data.frame(children = names(children),
                  class = sapply(children, getType),
                  offspring = sapply(children, hasChildren))
  
  ## filter out Gtk ones
  d[!grepl("^Gtk", d$class), ]
}


###################################################
### chunk number 87: addChildren
###################################################
#line 1665 "SweaveInput"
addChildren <- function(store, children, parentIter = NULL) {
  if(nrow(children) == 0) 
    return(NULL)
  for(i in 1:nrow(children)) {
    iter <- store$append(parent=parentIter)$iter
    sapply(1:(ncol(children) - 1), function(j)              
           store$setValue(iter, column = j-1, children[i, j]))
    ## Add a branch if there are children
    if(children[i, "offspring"])
      store$append(parent=iter)
  }
}


###################################################
### chunk number 88: 
###################################################
#line 1684 "SweaveInput"
gSignalConnect(view, signal = "row-collapsed",
       f = function(view, iter, tpath, user.data) {
         sortedModel <- view$getModel()
         iter <- pathToIter(sortedModel, tpath)
         n = store$iterNChildren(iter)
         if(n > 1) { ## n=1 gets removed when expanded
           for(i in 1:(n-1)) {
             child.iter <- store$iterChildren(iter)
             if(child.iter$retval)
               store$remove(child.iter$iter)
           }
         }
       })


###################################################
### chunk number 89: DoubleClickHandler
###################################################
#line 1703 "SweaveInput"
gSignalConnect(view, signal = "row-activated",
       f = function(view, tpath, tcol) {
         sortedModel <- view$getModel()
         iter <- pathToIter(sortedModel, tpath)
         path <- iterToRPath(sortedModel, iter)
         sel <- view$getSelection()
         out <- sel$getSelectedRows()
         if(length(out) == 0) return(c()) # nothing
         vals <- c()
         for(i in out$retval) {  # multiple selections
           iter <- sortedModel$getIter(i)$iter
           newValue <- sortedModel$getValue(iter, 0)$value
           vals <- c(vals, newValue)
         }
         print(vals)  # [Replace this]
       })


###################################################
### chunk number 90: addRenderer
###################################################
#line 1725 "SweaveInput"
## Now, we define our GUI. The view will have two similar columns.
## add two cell renderers -- 1 for name, 1 for type
nms <- c("Variable name","type")
for(i in 1:2) {
  cr <- gtkCellRendererText()
  vc <- gtkTreeViewColumn()
  vc$setSortColumnId(i-1) # allow sorting
  vc$setResizable(TRUE)
  vc$setTitle(nms[i])
  vc$packStart(cr,TRUE)
  vc$addAttribute(cr,"text",i-1)
  view$insertColumn(vc, i-1)
}


###################################################
### chunk number 91: exampleGUI
###################################################
#line 1741 "SweaveInput"
## We now place the tree view widget into a basic GUI.
sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$add(view)

w <- gtkWindow()
w$setTitle("Tree view")
w$add(sw)


###################################################
### chunk number 92: 
###################################################
#line 1804 "SweaveInput"
## a combobox that learns as you go.
## no tooltip per item, but here we add as detail
library(RGtk2)


###################################################
### chunk number 93: 
###################################################
#line 1818 "SweaveInput"
m <- rGtkDataFrame(data.frame(fname=character(0), visits=character(0), 
                              novisits=integer(0), stringsAsFactors=FALSE))
cb <- gtkComboBoxEntryNewWithModel(m, text.column=0)


###################################################
### chunk number 94: ConfigureCellRenderers
###################################################
#line 1830 "SweaveInput"
cr <- gtkCellRendererText()
cb$packStart(cr)
cb$addAttribute(cr, "text", 1)
cr['foreground'] <- "gray50"
cr['ellipsize'] <- "end"
cr['style'] <- "italic"
cr['alignment'] <- "right"


###################################################
### chunk number 95: helperFunction2
###################################################
#line 1862 "SweaveInput"
callHelpFunction <- function(cb, value) {
  model <- cb$getModel()
  ind <- match(value,model[,1, drop=TRUE])
  n <- model[ind, "novisits"] <- model[ind, "novisits"] + 1
  model[ind, "visits"] <- 
    sprintf(ngettext(n, "%s visit", "%s visits"), n)
  ## select for easier editing
  cb$getChild()$selectRegion(start=0,end=-1)
  help(value)
}
gSignalConnect(cb, "changed", f=function(w, ...) {
  if(cb$getActive() >= 0) {
    val <- w$getActiveText()
    callHelpFunction(w, val)
  }
})


###################################################
### chunk number 96: 
###################################################
#line 1884 "SweaveInput"
gSignalConnect(cb$getChild(), "activate", 
               f = function(cb, entry, ...) {
  val <- entry$getText()
  if(!any(val == cb$getModel()[,1, drop=TRUE])) {
    model <- cb$getModel()
    model$appendRows(data.frame(fname=val, visits="", novisits=0,
                                stringsAsFactors = FALSE))
  }
  callHelpFunction(cb, val)
}, data=cb, user.data.first=TRUE)


###################################################
### chunk number 97: Layout
###################################################
#line 1898 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 15
g <- gtkHBox(); w$add(g)
g$packStart(gtkLabel("Help on:"))
g$packStart(cb, expand=TRUE, fill=TRUE)
#
w$show()


###################################################
### chunk number 98: 
###################################################
#line 1972 "SweaveInput"
require(RGtk2)


###################################################
### chunk number 99: AppendWords
###################################################
#line 1978 "SweaveInput"
entry <- gtkEntry()
completion <- gtkEntryCompletion()
entry$setCompletion(completion)


###################################################
### chunk number 100: SetCompletion
###################################################
#line 1988 "SweaveInput"
store <- rGtkDataFrame(state.name)
completion$setModel(store)
completion$setTextColumn(0)
completion['inline-completion'] <- TRUE
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 101: SetMatchFunc
###################################################
#line 1998 "SweaveInput"
matchAnywhere <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)$value # column 0 in model
  
  str <- comp$getEntry()$getText()      # case sensitive
  grepl(str, rowVal)
}
completion$setMatchFunc(matchAnywhere)


###################################################
### chunk number 102: notShown
###################################################
#line 2012 "SweaveInput"
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()


###################################################
### chunk number 103: gtk-mvc-entry-buffer eval=FALSE
###################################################
## #line 2038 "SweaveInput"
## buffer <- gtkEntryBuffer()        
## entry1 <- gtkEntry(buffer = buffer)
## entry2 <- gtkEntry(buffer = buffer)
## entry1$setText("echo")
## entry2$getText()


###################################################
### chunk number 104: 
###################################################
#line 2070 "SweaveInput"
w <- gtkWindow()
w['border-width'] <- 15
#
tv <- gtkTextView()
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
#
w$add(sw)


###################################################
### chunk number 105: setText
###################################################
#line 2083 "SweaveInput"
buffer <- tv$getBuffer()
buffer$setText("Lorem ipsum dolor sit amet ...")


###################################################
### chunk number 106: bufferGetText
###################################################
#line 2091 "SweaveInput"
start <- buffer$getStartIter()$iter    
end <- buffer$getEndIter()$iter
buffer$getText(start, end)


###################################################
### chunk number 107: gtk-mvc-text-noneditable
###################################################
#line 2112 "SweaveInput"
tv['editable'] <- FALSE
tv['cursor-visible'] <- FALSE


###################################################
### chunk number 108: gtk-mvc-buffer-iter-bounds
###################################################
#line 2192 "SweaveInput"
bounds <- buffer$getBounds()
bounds


###################################################
### chunk number 109: gtk-mvc-buffer-iter-atLineOffset
###################################################
#line 2215 "SweaveInput"
iter <- buffer$getIterAtLineOffset(0, 6)
iter$iter$getChar()


###################################################
### chunk number 110: gtk-mvc-buffer-iter-getChar
###################################################
#line 2231 "SweaveInput"
bounds$start$getChar()


###################################################
### chunk number 111: gtk-mvc-buffer-iter-getText
###################################################
#line 2238 "SweaveInput"
bounds$start$getText(bounds$end)


###################################################
### chunk number 112: gtk-mvc-buffer-iter-insert
###################################################
#line 2244 "SweaveInput"
buffer$insert(bounds$start, "prefix")


###################################################
### chunk number 113: 
###################################################
#line 2270 "SweaveInput"
## setup example, not shown
w <- gtkWindow()
tv <- gtkTextView()
w$add(tv)


###################################################
### chunk number 114: FindWordAtMouseClick
###################################################
#line 2280 "SweaveInput"
ID <- gSignalConnect(tv, "button-press-event", 
                     f=function(w, e, ...) {
  siter <- w$getIterAtLocation(e$getX(), e$getY())$iter
  niter <- siter$copy()                 # need copy
  siter$backwardWordStart()
  niter$forwardWordEnd()
  val <- siter$getText(niter)
  print(val)                            # replace
  return(FALSE)                         # call next handler
})


###################################################
### chunk number 115: gtk-mvc-text-mark-insert
###################################################
#line 2306 "SweaveInput"
insert <- buffer$getMark("insert")


###################################################
### chunk number 116: gtk-mvc-text-mark-getIter
###################################################
#line 2311 "SweaveInput"
insertIter <- buffer$getIterAtMark(insert)$iter
bounds$start$getText(insertIter)


###################################################
### chunk number 117: gtk-mvc-text-mark-gravity
###################################################
#line 2321 "SweaveInput"
insertIter$getOffset()
buffer$insert(insertIter, "insertion")
buffer$getIterAtMark(insert)$iter$getOffset()


###################################################
### chunk number 118: gtk-mvc-text-mark-construct
###################################################
#line 2329 "SweaveInput"
mark <- buffer$createMark(mark.name = "start", 
                          where = buffer$getStartIter()$iter, 
                          left.gravity = TRUE)


###################################################
### chunk number 119: gtk-mvc-text-tags-create
###################################################
#line 2347 "SweaveInput"
tag.b <- buffer$createTag(tag.name="bold", 
                          weight=PangoWeight["bold"])
tag.em <- buffer$createTag(tag.name="em", 
                           style=PangoStyle["italic"])
tag.large <- buffer$createTag(tag.name="large", 
                              font="Serif normal 18")


###################################################
### chunk number 120: gtk-mvc-text-tags-apply
###################################################
#line 2357 "SweaveInput"
iter <- buffer$getBounds()
buffer$applyTag(tag.b, iter$start, iter$end)  # updates iters
buffer$applyTagByName("em", iter$start, iter$end)


###################################################
### chunk number 121: gtk-mvc-text-selectRange
###################################################
#line 2370 "SweaveInput"
siter <- buffer$getStartIter()$iter
eiter <- siter$copy(); eiter$forwardWordEnd()
buffer$selectRange(siter, eiter)


###################################################
### chunk number 122: gtk-mvc-text-clipboard-get
###################################################
#line 2381 "SweaveInput"
cb <- gtkClipboardGet()


###################################################
### chunk number 123: gtk-mvc-text-clipboard-copy-paste
###################################################
#line 2387 "SweaveInput"
buffer$copyClipboard(cb)
buffer$pasteClipboard(cb, override.location = buffer$getEndIter()$iter, 
                      default.editable = TRUE)


###################################################
### chunk number 124: gtk-mvc-text-anchor
###################################################
#line 2414 "SweaveInput"
anchor <- buffer$createChildAnchor(buffer$getEndIter()$iter)


###################################################
### chunk number 125: gtk-mvc-text-addChild
###################################################
#line 2420 "SweaveInput"
b <- gtkButton("click me")
tv$addChildAtAnchor(b, anchor)


###################################################
### chunk number 126: 
###################################################
#line 2438 "SweaveInput"
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 127: TextViewWidget
###################################################
#line 2445 "SweaveInput"
tv <- gtkTextView()
tb <- tv$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
tv$modifyFont(font)                     # widget wide


###################################################
### chunk number 128: 
###################################################
#line 2454 "SweaveInput"
tb$createTag(tag.name="cmdInput")
tb$createTag(tag.name="cmdOutput", 
             weight=PangoWeight["bold"])
tb$createTag(tag.name="cmdError", 
             weight=PangoStyle["italic"], foreground="red")
tb$createTag(tag.name="uneditable", editable=FALSE)


###################################################
### chunk number 129: 
###################################################
#line 2465 "SweaveInput"
startCmd <- tb$createMark("startCmd", tb$getStartIter()$iter, left.gravity=TRUE)
bufferEnd <- tb$createMark("bufferEnd", tb$getEndIter()$iter)


###################################################
### chunk number 130: 
###################################################
#line 2472 "SweaveInput"
scrollViewport <- function(view, ...) {
  iter <- view$getBuffer()$getEndIter()$iter
  view$scrollToMark(bufferEnd, within.margin=0)
  return(FALSE)
}


###################################################
### chunk number 131: 
###################################################
#line 2483 "SweaveInput"
addPrompt <- function(obj, prompt=c("prompt", "continue"),
                      setMark=TRUE) 
{
  prompt <- match.arg(prompt)
  prompt <- getOption(prompt)
  
  endIter <- obj$getEndIter()
  obj$insert(endIter$iter, prompt)
  if(setMark)
    obj$moveMarkByName("startCmd", endIter$iter)
  obj$applyTagByName("uneditable", obj$getStartIter()$iter, 
                     obj$getEndIter()$iter)
}
addPrompt(tb) ## place an initial prompt


###################################################
### chunk number 132: addOutput
###################################################
#line 2502 "SweaveInput"
addOutput <- function(obj, output, tagName="cmdOutput") {
  endIter <- obj$getEndIter()
  if(length(output) > 0) 
    sapply(output, function(i)  {
      obj$insertWithTagsByName(endIter$iter, i, tagName)
      obj$insert(endIter$iter, "\n", len=-1)
    })
}


###################################################
### chunk number 133: 
###################################################
#line 2519 "SweaveInput"
findCMD <- function(obj) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(startIter$iter, endIter$iter, TRUE)
  regex <- paste("\n[", getOption("continue"), "] ", sep = "")
  cmd <- unlist(strsplit(cmd, regex))
  cmd
}


###################################################
### chunk number 134: 
###################################################
#line 2535 "SweaveInput"
evalCMD <- function(tv, cmd) {
  tb <- tv$getBuffer()
  cmd <- paste(cmd, sep="\n")
  out <- try(parse(text=cmd), silent=TRUE)
  if(inherits(out, "try-error")) {
    if(length(grep("end", out))) {      # unexpected end of input
      ## continue
      addPrompt(tb, "continue", setMark=FALSE)
    } else {
      ## error
      addOutput(tb, out, tagName = "cmdError")
    }
    scrollViewport(tv)
    return()
  }
  
  e <- parse(text = cmd)
  out <- capture.output(vis <- 
                        withVisible(try(eval(e, .GlobalEnv), TRUE)))

  addOutput(tb, out) 
  if (inherits(vis$value, "try-error"))
    addOutput(tb, vis$value, "cmdError")
  else if (vis$visible)
    addOutput(tb, capture.output(print(vis$value)))
  
  addPrompt(tb, "prompt", setMark=TRUE)
  scrollViewport(tv)  
}


###################################################
### chunk number 135: connectBinding
###################################################
#line 2569 "SweaveInput"
gSignalConnect(tv, "key-release-event", f=function(w, e) {
  obj <- w$getBuffer()                  # w is textview
  keyval <- e$getKeyval()
  if(keyval == GDK_Return) {
    cmd <- findCMD(obj)                 # poss. character(0)
    if(length(cmd) && nchar(cmd) > 0)
      evalCMD(w, cmd)
  }
})


###################################################
### chunk number 136: makeGUI
###################################################
#line 2593 "SweaveInput"
## scroll window
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(tv)

## top-level window
w <- gtkWindow(show=FALSE)
w$setTitle("A terminal")
w$add(sw)
w$setSizeRequest(400,200)
w$showAll()


###################################################
### chunk number 137: 
###################################################
#line 2609 "SweaveInput"
## History features
## This is not illustrated in text, but is added here to illustrate how this might be implemented
## The major issue with this example is we can't trap the return or arrow keys before they move 
## the cursor so any thing ends up looking jerky

## store the stack and a pointer to the current command with the text buffer
tb$setData("history", list())
tb$setData("ptr", 0)


## replace cmd with that in str.
replaceCMD <- function(obj, str) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  obj$delete(startIter$iter, endIter$iter)
  endIter <- obj$getEndIter()
  obj$insertWithTagsByName(endIter$iter, str[1], "cmdInput")
  if(length(str) > 1) {
    for(i in str[-1]) {
      obj$insert(endIter$iter, "\n")
      obj$insertWithTagsByName(endIter$iter, getOption("continue"), "cmdInput")
      obj$insertWithTagsByName(endIter$iter, i, "cmdInput")
    }
  }
  moveViewport(obj)
}

## This adds the command to the history stack and moves the pointer.
addHistory <- function(obj, cmd) {
  history <- obj$GetData("history"); ptr <- obj$GetData("ptr")
  history <- c(history, cmd)
  ptr <- length(history)
  obj$SetData("ptr", ptr)
  obj$SetData("history", history)
}

## these next two functions scroll through the history
scrollHistoryUp <- function(obj) {
  ## move through history
  ptr <- obj$GetData("ptr") - 1
  if(ptr > 0)
    replaceCMD(obj, obj$GetData("history")[[ptr]])
  obj$SetData("ptr", max(ptr,0))
  obj$PlaceCursor(obj$GetEndIter()$iter)
}

scrollHistoryDown <- function(obj) {
  ## move through history
  ptr <- obj$GetData("ptr") + 1
  history <- obj$GetData("history")
  if(ptr <= length(history)) 
    replaceCMD(obj, history[[ptr]])
  obj$SetData("ptr", min(ptr,length(history)))
  obj$PlaceCursor(obj$GetEndIter()$iter)
}

## History bindings
## this uses Control-p and Control-n to move
ID <- gSignalConnect(tv, "key-release-event", f=function(w, e, data) {
  if(e$GetState() != GdkModifierType['control-mask'])
    return(TRUE)

  obj <- w$GetBuffer()
  keyval <- e$GetKeyval()

  if(keyval == GDK_p) {
    scrollHistoryUp(obj)
  } else if(keyval == GDK_n) {
    scrollHistoryDown(obj)
  }
  return(TRUE)
})



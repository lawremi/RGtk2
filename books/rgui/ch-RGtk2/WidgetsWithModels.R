###################################################
### chunk number 1: 
###################################################
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
data(Cars93, package="MASS")            # mix of classes
model <- rGtkDataFrame(Cars93)
model[1, 4] <- 12
model[1, 4]                              # get value


###################################################
### chunk number 3: 
###################################################
model$setFrame(Cars93[1:5, 1:5])


###################################################
### chunk number 4: rgtk2-mvc-treeview-construct
###################################################
view <- gtkTreeView(model)


###################################################
### chunk number 5: rgtk2-mvc-insert-column-hardway
###################################################
vc <- gtkTreeViewColumn()
vc$setTitle("Manufacturer")
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)
view$insertColumn(vc, 0)


###################################################
### chunk number 6: rgtk2-mvc-insert-column-easyway
###################################################
view$insertColumnWithAttributes(position = -1, title = "Model", 
                                cell = gtkCellRendererText(), text = 1)


###################################################
### chunk number 7: rgtk2-mvc-insert-all-columns
###################################################
view <- gtkTreeView(model)
mapply(view$insertColumnWithAttributes,  -1, colnames(model), 
       list(gtkCellRendererText()), text = seq_len(ncol(model)) - 1)


###################################################
### chunk number 8: rgtk2-mvc-path-constructor-list
###################################################
secondRow <- gtkTreePathNewFromIndices(2)


###################################################
### chunk number 9: rgtk2-mvc-path-constructor-tree
###################################################
abcPath <- gtkTreePathNewFromIndices(c(1, 3, 2))
abcPath <- gtkTreePathNewFromString("1:3:2")


###################################################
### chunk number 10: rgtk2-mvc-iter-traverse
###################################################
## iter <- model$getIterFirst()
## manufacturer <- character()
## while(iter$retval) {
##   manufacturer <- c(manufacturer, model$get(iter$iter, 0)[[1]])
##   model$iterNext(iter$iter)
## }


###################################################
### chunk number 11: rgtk2-mvc-iter-apply
###################################################
nrows <- model$iterNChildren(NULL)
manufacturer <- sapply(seq(nrows), function(i) {
  iter <- model$iterNthChild(NULL, i)
  model$get(iter$iter, 0)[[1]]
})


###################################################
### chunk number 12: 
###################################################
model <- rGtkDataFrame(mtcars)
view <- gtkTreeView(model)
selection <- view$getSelection()
selection$setMode("single")


###################################################
### chunk number 13: 
###################################################
vc <- gtkTreeViewColumn()
#view$insertColumnWithAttributes(0, "title", gtkCellRendererText(), text = 0)
## pack in GUI
sw <- gtkScrolledWindow()
sw$add(view)
##
w <- gtkWindow(show=FALSE)
w['title'] <- "Multiple selection example"
w$add(sw)
w$show()


###################################################
### chunk number 14: 
###################################################
selection$selectPath(gtkTreePathNewFromIndices(3)) # set 
# 
curSel <- selection$getSelected()       # retrieve selection
with(curSel, model$getValue(iter, 0)$value) # model, iter


###################################################
### chunk number 15: 
###################################################
selection$setMode("multiple")


###################################################
### chunk number 16: notShown
###################################################
selection$selectPath(gtkTreePathNewFromIndices(1)) # set for example
selection$selectPath(gtkTreePathNewFromIndices(2)) # set for example
selection$selectPath(gtkTreePathNewFromIndices(3)) # set for example


###################################################
### chunk number 17: 
###################################################
curSel <- selection$getSelectedRows()
if(length(curSel$retval)) {
  rows <- sapply(curSel$retval, gtkTreePathGetIndices) + 1L
  curSel$model[rows, 1]
}


###################################################
### chunk number 18:  eval=FALSE
###################################################
## sapply(view$getColumns(), function(i) i == column)


###################################################
### chunk number 19: rgtk2-mvc-sorting-clickable
###################################################
vc <- view$getColumn(0)
vc$setSortColumnId(0)


###################################################
### chunk number 20: rgtk2-mvc-sorting-sortable
###################################################
model$setSortColumnId(0, GtkSortType['ascending'])


###################################################
### chunk number 21: basicSort
###################################################
store <- rGtkDataFrame(mtcars)
sorted <- gtkTreeModelSortNewWithModel(store)
view <- gtkTreeView(sorted)
view$insertColumnWithAttributes(0, "Click to sort", gtkCellRendererText(), 
                                text = 0)
view$getColumn(0)$setSortColumnId(0)


###################################################
### chunk number 22: sort-example
###################################################
f <- function(model, iter1, iter2, user.data) {
  column <- user.data
  val1 <- model$getValue(iter1, column)$value
  val2 <- model$getValue(iter2, column)$value
  as.integer(val1 - val2)
}
sorted$setSortFunc(sort.column.id=0, sort.func=f, user.data=0)   # column


###################################################
### chunk number 23: notShown
###################################################
## basic GUI
sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of sortable tree view"
w$add(sw)
w$show()


###################################################
### chunk number 24: 
###################################################
df <- data.frame(col=letters[1:3], vis=c(TRUE, TRUE, FALSE))
store <- rGtkDataFrame(df)
filtered <- store$filter()
filtered$setVisibleColumn(1)            # 0-based
view <- gtkTreeView(filtered)


###################################################
### chunk number 25: notShown
###################################################
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
### chunk number 26: 
###################################################
library(RGtk2)


###################################################
### chunk number 27: 
###################################################
df <- data.frame(state.name)
df$VISIBLE <- rep(TRUE, nrow(df))
store <- rGtkDataFrame(df)


###################################################
### chunk number 28: 
###################################################
filteredStore <- store$filter()
filteredStore$setVisibleColumn(ncol(df)-1)      # offset
view <- gtkTreeView(filteredStore)


###################################################
### chunk number 29: 
###################################################
view$insertColumnWithAttributes(0, "Col", gtkCellRendererText(), text = 0)


###################################################
### chunk number 30: 
###################################################
e <- gtkEntry()
gSignalConnect(e, "changed", function(w, data) {
  pattern <- w$getText()
  df <- data$getModel()
  values <- df[, "state.name"]
  df[, "VISIBLE"] <- grepl(pattern, values)
}, data=filteredStore)


###################################################
### chunk number 31: 
###################################################
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
### chunk number 32: cr-right-aligned
###################################################
cr <- gtkCellRendererText()
cr['xalign'] <- 1                       # default 0.5 = centered
cr['family'] <- "Helvetica"  


###################################################
### chunk number 33: 
###################################################
cr <- gtkCellRendererCombo()
store <- rGtkDataFrame(state.name)
cr['model'] <- store
cr['text-column'] <- 0
cr['editable'] <- TRUE                  # needed


###################################################
### chunk number 34: rgtk2-mvc-pixbuf-in-df
###################################################
library(RGtk2)
apple <- gdkPixbuf(filename = imagefile("apple-red.png"))[[1]]
floppy <- gdkPixbuf(filename = imagefile("floppybuddy.gif"))[[1]]
logo <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))[[1]]
rdf <- rGtkDataFrame(data.frame(image = I(list(apple, floppy, logo))))
view <- gtkTreeView(rdf)
view$insertColumnWithAttributes(0, "image", gtkCellRendererPixbuf(), pixbuf = 0)
win <- gtkWindow()
win$add(view)


###################################################
### chunk number 35: 
###################################################
## also in previous example
addToStockIcons <- function(pixbufs, stock.prefix="new") {
  iconfactory <- gtkIconFactory()
  
  items <- lapply(names(pixbufs), function(iconName) {
    ## each icon has its own icon set, which is registered with icon factory
    iconset <- gtkIconSetNewFromPixbuf(pixbufs[[iconName]])
    stockName <- paste(stock.prefix, "-", iconName, sep="")
    iconfactory$add(stockName, iconset)
    
    ## create stock item for icon
    as.GtkStockItem(list(stock_id = stockName, label = iconName))
  })
  ## register our factory of icons
  iconfactory$addDefault()
  ## officially register the stock items
  gtkStockAdd(items)
}


###################################################
### chunk number 36: addIcons
###################################################
fileNms <- c(factor = system.file("images","factor.gif", package="gWidgets"),
             numeric = system.file("images","numeric.gif", package="gWidgets"))
pixbufs <- lapply(fileNms, function(fn) gdkPixbuf(file = fn)[[1]])
addToStockIcons(pixbufs)


###################################################
### chunk number 37: 
###################################################
d <- data.frame(varNames=c("response", "trt1", "trt2"),
                stock.id=c("new-numeric", "new-factor", "new-factor"),
                leftView  = rep(TRUE, 3),
                rightView = rep(FALSE, 3),
                stringsAsFactors=FALSE)
model <- rGtkDataFrame(d)


###################################################
### chunk number 38: 
###################################################
makeView <- function(model, vis.col) {
  filteredModel <- model$filter()
  filteredModel$setVisibleColumn(vis.col - 1)
  tv <- gtkTreeView(filteredModel)
  tv$getSelection()$setMode("multiple")
  ##
  cr <- gtkCellRendererPixbuf()
  cr['xalign'] <- 1
  tv$insertColumnWithAttributes(0, "Variable", cr, "stock-id" = 1)
  vc <- tv$getColumn(0)
  ##
  cr <- gtkCellRendererText()
  vc$PackStart(cr, expand=TRUE)
  cr['xalign'] <- 0
  cr['xpad'] <- 5
  vc$addAttribute(cr, "text", 0)

  return(tv)
}


###################################################
### chunk number 39: 
###################################################
views <- list()
views[["left"]] <- makeView(model,3)
views[["right"]] <- makeView(model,4)
selections <- lapply(views, gtkTreeViewGetSelection)


###################################################
### chunk number 40: 
###################################################
buttons <- list()
buttons[["fromLeft"]] <- gtkButton(">")
buttons[["fromRight"]] <- gtkButton("<")


###################################################
### chunk number 41: basicGUI
###################################################
## Not shown, but lays out a basic GUI
w <- gtkWindow()
g <- gtkHBox()
w$add(g)
g$PackStart(views$left)
vg <- gtkVBox()
QT <- sapply(buttons, function(i) vg$packStart(i, expand=FALSE))
g$PackStart(vg)
g$PackStart(views$right)


###################################################
### chunk number 42: 
###################################################
moveSelected <- function(b, i) {
  selection <- selections[[i]]
  selected <- selection$getSelectedRows()
  if(length(selected$retval)) {
    childRows <- sapply(selected$retval, function(childPath) {
      childRow <- as.numeric(childPath$toString()) + 1L
    })
    shownIndices <- which(model[, 2L + i])
    rows <- shownIndices[childRows]
    
    model[rows, 2L + i] <- FALSE
    model[rows, 2L + (3L-i)] <- !model[rows, 2L + i]
  }
}


###################################################
### chunk number 43: 
###################################################
mapply(gSignalConnect, buttons, "clicked", list(moveSelected), 1:2)


###################################################
### chunk number 44: disableButtonsIfNoSelection
###################################################
disableButton <- function(sel, button) {
  selected <- sel$getSelectedRows()
  button$setSensitive(length(selected$retval) != 0)
}
mapply(gSignalConnect, selections, "changed", list(disableButton), buttons)


###################################################
### chunk number 45: 
###################################################
sapply(buttons, gtkWidgetSetSensitive, FALSE)


###################################################
### chunk number 46: cellRendererToggle
###################################################
cr <- gtkCellRendererToggle()
cr['activatable'] <- TRUE               # cell can be activated
cr['active'] <- TRUE
gSignalConnect(cr, "toggled", function(w, path) {
  model$active[as.numeric(path) + 1] <- w['active']
})


###################################################
### chunk number 47: 
###################################################
## example showing how to add a toggle button on left of data display
library(RGtk2)


###################################################
### chunk number 48: FixACRANforSweave
###################################################
repos <- getOption("repos")
repos["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN"
options(repos = repos)


###################################################
### chunk number 49: getUpgradablePackages
###################################################
d <- old.packages()[,c("Package", "Installed", "ReposVer")]
d <- as.data.frame(d)


###################################################
### chunk number 50: 
###################################################
doUpdate <- function(d) {
  install.packages(d$Package)
}


###################################################
### chunk number 51: 
###################################################
n <- ncol(d)
nms <- colnames(d)
d$.toggle <- rep(FALSE, nrow(d))
store <- rGtkDataFrame(d)


###################################################
### chunk number 52: 
###################################################
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
mapply(view$insertColumnWithAttributes, -1, nms, list(gtkCellRendererText()), 
       text = 1:n-1)


###################################################
### chunk number 54: 
###################################################
view$setModel(store)


###################################################
### chunk number 55: 
###################################################
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
cr <- gtkCellRendererProgress()
cr["value"] <- 50                       # fixed 50%
cr['orientation'] <- "right-to-left"


###################################################
### chunk number 58: 
###################################################
func <- function(viewCol, cellRend, model, iter, data) {
  curVal <- model$getValue(iter, 0)$value
  fVal <- sprintf("%.3f", curVal)
  cellRend['text'] <- fVal
  cellRend['xalign'] <- 1
}


###################################################
### chunk number 59: 
###################################################
view <- gtkTreeView(rGtkDataFrame(data.frame(rnorm(100))))
cr <- gtkCellRendererText()
view$insertColumnWithAttributes(0, "numbers", cr, text = 0)
vc <- view$getColumn(0)
vc$setCellDataFunc(cr, func)


###################################################
### chunk number 60: 
###################################################
cr <- gtkCellRendererText()


###################################################
### chunk number 61: editedSignal
###################################################
cr['editable'] <- TRUE
ID <- gSignalConnect(cr, "edited", 
f=function(cr, path, newtext, user.data) {
  curRow <- as.numeric(path) + 1
  curCol <- user.data$column
  model <- user.data$model
  model[curRow, curCol] <- newtext
}, data=list(model=store, column=1))


###################################################
### chunk number 62: 
###################################################
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
### chunk number 63: 
###################################################
iter <- tstore$getIterFromString("0:0")
tstore$getValue(iter$iter, column = 0)$value


###################################################
### chunk number 64: rgtk2-mvc-tree-traverse
###################################################

iter <- tstore$getIterFirst()
models <- NULL
while(iter$retval) {
  child <- tstore$iterChildren(iter$iter)
  while(child$retval) {
    models <- c(models, tstore$get(child$iter, 0)[[1]])
  }
  tstore$iterNext(iter$iter)
}


###################################################
### chunk number 65: notShown
###################################################
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
### chunk number 66: 
###################################################
store <- rGtkDataFrame(Cars93[,"Model", drop=FALSE])


###################################################
### chunk number 67: makeView
###################################################
view <- gtkTreeView()
view$insertColumnWithAttributes(0, "Make", gtkCellRendererText(), text = 0)


###################################################
### chunk number 68: makeGUI
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of changing models"
sw <- gtkScrolledWindow()
sw$add(view)
w$add(sw)
w$show()


###################################################
### chunk number 69: 
###################################################
view$setModel(store)               # the rectangular store
view$setModel(tstore)              # or the tree store


###################################################
### chunk number 70: 
###################################################
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 71: SetUpStore
###################################################
store <- gtkTreeStore(rep("gchararray", 2))
sstore <- gtkTreeModelSort(store)


###################################################
### chunk number 72: 
###################################################
iter <- store$append(parent=NULL)$iter
store$setValue(iter, column=0, "GlobalEnv")
store$setValue(iter, column=1, "environment")
iter <- store$append(parent=iter)


###################################################
### chunk number 73: 
###################################################
view <- gtkTreeView(sstore)
view$getSelection()$setMode("multiple")


###################################################
### chunk number 74: 
###################################################
gSignalConnect(view, signal = "row-expanded",
               f = function(view, iter, tpath, user.data) {
                 sortedModel <- view$getModel()
                 iter <- pathToIter(sortedModel, tpath)
                 path <- iterToRPath(sortedModel, iter)
                 children <- getChildren(path)
                 addChildren(store, children, parentIter=iter)
                 ## remove errant 1st offspring. See addChildren
                 ci <- store$iterChildren(iter)
                 if(ci$retval) store$remove(ci$iter)
               })


###################################################
### chunk number 75: trePathToIter
###################################################
pathToIter <- function(sstore, tpath) {
  store <- sstore$getModel()
  uspath <- sstore$convertPathToChildPath(tpath)
  store$getIter(uspath)$iter
}


###################################################
### chunk number 76: IterToPath
###################################################
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
### chunk number 77: getChildren
###################################################
getChildren <- function(path=character(0)) {
  hasChildren <- function(obj) 
    (is.list(obj) || is.environment(obj)) && !is.null(names(as.list(obj)))
  
  getType <- function(obj) head(class(obj), n=1)

  obj <- if (!length(path))
    .GlobalEnv
  else eval(parse(text=paste(path, collapse="$")), envir=.GlobalEnv)

  children <- as.list(obj)
  
  d <- data.frame(children = names(children),
                  class = sapply(children, getType),
                  offspring = sapply(children, hasChildren))
  
  ## filter out Gtk ones
  d[!grepl("^Gtk", d$class), ]
}


###################################################
### chunk number 78: addChildren
###################################################
addChildren <- function(store, children, parentIter = NULL) {
  if(nrow(children) == 0) 
    return(NULL)
  for(i in 1:nrow(children)) {
    iter <- store$append(parent=parentIter)$iter
    sapply(1:(ncol(children) - 1), function(j)              
           store$setValue(iter, column = j - 1, children[i, j]))
    ## Add a branch if there are children
    if(children[i, "offspring"])
      store$append(parent=iter)
  }
}


###################################################
### chunk number 79: 
###################################################
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
### chunk number 80: DoubleClickHandler
###################################################
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
### chunk number 81: addRenderer
###################################################
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
### chunk number 82: exampleGUI
###################################################
## We now place the tree view widget into a basic GUI.
sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$add(view)

w <- gtkWindow()
w$setTitle("Tree view")
w$add(sw)


###################################################
### chunk number 83: 
###################################################
datasets <- c("mtcars", "Cars93")
rdf <- rGtkDataFrame(datasets)
dfCb <- gtkComboBoxEntryNewWithModel(rdf, text.column = 2)


###################################################
### chunk number 84: 
###################################################
variableNames <- character(0)
varModel <- rGtkDataFrame(variableNames)
varCb <- gtkComboBox(varModel)
cr <- gtkCellRendererText()
varCb$packStart(cr)
varCb$addAttribute(cr, "text", 0)       # column 1


###################################################
### chunk number 85: notShown
###################################################
## Our basic GUI uses a table for layout. Comboboxes fill and expand to fill 
## the cell.
tbl <- gtkTableNew(rows=2, columns=2, homogeneous=FALSE)
tbl$attach(gtkLabel("Data frame"), left.attach=0,1, top.attach=0,1, 
           xoptions = 0, yoptions = 0, xpadding = 5)
tbl$attach(dfCb, left.attach=1,2, top.attach=0,1, yoptions = 0)

tbl$attach(gtkLabel("Variables"), left.attach=0,1, top.attach=1,2, 
           xoptions = 0, yoptions = 0, xpadding = 5)
tbl$attach(varCb, left.attach=1,2, top.attach=1,2, yoptions = 0)


###################################################
### chunk number 86: 
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of comboboxes"
g <- gtkHBox()
g$packStart(tbl, padding=15)
w$add(g)
w$showAll()


###################################################
### chunk number 87: 
###################################################
newDfSelected <- function(varCb, w, ...) {
  if(inherits(w, "GtkComboBox"))        # get entry widget
    w <- w$getChild()
  val <- w$getText()
  df <- try(get(val, envir=.GlobalEnv), silent=TRUE)
  if(!inherits(df, "try-error") && is.data.frame(df)) {
    nms <- names(df)
    ## update model
    newModel <- rGtkDataFrame(nms)
    varCb$setModel(newModel)
    varCb$setActive(-1)
  }
}
gSignalConnect(dfCb, "changed", f=newDfSelected,
               user.data.first=TRUE,
               data=varCb)
gSignalConnect(dfCb$getChild(), "activate", f=newDfSelected,
               user.data.first=TRUE,
               data=varCb)


###################################################
### chunk number 88: 
###################################################
## Example of combo box for colors
library(RGtk2)


###################################################
### chunk number 89: 
###################################################
model <- rGtkDataFrame(palette())


###################################################
### chunk number 90: comboBox
###################################################
combobox <- gtkComboBox(model)
## color
crc <- gtkCellRendererText()
combobox$packStart(crc, expand=FALSE)                
combobox$addAttribute(crc, "cell-background", 0)
crc$width <- 25
## text
crt <- gtkCellRendererText()
crt['xpad'] <- 5                        # give some space
combobox$packStart(crt)
combobox$addAttribute(crt, "text", 0)


###################################################
### chunk number 91:  eval=FALSE
###################################################
## ## display in a window
## win <- gtkWindow(show=FALSE)
## win$setTitle("Color test")
## win$add(combobox)
## win$showAll()


###################################################
### chunk number 92: 
###################################################
require(RGtk2)


###################################################
### chunk number 93: AppendWords
###################################################
entry <- gtkEntry()
completion <- gtkEntryCompletion()
entry$setCompletion(completion)


###################################################
### chunk number 94: SetCompletion
###################################################
store <- rGtkDataFrame(state.name)
completion$setModel(store)
completion$setTextColumn(0)
completion['inline-completion'] <- TRUE
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 95: SetMatchFunc
###################################################
matchAnywhere <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)$value   # column 0 in model
  
  str <- comp$getEntry()$getText()      # case sensitive
  grepl(str, rowVal)
}
completion$setMatchFunc(matchAnywhere)


###################################################
### chunk number 96: notShown
###################################################
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()


###################################################
### chunk number 97: 
###################################################
## setup example, not shown
w <- gtkWindow()
tv <- gtkTextView()
w$add(tv)


###################################################
### chunk number 98: FindWordAtMouseClick
###################################################
ID <- gSignalConnect(tv, "button-press-event", f=function(w, e, ...) {
  siter <- w$getIterAtLocation(e$getX(), e$getY())$iter
  niter <- siter$copy()                 # need copy
  siter$backwardWordStart()
  niter$forwardWordEnd()
  val <- w$getBuffer()$getText(siter, niter)
  print(val)                            # replace
  return(FALSE)                         # call next handler
})


###################################################
### chunk number 99: 
###################################################
tv <- gtkTextView()
tb <- tv$getBuffer()
tb$setText("the quick brown fox jumped over the lazy dog")
##
tag.b <- tb$createTag(tag.name="bold", 
                      weight=PangoWeight["bold"])
tag.em <- tb$createTag(tag.name="em", 
                       style=PangoStyle["italic"])
tag.large <- tb$createTag(tag.name="large", 
                          font="Serif normal 18")
##
iter <- tb$getBounds()         # or get iters another way
tb$applyTag(tag.b, iter$start, iter$end)  # updates iters
tb$applyTagByName("em", iter$start, iter$end)


###################################################
### chunk number 100: 
###################################################
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 101: TextViewWidget
###################################################
tv <- gtkTextView()
tb <- tv$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
tv$modifyFont(font)                     # widget wide


###################################################
### chunk number 102: 
###################################################
aTag <- tb$createTag(tag.name="cmdInput")
aTag <- tb$createTag(tag.name="cmdOutput", 
                     weight=PangoWeight["bold"])
aTag <- tb$createTag(tag.name="cmdError", 
                     weight=PangoStyle["italic"], foreground="red")
aTag <- tb$createTag(tag.name="uneditable", editable=FALSE)


###################################################
### chunk number 103: 
###################################################
startCmd <- gtkTextMark("startCmd", left.gravity=TRUE)
tb$addMark(startCmd, tb$getStartIter()$iter)


###################################################
### chunk number 104: 
###################################################
scrollViewport <- function(view, ...) {
  iter <- view$getBuffer()$getEndIter()$iter
  view$scrollToIter(iter, 0)
}


###################################################
### chunk number 105: 
###################################################
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
### chunk number 106: addOutput
###################################################
addOutput <- function(obj, output, tagName="cmdOutput") {
  endIter <- obj$getEndIter()
  if(length(output) > 0) 
    sapply(output, function(i)  {
      obj$insertWithTagsByName(endIter$iter, i, tagName)
      obj$insert(endIter$iter, "\n", len=-1)
    })
}


###################################################
### chunk number 107: 
###################################################
findCMD <- function(obj) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(startIter$iter, endIter$iter, TRUE)
  regex <- paste("\n[", getOption("continue"), "] ", sep = "")
  cmd <- unlist(strsplit(cmd, regex))
  cmd
}


###################################################
### chunk number 108: 
###################################################
evalCMD <- function(obj, cmd) {
  cmd <- paste(cmd, sep="\n")
  out <- try(parse(text=cmd), silent=TRUE)
  if(inherits(out, "try-error")) {
    if(length(grep("end", out))) {      # unexpected end of input
      ## continue
      addPrompt(obj, "continue", setMark=FALSE)
    } else {
      ## error
      addOutput(obj, out, tagName = "cmdError")
    }
    return()
  }
  
  e <- parse(text = cmd)
  out <- capture.output(vis <- withVisible(try(eval(e, .GlobalEnv), TRUE)))

  addOutput(obj, out) 
  if (inherits(vis$value, "try-error"))
    addOutput(obj, vis$value, "cmdError")
  else if (vis$visible)
    addOutput(obj, capture.output(print(vis$value)))
  
  addPrompt(obj, "prompt", setMark=TRUE)
}


###################################################
### chunk number 109: connectBinding
###################################################
gSignalConnect(tv, "key-release-event", f=function(w, e, data) {
  obj <- w$getBuffer()                  # w is textview
  keyval <- e$getKeyval()
  if(keyval == GDK_Return) {
    cmd <- findCMD(obj)                 # character(0) if nothing
    if(length(cmd) && nchar(cmd) > 0)
      evalCMD(obj, cmd)
  }
  return(FALSE)                         # events need return value
})


###################################################
### chunk number 110: 
###################################################
gSignalConnect(tb, "changed", scrollViewport, tv, after = TRUE, 
               user.data.first = TRUE)


###################################################
### chunk number 111: makeGUI
###################################################
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
### chunk number 112: 
###################################################
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


###################################################
### chunk number 113: NotShown
###################################################
## Not shown, but this shows how to add a button to a text view widget
b <- gtkButton("click me")              # child
end <- tb$getEndIter()$iter             # get  an iter
anchor <- tb$createChildAnchor(end)     # make anchor
tv$addChildAtAnchor(b, anchor)          # set widget at anchor



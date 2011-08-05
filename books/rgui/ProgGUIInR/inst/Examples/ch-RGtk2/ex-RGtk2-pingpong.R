###################################################
### chunk number 1: 
###################################################
#line 20 "ex-RGtk2-pingpong.Rnw"
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
### chunk number 2: addIcons
###################################################
#line 40 "ex-RGtk2-pingpong.Rnw"
fileNms <- c(factor = system.file("images","factor.gif", package="gWidgets"),
             numeric = system.file("images","numeric.gif", package="gWidgets"))
pixbufs <- lapply(fileNms, function(fn) gdkPixbuf(file = fn)[[1]])
addToStockIcons(pixbufs)


###################################################
### chunk number 3: 
###################################################
#line 51 "ex-RGtk2-pingpong.Rnw"
d <- data.frame(varNames=c("response", "trt1", "trt2"),
                stock.id=c("new-numeric", "new-factor", "new-factor"),
                leftView  = rep(TRUE, 3),
                rightView = rep(FALSE, 3),
                stringsAsFactors=FALSE)
model <- rGtkDataFrame(d)


###################################################
### chunk number 4: 
###################################################
#line 66 "ex-RGtk2-pingpong.Rnw"
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
### chunk number 5: 
###################################################
#line 88 "ex-RGtk2-pingpong.Rnw"
views <- list()
views[["left"]] <- makeView(model,3)
views[["right"]] <- makeView(model,4)
selections <- lapply(views, gtkTreeViewGetSelection)


###################################################
### chunk number 6: 
###################################################
#line 96 "ex-RGtk2-pingpong.Rnw"
buttons <- list()
buttons[["fromLeft"]] <- gtkButton(">")
buttons[["fromRight"]] <- gtkButton("<")


###################################################
### chunk number 7: basicGUI
###################################################
#line 106 "ex-RGtk2-pingpong.Rnw"
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
### chunk number 8: 
###################################################
#line 126 "ex-RGtk2-pingpong.Rnw"
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
### chunk number 9: 
###################################################
#line 143 "ex-RGtk2-pingpong.Rnw"
mapply(gSignalConnect, buttons, "clicked", list(moveSelected), 1:2)


###################################################
### chunk number 10: disableButtonsIfNoSelection
###################################################
#line 149 "ex-RGtk2-pingpong.Rnw"
disableButton <- function(sel, button) {
  selected <- sel$getSelectedRows()
  button$setSensitive(length(selected$retval) != 0)
}
mapply(gSignalConnect, selections, "changed", list(disableButton), buttons)


###################################################
### chunk number 11: 
###################################################
#line 159 "ex-RGtk2-pingpong.Rnw"
sapply(buttons, gtkWidgetSetSensitive, FALSE)



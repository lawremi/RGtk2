###################################################
### chunk number 1: 
###################################################
## also in previous example
addToStockIcons <- function(iconNames, fileNames, stock.prefix="new") {
  iconfactory <- gtkIconFactoryNew()
  
  for(i in seq_along(iconNames)) {
    
    iconsource = gtkIconSourceNew()
    iconsource$setFilename(fileNames[i])
    
    iconset = gtkIconSetNew()
    iconset$addSource(iconsource)
    
    stockName = paste(stock.prefix, "-",iconNames[i],sep="")
    iconfactory$add(stockName, iconset)
    
    items = list(test=list(stockName, iconNames[i],"","",""))
    gtkStockAdd(items)
  }
  iconfactory$AddDefault()
}


###################################################
### chunk number 2: addIcons
###################################################
nms <- c("factor","numeric")
fileNms <- c(system.file("images","factor.gif", package="gWidgets"),
             system.file("images","numeric.gif", package="gWidgets"))
QT <- addToStockIcons(nms, fileNms)


###################################################
### chunk number 3: 
###################################################
d <- data.frame(varNames=c("response", "trt1", "trt2"),
                stock.id=c("new-numeric", "new-factor", "new-factor"),
                leftView  = rep(TRUE, 3),
                rightView = rep(FALSE, 3),
                stringsAsFactors=FALSE)
model <- rGtkDataFrame(d)


###################################################
### chunk number 4: 
###################################################
## make a view
makeView <- function(model, vis.col) {
  filteredModel <- model$filterNew()
  filteredModel$setVisibleColumn(vis.col - 1)
  tv <- gtkTreeView(filteredModel)
  tv$getSelection()$setMode("multiple")
  ##
  vc <- gtkTreeViewColumn()
  vc$setTitle("Variable")
  tv$insertColumn(vc, 0)
  ##
  cr <- gtkCellRendererPixbuf()
  vc$PackStart(cr, expand=FALSE)
  cr['xalign'] <- 1
  vc$addAttribute(cr, "stock-id", 1)
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
views <- list()
views[["left"]] <- makeView(model,3)
views[["right"]] <- makeView(model,4)
selections <- lapply(views, gtkTreeViewGetSelection)


###################################################
### chunk number 6: 
###################################################
buttons <- list()
buttons[["fromLeft"]] <- gtkButton(">")
buttons[["fromRight"]] <- gtkButton("<")


###################################################
### chunk number 7: basicGUI
###################################################
w <- gtkWindow()
g <- gtkHBox()
w$add(g)
g$PackStart(views$left)
vg <- gtkVBox()
QT <- sapply(buttons, function(i) vg$packStart(i))
g$PackStart(vg)
g$PackStart(views$right)


###################################################
### chunk number 8: 
###################################################
moveSelected <- function(b, data) {
  model <- data$model

  selection <- selections[[data$from]]
  selected <- selection$getSelectedRows()
  if(length(selected$retval)) {
    childRows <- sapply(selected$retval, function(childPath) {
      childRow <- as.numeric(childPath$toString()) + 1
    })
    shownIndices <- which(model[, 2 + data$from])
    rows <- shownIndices[childRows]

    model[rows, 2 + data$from] <- FALSE
    model[rows, 2 + (3-data$from)] <- !model[rows, 2 + data$from]
  }
}


###################################################
### chunk number 9: 
###################################################
IDs <- sapply(1:2, function(i) 
              gSignalConnect(buttons[[i]], signal="clicked", 
                             f=moveSelected,
                             data=list(from=i, model=model)))


###################################################
### chunk number 10: disableButtonsIfNoSelection
###################################################
disableButton <- function(sel, data) {
  selected <- sel$getSelectedRows()
  buttons[[data]]$setSensitive(length(selected$retval) != 0)
}
IDs <- sapply(1:2, function(i) 
              gSignalConnect(selections[[i]], signal="changed",
                             f=disableButton,
                             data=i))


###################################################
### chunk number 11: 
###################################################
QT <- sapply(buttons, function(i) i$setSensitive(FALSE))



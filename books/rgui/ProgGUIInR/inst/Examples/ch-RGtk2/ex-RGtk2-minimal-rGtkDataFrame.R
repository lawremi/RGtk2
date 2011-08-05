###################################################
### chunk number 1: echo-FALSE
###################################################
#line 4 "ex-RGtk2-minimal-rGtkDataFrame.Rnw"
library(RGtk2)


###################################################
### chunk number 2: defineSomeData
###################################################
#line 9 "ex-RGtk2-minimal-rGtkDataFrame.Rnw"
df <- data.frame(a=c(1:5), b=c(21.2, rnorm(1), 1, NA, NaN))
store <- rGtkDataFrame(df)
tv <- gtkTreeView(store)


###################################################
### chunk number 3: minimalSteps
###################################################
#line 18 "ex-RGtk2-minimal-rGtkDataFrame.Rnw"
vc <- gtkTreeViewColumn()
QT <- tv$insertColumn(vc, 0)                  # first col. of tree view
vc$setTitle("Column 1")
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)          # first col. of store


###################################################
### chunk number 4: basicGUI
###################################################
#line 29 "ex-RGtk2-minimal-rGtkDataFrame.Rnw"
w <- gtkWindow(show=FALSE)
w$setSizeRequest(300,300)
w$setTitle("rGtk2DataFrame example")
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(tv)
w$add(sw)
w$showAll()


###################################################
### chunk number 5: 
###################################################
#line 45 "ex-RGtk2-minimal-rGtkDataFrame.Rnw"
vc <- gtkTreeViewColumn()
tv$insertColumn(vc, 1)
vc$setTitle("Column 2")
cr <- gtkCellRendererText()
vc$packStart(cr)


###################################################
### chunk number 6: cellDataFunc
###################################################
#line 58 "ex-RGtk2-minimal-rGtkDataFrame.Rnw"
cellFunc <- function(vc, cr, model, iter, data) {
  curVal <- model$getValue(iter, data - 1)$value
  if(is.nan(curVal))
    curVal <- "NA"
  else if(is.nan(curVal))
    curVal <- "NaN"
  else
    curVal <- sprintf("%.3f", curVal)
  cr['xalign'] <- 1
  cr['text'] <- curVal
}
QT <- vc$setCellDataFunc(cr, func=cellFunc, 
                         func.data=2) # pass in col. no



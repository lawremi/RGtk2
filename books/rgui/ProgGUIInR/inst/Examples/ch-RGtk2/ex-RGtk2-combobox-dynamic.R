###################################################
### chunk number 1: 
###################################################
#line 13 "ex-RGtk2-combobox-dynamic.Rnw"
datasets <- c("mtcars", "Cars93")
rdf <- rGtkDataFrame(datasets)
dfCb <- gtkComboBoxEntry(); dfCb$model <- rdf


###################################################
### chunk number 2: 
###################################################
#line 22 "ex-RGtk2-combobox-dynamic.Rnw"
variableNames <- character(0)
varModel <- rGtkDataFrame(variableNames)
varCb <- gtkComboBox(varModel)
cr <- gtkCellRendererText()
varCb$packStart(cr)
varCb$addAttribute(cr, "text", 0)       # column 1


###################################################
### chunk number 3: notShown
###################################################
#line 31 "ex-RGtk2-combobox-dynamic.Rnw"
## Our basic GUI uses a table for layout. Combo boxes fill and expand to fill 
## the cell.
tbl <- gtkTableNew(rows=2, columns=2, homogeneous=FALSE)
tbl$attach(gtkLabel("Data frame"), left.attach=0,1, top.attach=0,1, 
           xoptions = 0, yoptions = 0, xpadding = 5)
tbl$attach(dfCb, left.attach=1,2, top.attach=0,1, yoptions = 0)

tbl$attach(gtkLabel("Variables"), left.attach=0,1, top.attach=1,2, 
           xoptions = 0, yoptions = 0, xpadding = 5)
tbl$attach(varCb, left.attach=1,2, top.attach=1,2, yoptions = 0)


###################################################
### chunk number 4: 
###################################################
#line 43 "ex-RGtk2-combobox-dynamic.Rnw"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of combo boxes"
g <- gtkHBox()
g$packStart(tbl, padding=15)
w$add(g)
w$showAll()


###################################################
### chunk number 5: 
###################################################
#line 54 "ex-RGtk2-combobox-dynamic.Rnw"
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



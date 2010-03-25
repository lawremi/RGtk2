###################################################
### chunk number 1: 
###################################################
dfNames <- c("mtcars", "Cars93")
dfModel <- rGtkDataFrame(dfNames)
dfCb <- gtkComboBoxEntryNewWithModel(dfModel, text.column=0)


###################################################
### chunk number 2: 
###################################################
variableNames <- c("")
varModel <- gtkListStore("gchararray")
for(i in variableNames) {
  iter <- varModel$append()
  varModel$setValue(iter$iter, column=0, i)
}
varCb <- gtkComboBoxNewWithModel(varModel)
cr <- gtkCellRendererText()
varCb$packStart(cr)
varCb$addAttribute(cr, "text", 0)


###################################################
### chunk number 3: 
###################################################
tbl <- gtkTableNew(rows=2, columns=2, homogeneous=FALSE)
tbl$attach(gtkLabel("Data frame"), left.attach=0,1, top.attach=0,1)
tbl$attach(dfCb, left.attach=1,2, top.attach=0,1)

tbl$attach(gtkLabel("Variables"), left.attach=0,1, top.attach=1,2)
tbl$attach(varCb, left.attach=1,2, top.attach=1,2)


###################################################
### chunk number 4: 
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of comboboxes"
w$add(tbl)
w$showAll()


###################################################
### chunk number 5: 
###################################################
newDfSelected <- function(varCb, w, ...) {
  if(inherits(w, "GtkComboBox"))        # get entry widget
    w <- w$getChild()
  val <- w$getText()
  df <- try(get(val, envir=.GlobalEnv), silent=TRUE)
  if(!inherits(df, "try-error") && is.data.frame(df)) {
    nms <- names(df)
    model <- varCb$getModel()
    model$clear()
    for(i in nms) {
      iter <- model$append()
      model$setValue(iter$iter, column=0, value=i)
    }
    varCb$setActive(-1)
  }
}


###################################################
### chunk number 6: 
###################################################
QT <- gSignalConnect(dfCb, "changed", f=newDfSelected,
                     user.data.first=TRUE,
                     data=varCb)
QT <- gSignalConnect(dfCb$getChild(), "activate", f=newDfSelected,
                     user.data.first=TRUE,
                     data=varCb)
QT <- gSignalConnect(varCb, "changed", f=function(w, ...) {
  model <- w$getModel()
  iter <- w$getActiveIter()
  val <- model$getValue(iter$iter, column=0)
  print(val$value)                      # add real purpose
})



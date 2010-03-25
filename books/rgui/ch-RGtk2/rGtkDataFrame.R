###################################################
### chunk number 1: 
###################################################
library(RGtk2)
df <- data.frame(visible = rep(TRUE,3),
                 integer = 1:3,
                 character = gettext(letters[1:3]),
                 markup = c("<b>bold</b>","<i>italics</i>",
                   "<span foreground='red'>red</span>"),
                 real = c(1.234,1.23456789,-1.2),
                 factor = as.factor(1:3),
                 logical = c(TRUE,TRUE,FALSE),
                 icons = c("gtk-ok","gtk-quit","gtk-stop"),
                 stringsAsFactors = FALSE)


###################################################
### chunk number 2: define-view
###################################################
store <- rGtkDataFrame(df)
sfilter <- store$FilterNew()
sfilter$SetVisibleColumn(0)
view <- gtkTreeView(sfilter)                 
#view$SetModel(sfilter)


###################################################
### chunk number 3: 
###################################################
if(ncol(df) > 1)  view$SetRulesHint(TRUE ) # shade alternating rows
view$SetEnableSearch(TRUE)                 # enable search


###################################################
### chunk number 4: 
###################################################
cols <- 1:ncol(df); names(cols) <- names(df)[-1]
col <- 1


###################################################
### chunk number 5: show-integer
###################################################
viewColumn <- gtkTreeViewColumn()       # controls column display
cellrenderer <- gtkCellRendererText()   # how to render the cells
viewColumn$PackStart(cellrenderer, TRUE) # combine the two.
viewColumn$SetTitle("integer")           # column header
viewColumn$SetResizable(TRUE)            # resizable column widths
viewColumn$SetClickable(TRUE)            # for dnd example
QT <- view$InsertColumn(viewColumn, col) # which column in view 
## per cell text attribute found from the 'integer' column of data store
viewColumn$AddAttribute(cellrenderer, "text",cols["integer"])


###################################################
### chunk number 6: 
###################################################
newCol <- function(type,name) {
  cellrenderer <<- do.call(paste("gtkCellRenderer",type,sep=""),list())
  viewColumn <<- gtkTreeViewColumn()
  viewColumn$PackStart(cellrenderer, TRUE)
  viewColumn$SetTitle(name)
  viewColumn$SetResizable(TRUE)
  viewColumn$SetClickable(TRUE)
  view$InsertColumn(viewColumn, col <<- col+1)
  invisible()
}


###################################################
### chunk number 7: character
###################################################
newCol("Text","character")
viewColumn$AddAttribute(cellrenderer, "text",cols["character"])
cellrenderer["size-points"] <- 14 # point size


###################################################
### chunk number 8: pango-markup
###################################################
newCol("Text","markup")
viewColumn$AddAttribute(cellrenderer, "markup",cols["markup"])


###################################################
### chunk number 9: real
###################################################
newCol("Text","real")
cellrenderer['xalign'] <- 1
cellrenderer['style'] <- "monotype"

renderFunc = function(column, cellrenderer, model, iter, userData) {
  val <- model$GetValue(iter,userData$column)
  val <- val$value
  ## format text using dollar sign
  cellrenderer['text'] <-
    ngettext(val<0,sprintf("-$%.2f",abs(val)),sprintf("$%.2f",val))

}
QT <- viewColumn$SetCellDataFunc(cellrenderer, renderFunc,
                                 list(column=cols['real']))


###################################################
### chunk number 10: editable
###################################################
newCol("Text","editable")
viewColumn$AddAttribute(cellrenderer, "text",cols["real"]) 
cellrenderer['xalign'] <- 1             # right align
cellrenderer["editable"] <- TRUE


###################################################
### chunk number 11: 
###################################################
callBack <- function(cell, path, newValue, userData) {
  visibleRows <- which(store[,1])       # adjust for filtering
  i <- visibleRows[as.numeric(path) + 1]
  j <- userData$column + 1
  userData$store[i,j] <- as.numeric(newValue) # coerce character
}
QT <- connectSignal(cellrenderer, signal = "edited", f = callBack,
                    data = list(store=store,column=cols["real"]))



###################################################
### chunk number 12: factor-editable
###################################################
newCol("Text","factor")

viewColumn$AddAttribute(cellrenderer, "text",cols["factor"]) 
cellrenderer['xalign'] <- 1             # proportion of free space on left
cellrenderer['cell-background'] <- "gray90" # background color
cellrenderer["editable"] <- TRUE


###################################################
### chunk number 13: factorCallBack
###################################################
callBack <- function(cell, path, newValue, userData) {
  visibleRows <- which(store[,1])
  i <- visibleRows[as.numeric(path) + 1]
  j <- userData$column + 1

  if(newValue %in% userData$levels)
    userData$store[i,j] <- newValue
  else
    cat(sprintf("The value %s is not in levels of the factor\n",newValue))
}
QT <- connectSignal(cellrenderer, signal = "edited", f = callBack,
                    data = list(store=store,column=cols["factor"],
                      levels = levels(df$factor))
                    )


###################################################
### chunk number 14: factor-combo
###################################################
newCol("Combo","combo")

cstore <- gtkListStore("gchararray")     # make the store
for(i in as.character(df[,"factor"])) {
  iter <- cstore$Append()
  cstore$SetValue(iter$iter,column=0, i)
}
cstore <- rGtkDataFrame(data.frame(a=1:10))
cellrenderer['model'] <- cstore
cellrenderer['text-column'] <- 0        #which column
cellrenderer['editable'] <- TRUE       
# cellrenderer['has-entry'] <- TRUE       #editable
viewColumn$AddAttribute(cellrenderer, "text",cols["factor"]) ## show text


###################################################
### chunk number 15: 
###################################################
callBack <- function(cell, path, newValue, userData) {
  visibleRows <- which(userData$store[,1])
  i <- visibleRows[as.numeric(path) + 1]
  j <- userData$column + 1
  userData$store[i,j] <- newValue
}
QT <- connectSignal(cellrenderer, signal = "edited", f= callBack,
                    data =list(store=store,column=cols["factor"])
                    )


###################################################
### chunk number 16: 
###################################################
newCol("Toggle","logical")
cellrenderer["activatable"] <- TRUE
viewColumn$AddAttribute(cellrenderer, "active",cols["logical"])

callBack <- function(cell, path, userData) {
  visibleRows <- which(userData$store[,1])
  i <- visibleRows[as.numeric(path) + 1]
  j <- userData$column + 1
  userData$store[i,j] <- !userData$store[i,j]
}
QT <- connectSignal(cellrenderer, signal = "toggled", f = callBack,
                    data =list(store=store,column=cols["logical"])
                    )


###################################################
### chunk number 17: icons
###################################################
newCol("Pixbuf","icons")
viewColumn$AddAttribute(cellrenderer, "stock-id",cols["icons"])


###################################################
### chunk number 18: 
###################################################
label = gtkLabel("drag me")
label = gtkButton("drag me")
viewColumn$SetWidget(label)
TARGET.TYPE.TEXT   = 80                 
button = viewColumn$GetWidget()$GetParent()$GetParent()$GetParent()

gtkDragSourceSet(button,  
                 GdkModifierType["button1-mask"] | 
                 GdkModifierType["button3-mask"],
                 list(gtkTargetEntry("text/plain", 0, TARGET.TYPE.TEXT)),
                 GdkDragAction["copy"])
sourceHandler = function(widget,context,selection,
  targetType, eventTime, userData) {
  selection$SetText(str=userData)
  return(TRUE)
}
 connectSignal(button,signal="drag-data-get", f=sourceHandler,
                    data= "This gets dropped")


###################################################
### chunk number 19: showModel
###################################################
sw <- gtkScrolledWindow()
sw$SetPolicy("GTK_POLICY_AUTOMATIC","GTK_POLICY_AUTOMATIC")
sw$Add(view)

w <- gtkWindow(show=TRUE)
w$SetTitle("Model")
w$Add(sw)
w$SetDefaultSize(500,200)



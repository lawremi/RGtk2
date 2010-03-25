###################################################
### chunk number 1: 
###################################################
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
df <- data.frame(state.name)
df$VISIBLE <- rep(TRUE, nrow(df))
store <- rGtkDataFrame(df)


###################################################
### chunk number 3: 
###################################################
filteredStore <- store$filterNew()
filteredStore$setVisibleColumn(ncol(df)-1)      # offset
view <- gtkTreeView(filteredStore)
sw <- gtkScrolledWindow()
sw$add(view)


###################################################
### chunk number 4: 
###################################################
vc <- gtkTreeViewColumn()
cr <- gtkCellRendererText()
vc$packStart(cr, TRUE)
vc$setTitle("Col")
vc$addAttribute(cr, "text", 0)
QT <- view$insertColumn(vc, 0)


###################################################
### chunk number 5: 
###################################################
e <- gtkEntry()
ID <- gSignalConnect(e, "changed", function(w, data) {
  val <- w$getText()
  df <- data$getModel()
  values <- df[,1]
  df[, dim(df)[2]] <- sapply(values, function(i) 
                             as.logical(length(grep(val,i))))
},
                     data=filteredStore)



###################################################
### chunk number 6: 
###################################################
w <- gtkWindow(show=FALSE)
g <- gtkVBox()
w$add(g)
g$packStart(e, expand=FALSE)

g$packStart(sw, expand=TRUE, fill=TRUE)
w$setSizeRequest(width=300, height=400)
w$show()



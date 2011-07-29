###################################################
### chunk number 1: 
###################################################
#line 6 "ex-RGtk2-filtered.Rnw"
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
#line 21 "ex-RGtk2-filtered.Rnw"
df <- data.frame(state.name)
df$visible <- rep(TRUE, nrow(df))
store <- rGtkDataFrame(df)


###################################################
### chunk number 3: 
###################################################
#line 29 "ex-RGtk2-filtered.Rnw"
filteredStore <- store$filter()
filteredStore$setVisibleColumn(ncol(df)-1)      # offset
view <- gtkTreeView(filteredStore)


###################################################
### chunk number 4: 
###################################################
#line 36 "ex-RGtk2-filtered.Rnw"
view$insertColumnWithAttributes(0, "Col", 
                 gtkCellRendererText(), text = 0)


###################################################
### chunk number 5: 
###################################################
#line 46 "ex-RGtk2-filtered.Rnw"
e <- gtkEntry()
gSignalConnect(e, "changed", function(w, data) {
  pattern <- w$getText()
  df <- data$getModel()
  values <- df[, "state.name"]
  df[, "visible"] <- grepl(pattern, values)
}, data=filteredStore)


###################################################
### chunk number 6: 
###################################################
#line 59 "ex-RGtk2-filtered.Rnw"
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



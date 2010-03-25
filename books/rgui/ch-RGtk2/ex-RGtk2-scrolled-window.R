###################################################
### chunk number 1: ScrolledWindowExample
###################################################
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
g <- gtkVBox(spacing=0)
sapply(state.name, function(i) {
  l <- gtkLabel(i)
  l['xalign'] <- 0; l['xpad'] <- 10
  g$packStart(l, expand=TRUE, fill=TRUE)
})


###################################################
### chunk number 3: 
###################################################
sw <- gtkScrolledWindow()
sw$setPolicy("never","automatic")
sw$addWithViewport(g)                   # just "Add" for text, tree, ...


###################################################
### chunk number 4: 
###################################################
w <- gtkWindow(show=FALSE)
w$setTitle("Scrolled window example")
w$setSizeRequest(-1, 300)
w$add(sw)
w$show()



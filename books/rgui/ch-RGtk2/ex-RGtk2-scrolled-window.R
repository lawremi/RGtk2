###################################################
### chunk number 1: ScrolledWindowExample
###################################################
#line 12 "ex-RGtk2-scrolled-window.Rnw"
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
#line 16 "ex-RGtk2-scrolled-window.Rnw"
g <- gtkVBox(spacing=0)
sapply(state.name, function(i) {
  l <- gtkLabel(i)
  l['xalign'] <- 0; l['xpad'] <- 10
  g$packStart(l, expand=TRUE, fill=TRUE)
})


###################################################
### chunk number 3: 
###################################################
#line 27 "ex-RGtk2-scrolled-window.Rnw"
sw <- gtkScrolledWindow()
sw$setPolicy("never","automatic")
sw$addWithViewport(g)          # just "Add" for text, tree, ...


###################################################
### chunk number 4: 
###################################################
#line 33 "ex-RGtk2-scrolled-window.Rnw"
w <- gtkWindow(show=FALSE)
w$setTitle("Scrolled window example")
w$setSizeRequest(-1, 300)
w$add(sw)
w$show()



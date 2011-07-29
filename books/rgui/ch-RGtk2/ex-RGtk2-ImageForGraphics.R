###################################################
### chunk number 1: 
###################################################
#line 2 "ex-RGtk2-ImageForGraphics.Rnw"
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
#line 13 "ex-RGtk2-ImageForGraphics.Rnw"
w <- gtkWindow(show=FALSE); w$setTitle("Graphic window");
w$setSizeRequest(400,400)
hbox <- gtkHBox(); w$add(hbox)
w$showAll()


###################################################
### chunk number 3: 
###################################################
#line 25 "ex-RGtk2-ImageForGraphics.Rnw"
theSize <- g$getAllocation()$allocation
width <- theSize$width; height <- theSize$height


###################################################
### chunk number 4: 
###################################################
#line 33 "ex-RGtk2-ImageForGraphics.Rnw"
require(cairoDevice)
pixmap <- gdkPixmap(drawable = NULL, 
                    width = width, height = height, depth = 24)
asCairoDevice(pixmap)
hist(rnorm(100))


###################################################
### chunk number 5:  eval=FALSE
###################################################
## #line 43 "ex-RGtk2-ImageForGraphics.Rnw"
## image <- gtkImage(pixmap = pixmap)
## hbox$packStart(image, expand=TRUE, fill = TRUE)



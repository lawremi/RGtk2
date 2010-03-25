###################################################
### chunk number 1: 
###################################################
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
w <- gtkWindow(show=FALSE); w$setTitle("Graphic window");
w$setSizeRequest(400,400)
g <- gtkHBox(); w$add(g)
w$showAll()


###################################################
### chunk number 3: 
###################################################
theSize <- g$getAllocation()
width <- theSize$width; height <- theSize$height


###################################################
### chunk number 4: 
###################################################
require(Cairo)
filename <- tempfile()
Cairo(file = filename, width = width, height = height)
hist(rnorm(100))
QT <- dev.off()


###################################################
### chunk number 5: 
###################################################
image <- gtkImageNewFromFile(filename)
g$packStart(image, expand=TRUE, fill = TRUE)
unlink(filename)                        # tidy up



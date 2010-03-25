###################################################
### chunk number 1: 
###################################################
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
w <- gtkWindow(show=FALSE); w$SetTitle("Graphic window");
w$SetSizeRequest(400,400)
g <- gtkHBox(); w$Add(g)
w$Show()


###################################################
### chunk number 3: 
###################################################
theSize <- g$GetAllocation()
width <- theSize$width; height <- theSize$height


###################################################
### chunk number 4: 
###################################################
filename <- tempfile()
png(file = filename, width = width, height = height)
hist(rnorm(100))
dev.off()


###################################################
### chunk number 5: 
###################################################
image <- gtkImageNewFromFile(filename)
g$PackStart(image, expand=TRUE, fill = TRUE)
unlink(filename)                        # tidy up



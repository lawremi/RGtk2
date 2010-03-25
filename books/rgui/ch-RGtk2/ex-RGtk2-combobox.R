###################################################
### chunk number 1: 
###################################################
## Example of combo box for colors

library(grid)
library(RGtk2)


###################################################
### chunk number 2: makePixbuf
###################################################
require(Cairo)
makePixbufFromColor <- function(color) {
  filename <- tempfile()
  Cairo(file=filename, width=25,height=10)
  grid.newpage()
  grid.draw(rectGrob(gp = gpar(fill = color)))
  dev.off()
  image <- gdkPixbufNewFromFile(filename)
  unlink(filename)
  return(image$retval)
}


###################################################
### chunk number 3: 
###################################################
store <- gtkListStore(c("GObject","gchararray"))


###################################################
### chunk number 4: theColors
###################################################
theColors <- palette()                  # some colors
for(i in theColors) {
  iter <- store$append()
  store$setValue(iter$iter, 0, makePixbufFromColor(i))
  store$setValue(iter$iter, 1, i)
}


###################################################
### chunk number 5: comboBox
###################################################
combobox <- gtkComboBox(model=store)
## pixbuf
crp <- gtkCellRendererPixbuf(); crp['xalign'] <- 0
combobox$packStart(crp, expand=FALSE)                
combobox$addAttribute(crp, "pixbuf", 0)
## text
crt <- gtkCellRendererText(); 
crt['xpad'] <- 5                        # give some space
combobox$packStart(crt)
combobox$addAttribute(crt, "text", 1)


###################################################
### chunk number 6: 
###################################################
## display in a window
win <- gtkWindow(show=FALSE)
win$setTitle("Color test")
win$add(combobox)
win$showAll()



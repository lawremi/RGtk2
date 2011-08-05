###################################################
### chunk number 1: 
###################################################
#line 6 "ex-RGtk2-combobox.Rnw"
## Example of combo box for colors
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
#line 12 "ex-RGtk2-combobox.Rnw"
model <- rGtkDataFrame(palette())


###################################################
### chunk number 3: comboBox
###################################################
#line 19 "ex-RGtk2-combobox.Rnw"
combobox <- gtkComboBox(model)
## color
crc <- gtkCellRendererText()
combobox$packStart(crc, expand=FALSE)                
combobox$addAttribute(crc, "cell-background", 0)
crc$width <- 25
## text
crt <- gtkCellRendererText()
crt['xpad'] <- 5                        # give some space
combobox$packStart(crt)
combobox$addAttribute(crt, "text", 0)


###################################################
### chunk number 4:  eval=FALSE
###################################################
## #line 37 "ex-RGtk2-combobox.Rnw"
## ## display in a window
## win <- gtkWindow(show=FALSE)
## win$setTitle("Color test")
## win$add(combobox)
## win$showAll()



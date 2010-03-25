###################################################
### chunk number 1: 
###################################################
## Example of combo box for colors

library(grid)
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
makePixbufFromColor <- function(color) {
  filename <- tempfile()
  png(file=filename, width=25,height=10)
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
### chunk number 4: 
###################################################
theColors <- palette()
for(i in theColors) {
  iter <- store$Append()
  store$SetValue(iter$iter,0, makePixbufFromColor(i))
  store$SetValue(iter$iter,1, i)
}


###################################################
### chunk number 5: 
###################################################
## now view combobox
combobox <- gtkComboBox(model=store)
## two cellrenderers. Icon first, then text
crp <- gtkCellRendererPixbuf(); crp['xalign'] <- 0
combobox$PackStart(crp, expand=FALSE)                 # icon first
combobox$AddAttribute(crp, "pixbuf", 0)
crt <- gtkCellRendererText(); 
crt['xpad'] <- 5                        # give some space
combobox$PackStart(crt)
combobox$AddAttribute(crt, "text", 1)


###################################################
### chunk number 6: 
###################################################
## display in a window
win <- gtkWindow();win$SetTitle("Color test")
win$Add(combobox)


###################################################
### chunk number 7: 
###################################################
gSignalConnect(combobox, "changed",
              f = function(cb, data) {
                store <- cb$GetModel()
                iter <- cb$GetActiveIter()
                if(iter$retval) {
                  val <- store$GetValue(iter$iter,1)$value 
                  print(val)
                }
                return(TRUE)
                
              })


###################################################
### chunk number 8: 
###################################################
comboentry <- gtkComboBoxEntryNewWithModel(store, text.column = 1)


###################################################
### chunk number 9: 
###################################################
crp <- gtkCellRendererPixbuf(); crp['xalign'] <- 0
comboentry$PackStart(crp, expand=FALSE)                 # icon first
comboentry$AddAttribute(crp, "pixbuf", 0)


###################################################
### chunk number 10: 
###################################################
comboentry$Show()


###################################################
### chunk number 11: 
###################################################
win <- gtkWindow();win$SetTitle("Combo box with entry")
win$Add(comboentry)


###################################################
### chunk number 12: 
###################################################
## ## "changed" -- each keystroke
## need both
gSignalConnect(comboentry, "changed",
               f = function(cb, data) {
                 if(cb$GetActive() != -1)
                   print(cb$GetChild()$GetText())
                 return(TRUE)
               })
## just enter will call handler. Widget is gtkEntry instance
gSignalConnect(comboentry$GetChild(), "activate",
              f = function(w, data) {
                  print(w$GetText())
                return(TRUE)
              })




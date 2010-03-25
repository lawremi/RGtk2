###################################################
### chunk number 1: 
###################################################
mb <- gtkMenuBar()
fileMi <- gtkMenuItemNewWithMnemonic(label="_File")
mb$append(fileMi)


###################################################
### chunk number 2: 
###################################################
fileMb <- gtkMenu()
fileMi$setSubmenu(fileMb)


###################################################
### chunk number 3: 
###################################################
open <- gtkMenuItem(label="open")


###################################################
### chunk number 4: 
###################################################
saveAction <- gtkAction("save", "save", "Save object", "gtk-save")
save <- saveAction$CreateMenuItem()


###################################################
### chunk number 5: 
###################################################
quit <- gtkImageMenuItem(label="quit")
quit$setImage(gtkImageNewFromStock("gtk-quit", size=GtkIconSize["menu"]))


###################################################
### chunk number 6: 
###################################################
happy <- gtkCheckMenuItem(label="happy")
happy$setActive(TRUE)


###################################################
### chunk number 7: 
###################################################
Qt <- sapply(list(open, save, happy, gtkSeparatorMenuItem(), quit), function(i) {
       fileMb$append(i)
     })


###################################################
### chunk number 8: 
###################################################
ID <- gSignalConnect(happy, "toggled", function(b,data) {
  if(b$getActive())
    print("User is now happy")
})


###################################################
### chunk number 9: 
###################################################
QT <- sapply(list(open, quit, saveAction), function(i) 
       gSignalConnect(i, "activate", f=function(mi, data) {
         cat("item selected\n")
       })
       )


###################################################
### chunk number 10: makeGUI
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Menubar example"
w$add(mb)
w$ShowAll()



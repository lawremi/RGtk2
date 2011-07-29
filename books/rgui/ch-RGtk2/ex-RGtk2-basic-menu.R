###################################################
### chunk number 1: 
###################################################
#line 6 "ex-RGtk2-basic-menu.Rnw"
mb <- gtkMenuBar()
fileMi <- gtkMenuItemNewWithMnemonic(label="_File")
mb$append(fileMi)


###################################################
### chunk number 2: 
###################################################
#line 13 "ex-RGtk2-basic-menu.Rnw"
fileMb <- gtkMenu()
fileMi$setSubmenu(fileMb)


###################################################
### chunk number 3: 
###################################################
#line 18 "ex-RGtk2-basic-menu.Rnw"
open <- gtkMenuItem(label="open")


###################################################
### chunk number 4: 
###################################################
#line 23 "ex-RGtk2-basic-menu.Rnw"
saveAction <- gtkAction("save", "save", "Save object", "gtk-save")
save <- saveAction$CreateMenuItem()


###################################################
### chunk number 5: 
###################################################
#line 29 "ex-RGtk2-basic-menu.Rnw"
quit <- gtkImageMenuItem(label="quit")
quit$setImage(gtkImageNewFromStock("gtk-quit", 
              size=GtkIconSize["menu"]))


###################################################
### chunk number 6: 
###################################################
#line 36 "ex-RGtk2-basic-menu.Rnw"
happy <- gtkCheckMenuItem(label="happy")
happy$setActive(TRUE)


###################################################
### chunk number 7: 
###################################################
#line 42 "ex-RGtk2-basic-menu.Rnw"
items <- list(open, save, happy, gtkSeparatorMenuItem(), quit)
Qt <- sapply(items, function(i) {
       fileMb$append(i)
     })


###################################################
### chunk number 8: 
###################################################
#line 49 "ex-RGtk2-basic-menu.Rnw"
ID <- gSignalConnect(happy, "toggled", function(b,data) {
  if(b$getActive())
    print("User is now happy ;)")
  else
    print("User is unhappy ;(")
})


###################################################
### chunk number 9: 
###################################################
#line 58 "ex-RGtk2-basic-menu.Rnw"
QT <- sapply(list(open, quit, saveAction), function(i) 
       gSignalConnect(i, "activate", f=function(mi, data) {
         cat("item selected\n")
       })
       )


###################################################
### chunk number 10: makeGUI
###################################################
#line 66 "ex-RGtk2-basic-menu.Rnw"
## We make as simple GUI for the menubar.
 w <- gtkWindow(show=FALSE)
w['title'] <- "Menubar example"
w$add(mb)
w$ShowAll()



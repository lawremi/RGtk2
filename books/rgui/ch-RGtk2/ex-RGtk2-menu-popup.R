###################################################
### chunk number 1: "menubar-ex"
###################################################
#line 5 "ex-RGtk2-menu-popup.Rnw"
popup <- gtkMenu()                       # top level
popup$append(gtkMenuItem("cut"))
popup$append(gtkMenuItem("copy"))
popup$append(gtkSeparatorMenuItem())
popup$append(gtkMenuItem("paste"))


###################################################
### chunk number 2: rgtk2-menus-popup-button
###################################################
#line 15 "ex-RGtk2-menu-popup.Rnw"
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)


###################################################
### chunk number 3: 
###################################################
#line 27 "ex-RGtk2-menu-popup.Rnw"
gSignalConnect(b,"button-press-event",
               f = function(w, e, menu) {
                 if(e$getButton() == 3 ||
                    (e$getButton() == 1 && # a mac
                     e$getState() == GdkModifierType['control-mask'])) 
                   gtkMenuPopup(menu, 
                                button = e$getButton(),
                                activate.time = e$getTime())
                 return(FALSE)
               }, data=popup)


###################################################
### chunk number 4: 
###################################################
#line 44 "ex-RGtk2-menu-popup.Rnw"
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})



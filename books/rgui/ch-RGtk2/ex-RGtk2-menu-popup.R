###################################################
### chunk number 1: "menubar-ex"
###################################################
popup <- gtkMenu()                       # top level

for(i in c("cut","copy","----","paste")) {
  if(i == "----")
    popup$append(gtkSeparatorMenuItem())
  else
    popup$append(gtkMenuItem(i))
}


###################################################
### chunk number 2: 
###################################################
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)

ID <- gSignalConnect(b,"button-press-event",
                    f = function(w, e, userData) {
                      if(e$getButton() == 3 ||
                         (e$getButton() == 1 && # a mac
                          e$getState() == GdkModifierType['control-mask'])
                         ) {
                        gtkMenuPopup(userData$mb,
                                     button = e$getButton(),
                                     activate.time = e$getTime())
                        }
                      return(FALSE)
                    },
                    data=list(mb=popup)
                    )


###################################################
### chunk number 3: 
###################################################
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})



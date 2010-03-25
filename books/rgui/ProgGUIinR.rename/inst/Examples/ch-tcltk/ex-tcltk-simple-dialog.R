###################################################
### chunk number 1: 
###################################################
## example of  simple non-modal dialog
## much taken from msgbox.tcl in tk source

library(tcltk)


###################################################
### chunk number 2: 
###################################################
title <- "message dialog"
message <- "Do you like tcltk so far?"
parent <- NULL
## make a certain size
QT <- tkimage.create("photo", "::img::tclLogo", file = "tclp.gif")


###################################################
### chunk number 3: 
###################################################
w <- tktoplevel(); tkwm.title(w, title)
tkwm.state(w, "withdrawn")


###################################################
### chunk number 4: 
###################################################
if(!is.null(parent)) {
  parentWin <- tkwinfo("toplevel", parent)
  if(as.logical(tkwinfo("viewable", parentWin))) {
    tkwm.transient(w, parent)
    tcl("wm","attributes",parentWin, notify=TRUE)
    tkbind(parentWin,"<Enter>", function() 
      tcl("wm","attributes",parentWin, notify=FALSE))
  }
}


###################################################
### chunk number 5: 
###################################################
## frame for theme purposes, give some space
f <- ttkframe(w,  padding=c(5,5,10,10))
tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 6: 
###################################################
l <- ttklabel(f, image="::img::tclLogo", padding=c(5)) ## recycle
tkpack(l,side="left")


###################################################
### chunk number 7: 
###################################################
f1 <- ttkframe(f)
tkpack(f1, expand=TRUE, fill="both")
#
m <- ttklabel(f1, text=message)
tkpack(m, expand=TRUE, fill="both")


###################################################
### chunk number 8: 
###################################################
f2 <- ttkframe(f1)
tkpack(f2)


###################################################
### chunk number 9: 
###################################################
okCB <- function() {
  print("That's great")
  tkdestroy(w)
}
okButton <- ttkbutton(f2, text="OK", default="active")


###################################################
### chunk number 10: 
###################################################
tkbind(okButton, "<Button-1>", okCB)
tkbind(okButton, "<Return>", okCB)

cancelButton <- ttkbutton(f2, text="Cancel", command=function() tkdestroy(w))
tkpack(okButton, side="left", padx=12)  # give some space
tkpack(cancelButton)


###################################################
### chunk number 11: 
###################################################
tkwm.state(w,"normal")
tkwm.resizable(w, FALSE, FALSE)
tkfocus(okButton)


###################################################
### chunk number 12: 
###################################################
## bind so that object highlights on mouseover
## illustrates how we can bind to all the widgets


###################################################
### chunk number 13: 
###################################################
isTButton <- function(W)  as.character(tkwinfo("class",W)) == "TButton"
tkbind(w,"<FocusIn>", function(W) {
  if(isTButton(W)) tkconfigure(W,default="active")
})

tkbind(w,"<FocusOut>", function(W) {
  if(isTButton(W)) tkconfigure(W,default="normal")
})



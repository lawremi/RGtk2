###################################################
### chunk number 1: 
###################################################
#line 12 "ex-tcltk-simple-dialog.Rnw"
## example of  simple non-modal dialog
## much taken from msgbox.tcl in tk source

library(tcltk)


###################################################
### chunk number 2: 
###################################################
#line 20 "ex-tcltk-simple-dialog.Rnw"
title <- "message dialog"
message <- "Do you like tcltk so far?"
parent <- NULL
tkimage.create("photo", "::img::tclLogo", 
               file = system.file("images","tclp.gif",
                 package="ProgGUIinR"))


###################################################
### chunk number 3: 
###################################################
#line 31 "ex-tcltk-simple-dialog.Rnw"
w <- tktoplevel(); tkwm.title(w, title)
tkwm.state(w, "withdrawn")
f <- ttkframe(w,  padding=c(3, 3, 12, 12))
tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 4: 
###################################################
#line 45 "ex-tcltk-simple-dialog.Rnw"
if(!is.null(parent)) {
  parentWin <- tkwinfo("toplevel", parent)
  if(as.logical(tkwinfo("viewable", parentWin))) {
    tkwm.transient(w, parent)
    if(as.character(tcl("tk", "windowingsystem")) == "aqua") {
      tcl("wm","attributes",parentWin, notify=TRUE) # bounce
      tkbind(parentWin,"<Enter>", function() 
             tcl("wm","attributes",parentWin, notify=FALSE)) #stop
    }
  }
}


###################################################
### chunk number 5: 
###################################################
#line 61 "ex-tcltk-simple-dialog.Rnw"
l <- ttklabel(f, image="::img::tclLogo", padding=5) # recycle
tkpack(l,side="left")


###################################################
### chunk number 6: 
###################################################
#line 67 "ex-tcltk-simple-dialog.Rnw"
f1 <- ttkframe(f)
tkpack(f1, expand=TRUE, fill="both")
#
m <- ttklabel(f1, text=message)
tkpack(m, expand=TRUE, fill="both")


###################################################
### chunk number 7: 
###################################################
#line 76 "ex-tcltk-simple-dialog.Rnw"
f2 <- ttkframe(f1)
tkpack(f2)


###################################################
### chunk number 8: 
###################################################
#line 82 "ex-tcltk-simple-dialog.Rnw"
okCB <- function() {
  print("That's great")
  tkdestroy(w)
}
okButton <- ttkbutton(f2, text="OK", command=okCB)
cancelButton <- ttkbutton(f2, text="Cancel", 
                          command=function() tkdestroy(w))
#
tkpack(okButton, side="left", padx=12)  # give some space
tkpack(cancelButton)


###################################################
### chunk number 9: 
###################################################
#line 100 "ex-tcltk-simple-dialog.Rnw"
tkbind("TButton", "<Return>", function(W) tcl(W, "invoke"))
tkbind("TButton", "<FocusIn>", function(W) {print("fin");tcl(W, "state", "active")})
#tkbind("TButton", "<FocusOut>", function(W) tcl(W, "state", "!active"))


###################################################
### chunk number 10: 
###################################################
#line 107 "ex-tcltk-simple-dialog.Rnw"
tkwm.state(w, "normal")
tkwm.resizable(w, FALSE, FALSE)
tkfocus(okButton)


###################################################
### chunk number 11: 
###################################################
#line 116 "ex-tcltk-simple-dialog.Rnw"
## bind so that object highlights on mouseover


###################################################
### chunk number 12: 
###################################################
#line 119 "ex-tcltk-simple-dialog.Rnw"



###################################################
### chunk number 1: 
###################################################
#line 2 "ex-tcltk-toolbar.Rnw"
## Toolbar example in Tk
## tbFrame and Frame are key containers
library(tcltk)


###################################################
### chunk number 2: 
###################################################
#line 22 "ex-tcltk-toolbar.Rnw"
w <- tktoplevel(); tkwm.title(w, "Toolbar example")
f <- ttkframe(w, padding=c(3,3,12,12))
tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 3: 
###################################################
#line 29 "ex-tcltk-toolbar.Rnw"
tbFrame <- ttkframe(f, padding=0)
contentFrame <- ttkframe(f, padding=4)


###################################################
### chunk number 4: 
###################################################
#line 36 "ex-tcltk-toolbar.Rnw"
tkgrid(tbFrame, row=0, column=0, sticky="we")
tkgrid(contentFrame, row=1, column=0, sticky = "news")
tkgrid.rowconfigure(f, 0, weight=0)
tkgrid.rowconfigure(f, 1, weight=1)
tkgrid.columnconfigure(f, 0, weight=1)
#
txt <- "Lorem ipsum dolor sit amet..." # sample text
tkpack(ttklabel(contentFrame, text=txt))


###################################################
### chunk number 5: 
###################################################
#line 50 "ex-tcltk-toolbar.Rnw"
tcl("ttk::style", "configure", "Toolbar.TButton", 
    font="helvetica 12", padding=0, borderwidth=0)


###################################################
### chunk number 6: 
###################################################
#line 57 "ex-tcltk-toolbar.Rnw"
makeIcon <- function(parent, stockName, command=NULL) {
  iconFile <- system.file("images", 
                          paste(stockName,"gif",sep="."), 
                          package="gWidgets")
  if(nchar(iconFile) == 0) {
    b <- ttkbutton(parent, text=stockName, width=6)
  } else {
    iconName <- paste("::img::",stockName, sep="")
    tkimage.create("photo", iconName, file = iconFile)
    b <- ttkbutton(parent, image=iconName, 
                   style="Toolbar.TButton", text=stockName, 
                   compound="top", width=6)
    if(!is.null(command))
      tkconfigure(b, command=command)
  }
  return(b)
}


###################################################
### chunk number 7: 
###################################################
#line 81 "ex-tcltk-toolbar.Rnw"
tkpack(makeIcon(tbFrame, "ok"), side="left")
tkpack(makeIcon(tbFrame, "quit"), side="left")
tkpack(makeIcon(tbFrame, "cancel"), side="left")


###################################################
### chunk number 8: 
###################################################
#line 90 "ex-tcltk-toolbar.Rnw"
setState <- function(W, state) tcl(W, "state", state)
setState <- function(W, state) {
  gamma <- ifelse(state=="active", 2, 1)
  img <- tkcget(W, "-image")
  tkconfigure(img, gamma=gamma)
  print(gamma)
}
tkbind("TButton", "<Enter>", function(W) setState(W, "active"))
tkbind("TButton", "<Leave>", function(W) setState(W, "!active"))



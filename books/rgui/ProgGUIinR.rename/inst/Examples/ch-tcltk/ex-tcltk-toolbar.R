###################################################
### chunk number 1: 
###################################################
## Toolbar example in Tk
## tbFrame and Frame are key containers
library(tcltk)


###################################################
### chunk number 2: 
###################################################
w <- tktoplevel(); tkwm.title(w, "Toolbar example")
f <- ttkframe(w, padding=c(5,5,5,5))
tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 3: 
###################################################
tbFrame <- ttkframe(f, padding=0)
contentFrame <- ttkframe(f, padding=4)


###################################################
### chunk number 4: 
###################################################
tkgrid(tbFrame, row=0, column=0, sticky="we")
tkgrid(contentFrame, row=1, column=0, sticky = "news")
tkgrid.rowconfigure(f, 0, weight=0)
tkgrid.rowconfigure(f, 1, weight=1)
tkgrid.columnconfigure(f, 0, weight=1)
## some example to pack into the content area
tkpack(ttklabel(contentFrame, text="Some content for the frame"))


###################################################
### chunk number 5: 
###################################################
tcl("ttk::style","configure","Toolbar.TButton", font="helvetica 12", padding=0, borderwidth=0)
makeIcon <- function(parent, stockName, command=NULL) {
  iconFile <- system.file("images", paste(stockName,"gif",sep="."), package="gWidgets")
  if(nchar(iconFile) == 0) {
    b <- ttkbutton(parent, text=stockName, width=6)
  } else {
    iconName <- paste("::img::",stockName, sep="")
    tkimage.create("photo", iconName, file = iconFile)
    b <- ttkbutton(parent, image=iconName, style="Toolbar.TButton", 
                   text=stockName, compound="top", width=6)
    if(!is.null(command))
      tkconfigure(b,command=command)
  }
  return(b)
}


###################################################
### chunk number 6: 
###################################################
tkpack(makeIcon(tbFrame, "ok"), side="left")
tkpack(makeIcon(tbFrame, "quit"), side="left")
tkpack(makeIcon(tbFrame, "cancel"), side="left")


###################################################
### chunk number 7: 
###################################################
## something to make icons highlight as we mouse over
tkbind(w,"<Enter>", function(W) {
  if(as.character(tkwinfo("class",W)) == "TButton") {
    img <- tkcget(W,"image"=NULL)
    tkconfigure(img, gamma=0.5)
  }})

tkbind(w,"<Leave>", function(W) {
  if(as.character(tkwinfo("class",W)) == "TButton") {
    img <- tkcget(W,"image"=NULL)
    tkconfigure(img, gamma=1.0)
  }})



###################################################
### chunk number 1: 
###################################################
## This is also an example of using a canvas to make a scrollable box container
## cf http://mail.python.org/pipermail/python-list/1999-June/005180.html

library(tcltk)
addScrollbars <- function(parent, widget) {
  xscr <- ttkscrollbar(parent, orient="horizontal",
                       command=function(...) tkxview(widget, ...))
  tkconfigure(widget, xscrollcommand = function(...) tkset(xscr,...))

  yscr <- ttkscrollbar(parent, command=function(...) tkyview(widget,...))
  tkconfigure(widget, yscrollcommand = function(...) tkset(yscr,...))
  
  ## Pack into a grid, from tkFAQ 10.1
  tkgrid(widget,row=0,column=0, sticky="news")
  tkgrid(xscr,row=1,column=0, sticky="ew")
  tkgrid(yscr,row=0,column=1, sticky="ns")
  tkgrid.columnconfigure(parent, 0, weight=1)
  tkgrid.rowconfigure(parent, 0, weight=1)
}


###################################################
### chunk number 2: 
###################################################
scrollableFrame <- function(parent, width= 300, height=300) {
  canvasWidget <- 
    tkcanvas(parent,
             borderwidth=0, highlightthickness=0,
             background="#e3e3e3", # match themed widgets
             width=width, height=height)
  addScrollbars(parent, canvasWidget)

  gp <- ttkframe(canvasWidget, padding=c(0,0,0,0))
  gpID <- tkcreate(canvasWidget, "window", 0, 0, anchor="nw", 
                   window=gp)
  
  tkbind(gp,"<Configure>",function() {  # changes scrollregion when items added
    bbox <- tcl(canvasWidget, "bbox", "all")
    tcl(canvasWidget,"config", scrollregion=bbox)
  })

  return(gp)
}


###################################################
### chunk number 3: 
###################################################
w <- tktoplevel()
tkwm.title(w,"Scrollable frame example")
#tkwm.resizable(tt,TRUE,TRUE)
g <- ttkframe(w); tkpack(g, expand=TRUE, fill="both")
gp <- scrollableFrame(g, 300, 300)


###################################################
### chunk number 4: 
###################################################
fontFamilies <- as.character(tkfont.families())
fontFamilies <- fontFamilies[grep("^[[:alpha:]]", fontFamilies)] # skip odd named ones
for(i in 1:length(fontFamilies)) {
  fontName <- paste("tmp",i,sep="")
  try(tkfont.create(fontName, family=fontFamilies[i], size=14), silent=TRUE)
  l <- ttklabel(gp, text=fontFamilies[i], font=fontName)
  tkpack(l, side="top", anchor="w")
}



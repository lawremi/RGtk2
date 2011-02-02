###################################################
### chunk number 1: 
###################################################
#line 2 "ex-tcltk-scrollable-frame.Rnw"
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
#line 40 "ex-tcltk-scrollable-frame.Rnw"
scrollableFrame <- function(parent, width= 300, height=300) {
  canvasWidget <- 
    tkcanvas(parent,
             borderwidth=0, highlightthickness=0,
             width=width, height=height)
  addScrollbars(parent, canvasWidget)
  #
  gp <- ttkframe(canvasWidget, padding=c(0,0,0,0))
  gpID <- tkcreate(canvasWidget, "window", 0, 0, anchor="nw", 
                   window=gp)
  tkitemconfigure(canvasWidget, gpID, width=width)
  ## update scroll region
  tkbind(gp,"<Configure>",function() {  
    bbox <- tcl(canvasWidget, "bbox", "all")
    tcl(canvasWidget,"config", scrollregion=bbox)
  })
  ## adjust "window" width when canvas is resized.
  tkbind(canvasWidget, "<Configure>", function(W) {
    width <- as.numeric(tkwinfo("width", W))
    gpwidth <- as.numeric(tkwinfo("width", gp))
    if(gpwidth < width)
      tkitemconfigure(canvasWidget, gpID, width=width)
  })
  return(gp)
}


###################################################
### chunk number 3: 
###################################################
#line 69 "ex-tcltk-scrollable-frame.Rnw"
w <- tktoplevel()
tkwm.title(w,"Scrollable frame example")
g <- ttkframe(w); tkpack(g, expand=TRUE, fill="both")
gp <- scrollableFrame(g, 300, 300)


###################################################
### chunk number 4: 
###################################################
#line 83 "ex-tcltk-scrollable-frame.Rnw"
fFamilies <- as.character(tkfont.families())
## skip odd named ones
fFamilies <- fFamilies[grepl("^[[:alpha:]]", fFamilies)] 
for(i in seq_along(fFamilies)) {
  fName <- sprintf("::font::-%s", i)
  try(tkfont.create(fName, family=fFamilies[i], size=14), 
      silent=TRUE)
  l <- ttklabel(gp, text=fFamilies[i], font=fName)
  tkpack(l, side="top", anchor="w")
}



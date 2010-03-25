###################################################
### chunk number 1: 
###################################################
## example of flags of the world for tkpack, grid
## https://www.cia.gov/library/publications/the-world-factbook/docs/flagsoftheworld.html
## dimensions http://flagspot.net/flags/xf-size.html
## using G, Y, R flags only
library(tcltk)


###################################################
### chunk number 2: 
###################################################
dims <- cbind(Benin=2:3, Cameroon=2:3,Guinea=2:3, Mali=2:3,
              Bolivia=2:3, Lithuania=1:2,Congo=2:3, Guyana=1:2,
              Togo= 2:3)


###################################################
### chunk number 3: 
###################################################
makeColors <- function(parent)
  list(green = tkframe(parent, background="green"),
       red = tkframe(parent, background="red"),
       yellow = tkframe(parent, background="yellow"))


###################################################
### chunk number 4: 
###################################################
makeTopLevel <- function(country) {
  w <- tktoplevel()
  tkwm.title(w, country)
  f <- ttkframe(w, padding=c(3,3,3,12))
  tkpack(f, expand=TRUE, fill="both")
  return(list(w=w, f= f, country=country))
}


###################################################
### chunk number 5: 
###################################################
resizeWin <- function(win) {
  height <- 200;
  setWidth <- function(h)
    floor(h * dims[2, win$country] / dims[1, win$country])
  width <- setWidth(height)
  tkwm.geometry(win$w, paste(width, height, sep="x"))
  ## constrain the resize to flag proportions
  ## alternate to tkwm.aspect(w, a,b,c,d)
  tkbind(win$w, "<Configure>", function(W) {
    tl <- tkwinfo("toplevel",W)
    geo <- tclvalue(tkwm.geometry(tl))
    geo <- as.numeric(unlist(strsplit(geo,"[^[:digit:]]"))[1:2])
    tkwm.geometry(tl, paste(setWidth(geo[2]), geo[2], sep="x"))
  })
}


###################################################
### chunk number 6: 
###################################################
win <- makeTopLevel("Cameroon")
w <- win$w; f <- win$f
l <- makeColors(f)
tkpack(l$green, l$red, l$yellow, expand=TRUE, fill="both", side="left")
resizeWin(win)


###################################################
### chunk number 7: 
###################################################
## Guinea just moves colors around
tkpack("forget", l$green)
tkpack(l$green, expand=TRUE, fill="both", side="left")
tkwm.title(win$w, "Guinea")


###################################################
### chunk number 8: 
###################################################
tkpack("forget", l$green)
tkpack("forget", l$red)
tkpack(l$green, before=l$yellow, expand=TRUE, fill="both", side="left")
tkpack(l$red, after=l$yellow, expand=TRUE, fill="both", side="left")
tkwm.title(win$w, "Mali")


###################################################
### chunk number 9: 
###################################################
win <- makeTopLevel("Lithuania")
l <- makeColors(win$f)
tkpack(l$yellow, l$green, l$red, expand=TRUE, fill="both", side="top")
resizeWin(win)


###################################################
### chunk number 10: 
###################################################
## benin is better suited for grid
win <- makeTopLevel("Benin")
l <- makeColors(win$f)
tkgrid(l$green,  row=0, column=0, rowspan=2, sticky="news")
tkgrid(l$yellow, row=0, column=1, columnspan=2, sticky="news")
tkgrid(l$red,    row=1, column=1, columnspan=2, sticky="news")
## use grid in equal sizes to get spaing right
tkgrid.rowconfigure(win$f, 0:1, weight=1)
tkgrid.columnconfigure(win$f, 0:2, weight=1) 
resizeWin(win)


###################################################
### chunk number 11: 
###################################################
win <- makeTopLevel("Togo")
f <- win$f
l <- makeColors(f)
f1 <- ttkframe(f); f2 <- ttkframe(f)
tkgrid(l$red, row=0, column=0, sticky="news")
tkgrid(f1, row=0, column=1, sticky="news")
tkgrid(f2, row=1, column=0, columnspan=2, sticky="news")

l1 <- makeColors(f1)
tkpack(l1$yellow, expand=TRUE, fill="both", side="top")
tkpack(l1$green, expand=TRUE, fill="both", side="top")
l2 <- makeColors(f2)
tkpack(l2$yellow, expand=TRUE, fill="both", side="top")
tkpack(l2$green, expand=TRUE, fill="both", side="top")

tkgrid.rowconfigure(f, 0:1, weight=1)
tkgrid.columnconfigure(f, 0, weight=8)
tkgrid.columnconfigure(f, 1, weight=10)  # not quite uniform
resizeWin(win)


###################################################
### chunk number 12: 
###################################################
## Now for some trickier ones we use canvas
## At this point in the text, canvas hasn't been introduced
## so this isn't shown
win <- makeTopLevel("Congo")
canvas <- tkcanvas(win$f, highlightthickness=0)
tkpack(canvas, expand=TRUE, fill="both")

## we use this function to draw polygons with a fill
## when the canvas is resized we use this as a callback for
## configure. Hence we delete any old polygons and just replace
## as otherwise, the sizing would be off.
drawCongo <- function(W) {
  geo <- tclvalue(tkwinfo("geometry",W))
  geo <- as.numeric(unlist(strsplit(geo,"[^[:digit:]]")))[1:2]
  w <- geo[1]; h <- geo[2]
  tcl(W,"delete","green","red","yellow") # out with old
  tcl(W,"create","polygon",
      0,0, w,0, 0,h, fill="green", tag="green")
  tcl(W, "create", "polygon",
      0,h, h,0, w,0, w-h,h, fill="red", tag="red")
  tcl(W, "create", "polygon",
      w,0, w,h, w-h,h, fill="yellow", tag="yellow")
}
tkbind(canvas, "<Configure>", drawCongo)
resizeWin(win)


###################################################
### chunk number 13: 
###################################################
## Guyana is identical to Congo
## we just need a different function to draw the polygons.
win <- makeTopLevel("Guyana")
canvas <- tkcanvas(win$f, highlightthickness=0)
tkpack(canvas, expand=TRUE, fill="both")

drawGuyana <- function(W) {
  geo <- tclvalue(tkwinfo("geometry",W))
  geo <- as.numeric(unlist(strsplit(geo,"[^[:digit:]]")))[1:2]
  w <- geo[1]; h <- geo[2]
  tcl(W,"delete","green","red","yellow") # out with old
  tcl(W,"create","polygon",
      0,0, w,h/2, 0,h, w,h, w,0, fill="green", tag="green")
  tcl(W, "create", "polygon",
      0,0, 0,h,  sqrt(3)*h/2,h/2, fill="red", tag="red")
  tcl(W, "create", "polygon",
      0,0, sqrt(3)*h/2,h/2, 0,h, w,h/2, fill="yellow", tag="yellow")
}
tkbind(canvas, "<Configure>", drawGuyana)
resizeWin(win)



###################################################
### chunk number 1: 
###################################################
#line 9 "ex-tcltk-canvas.Rnw"
## Canvas example of moving a point. See tkcanvas for much more
library(tcltk)
w <- tktoplevel()
tkwm.title(w, "Move canvas object example")
canvas <- tkcanvas(w, width=450, height=300)
tkpack(canvas, expand=TRUE, fill="both")


###################################################
### chunk number 2: 
###################################################
#line 21 "ex-tcltk-canvas.Rnw"
x <- 200; y <- 150; r <- 6
item <- tkcreate(canvas, "oval", x - r, y - r, x + r, y + r,
                 width=1, outline="black",
                 fill="SkyBlue2")
tkaddtag(canvas, "point", "withtag", item)


###################################################
### chunk number 3: 
###################################################
#line 33 "ex-tcltk-canvas.Rnw"
tkitembind(canvas, "point", "<Any-Enter>", function()
           tkitemconfigure(canvas, "current", fill="red"))
tkitembind(canvas, "point", "<Any-Leave>", function()
           tkitemconfigure(canvas, "current", fill="SkyBlue2"))


###################################################
### chunk number 4: 
###################################################
#line 43 "ex-tcltk-canvas.Rnw"
lastPos <- numeric(2)            # global to track position
tagSelected <- function(W, x, y) {
  tkaddtag(W,  "selected",  "withtag",  "current")
  tkitemraise(W, "current")
  lastPos <<- as.numeric(c(x, y))
}
tkitembind(canvas, "point", "<Button-1>",  tagSelected)


###################################################
### chunk number 5: moveSelectedPoint
###################################################
#line 57 "ex-tcltk-canvas.Rnw"
moveSelected <- function(W, x, y) {
  pos <- as.numeric(c(x,y))
  tkmove(W, "selected", pos[1] - lastPos[1], 
                        pos[2] - lastPos[2])
  lastPos <<- pos
}
tkbind(canvas, "<B1-Motion>", moveSelected)


###################################################
### chunk number 6: 
###################################################
#line 71 "ex-tcltk-canvas.Rnw"
tkbind(canvas, "<ButtonRelease-1>", 
       function(W) tkdtag(W,"selected"))



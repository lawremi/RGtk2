library(tcltk)

w <- tktoplevel()
f <- ttkframe(w)
tkpack(f, expand=TRUE, fill="both")

c <- tkcanvas(f)
tkpack(c, expand=TRUE, fill="both")


## drawing  program
lastx <- NULL; lasty <- NULL
tkbind(c,"<Button-1>", function(x,y,...) {
  lastx <<- x; lasty <<- y
})
tkbind(c,"<B1-Motion>", function(x,y,...) {
  tkcreate(c, "line", lastx, lasty, x, y, fill="red", width=4, tag="myLine")
  lastx <<- x; lasty <<- y
})


## bindings on objects
## FAILS rect is just a number, not an ID
rect <- tkcreate(c, "rectangle", 10,10,20,20,fill="blue")
tkbind(rect,"<Button-1>", function() cat("HI")) #.Tcl("set ::color red"))


## tags
rect <- tkcreate(c, "rectangle", 100,100,200,200,fill="green", tags="rectangle")
tkitemconfigure(c,"rectangle",fill="red")
# tkitemconfigure(c,"rectangle") to see options


## now you see it 
rect <- tkcreate(c, "rectangle", 50,50,100,100,fill="green", tags="rectangle")
tkcreate(c, "rectangle", 150,150,100,100,fill="green", tags="rectangle")
## now you don't
tkdelete(c, rect)


## do example of points
## how to tell if user clicks on a point and drags it?

## see tcltk demo on canvas for the bindings needed

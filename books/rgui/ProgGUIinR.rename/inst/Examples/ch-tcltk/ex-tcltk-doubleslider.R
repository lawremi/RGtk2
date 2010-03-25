### This is take off from the Brent Welch book
### This makes a widget for selecting a min and max value for a range
### using the slider metaphor
###
### * It could be improved by changing the way it gets its size
### * usual caveats about making your very own widget apply --
###   it won't look like a slider, users won't be familiar, ...
### * The getValue method isn't quite right due to the scaling. Should round
###   or fix the scaling

library(tcltk)
## parameters
.min <- 0; .max <- 50                   # scale min and max
width <- 300                            # pixels
cols=c("main"="grey","min"="red","max"="black")
labels <- c("min"="min","max"="max")

### layout basic GUI
w <- tktoplevel()
tkwm.title(w, "double slider example")
f <- ttkframe(w, padding=c(3,3,3,12)); tkpack(f, expand=TRUE, fill="both")
canvas <- tkcanvas(f)
tkpack(canvas,fill="x")

### make basic canvas objects
### fixed size, rescale afterwards
tkcreate(canvas, "rect", 0,0,110,10, fill=cols["main"], tag="slider")
tkcreate(canvas, "rect", 0,0,10,14, fill=cols["min"], tag=c("left","lbox"))
tkcreate(canvas, "rect", 100,-4,110,10, fill=cols["max"], tag=c("right","rbox"))
tkcreate(canvas, "text", 5,18, text=labels["min"], tag="left lnum")
tkcreate(canvas, "text", 105, 18, text=labels["max"], tag="right rnum")

### change scale to fit width
tcl(canvas,"scale",  "slider", 0, 0, (width + 10)/110, 1.0)
  
### move uses increment, so right one already 110 down the road
tcl(canvas, "move", "right", width - 110 + 10, 0)
tcl(canvas, "move", "all", 10,10)

### give canvas enough size 
bbox <- as.numeric(as.character(tcl(canvas, "bbox", "all")))
tcl(canvas, "config", height = bbox[4] + 4, width = width + 30)

### bindings
## click in slider to move is ambiguous -- unlike single slider -- so no binding
tcl(canvas, "bind", "left",  "<Button-1>",  function(W,x) scale2MarkClick(W,as.numeric(x),"lbox"))
tcl(canvas, "bind", "right", "<Button-1>",  function(W,x) scale2MarkClick(W,as.numeric(x),"rbox"))
tcl(canvas, "bind", "left",  "<B1-Motion>", function(W,x) scale2DragSlider(W,as.numeric(x),"lbox"))
tcl(canvas, "bind", "right", "<B1-Motion>", function(W,x) scale2DragSlider(W,as.numeric(x),"rbox"))

### a global variable. We use an environment so that updating within
### a callback is natural
scale2 <- new.env()

### Define the callbacks
### mark when one clicks on a slider rectangle
scale2MarkClick <- function(widget, xpos, tagName) {
  l <- list()
  l[[tagName]] <- as.numeric(xpos)
  scale2[[widget]] <- l
}

### callback to move slider rectangles
scale2DragSlider <- function(widget, xpos, tagName) {
  x1 <- scale2[[widget]][[tagName]]
  scale2[[widget]][[tagName]] <- xpos
  
  rx <- as.numeric(as.character(tcl(canvas, "coords","rbox")))[1]
  lx <- as.numeric(as.character(tcl(canvas, "coords","lbox")))[1]
  sbounds <- as.numeric(as.character(tcl(canvas, "bbox", "slider")))[c(1,3)] - c(0,10)
  dx <- xpos - x1

  if(tagName == "lbox") {
    if(lx + dx > rx) {                  # too far right
      dx <- rx - lx - 1
      scale2[[widget]][[tagName]] <- rx - 1
    } else if(lx + dx < sbounds[1]) {   # too far left
      dx <- sbounds[1] - lx + 1
      scale2[[widget]][[tagName]] <- sbounds[1] + 1
    }
    tcl(canvas, "move", "left", dx, 0)

  } else {
    ## rbox
    if(rx + dx < lx) {                  # too far left
      dx <- lx - rx
      scale2[[widget]][[tagName]] <- lx
    } else if(rx + dx > sbounds[2]) {   # too far right
      dx <- sbounds[2] - rx
      scale2[[widget]][[tagName]] <- sbounds[2]
    }
    tcl(canvas, "move", "right", dx, 0)
  }
}

### a get value method to return the position
### Uses global .min, .max
scale2getValue <- function(canvas) {
  rx <- as.numeric(as.character(tcl(canvas, "coords","rbox")))[1]
  lx <- as.numeric(as.character(tcl(canvas, "coords","lbox")))[1]
  bbox <- as.numeric(as.character(tcl(canvas, "bbox","slider")))[c(1,3)] - c(0,10)
  c(min = .min + (lx - bbox[1])/diff(bbox) * (.max - .min),
    max = .min + (rx - bbox[1])/diff(bbox) * (.max - .min))
}
  



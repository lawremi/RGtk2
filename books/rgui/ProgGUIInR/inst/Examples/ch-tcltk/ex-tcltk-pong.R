###
### Use canvas widget to play 'pong'
### Demonstrates:
### * canvas widget and tkmove function
### * canvas objects oval, rectangle, polygon
### * use of tcl("after", ms, callback)

require(tcltk)

## Global variables
e <- new.env()                          # for variable to update
e$hits <- 0
e$y <- rep(0,50)                        # for spin
e$yPos <- 0                             # for motion tracking
e$active <- FALSE                       # TRUE for motino
## some parameters
speed <- 20                             # in 1:25
d <- 6                            # diameter of point
h <- 30                           # height of paddle
X <- c(0,10,380,400)                    # size of playing field
Y <- c(0,10,290,300)
e$ballPos <- c(x=X[2]+d, y=mean(Y[2:3]), vx= + 1, vy=1, spin=0)

## main GUI
w <- tktoplevel()
tkwm.title(w,"Pong")
f <- ttkframe(w); tkpack(f, expand=TRUE, fill="both")
canvas <- tkcanvas(f, width=X[4], height=Y[4])
tkpack(canvas, side="top")

f1 <- ttkframe(f); tkpack(f1, fill="y", side="bottom")
tkpack(ttklabel(f1, text=" "), expand=TRUE, fill="y", side="left")

startButton <- ttkbutton(f1, text="Begin new game")
tkpack(startButton, side="left")

###
### Create OBjects
### The ball
## done in beginGame
### The paddle
item <- tkcreate(canvas, "rectangle", X[3], Y[4]/2 + h/2, X[3] + floor(h/4), Y[4]/2 - h/2,
                 width=1, outline="black", fill="blue")
tkaddtag(canvas, "paddle", "withtag", item)

### a label for the number of hits
item <- tkcreate(canvas, "text", X[4]/2, Y[3] - 10, text="Hits:")
tkaddtag(canvas, "label", "withtag", item)

item <- tkcreate(canvas, "text", X[4]/2 + 25, Y[3] - 10, text="0")
tkaddtag(canvas, "score", "withtag", item)

### The playing field
item <- tkcreate(canvas, "poly",
                 X[4], Y[2],
                 X[2], Y[2],
                 X[2], Y[3],
                 X[4], Y[3],
                 X[4], Y[4],
                 X[1], Y[4],
                 X[1], Y[1],
                 X[4], Y[1],
                 width=3,
                 dash=TRUE,
                 fill="gray50")

###############
### begin a new game
beginGame <- function() {
  ## initialize position
  e$ballPos <- c(x=X[2]+d, y=sample(Y[2]:Y[3],1), vx=1, vy=rnorm(1), spin=rnorm(0, sd=.25))

  ## add a ball to playing field
  tcl(canvas,"delete", "ball")          # remove old ball if present
  item <- tkcreate(canvas,"oval", e$ballPos['x'] -d, e$ballPos['y'] -d, e$ballPos['x'] + d, e$ballPos['y'] + d,
                   width=1, outline="black", fill="red")
  tkaddtag(canvas, "ball", "withtag", item)


  tkitemconfigure(canvas, "score", text=as.character(e$hits))
  tkconfigure(startButton, "state"="disabled")
  ## start
  e$active <- TRUE
  updateUI()
}
tkbind(startButton, "<Button-1>", beginGame)

###############
### function to update ball position, state
moveBall <- function() {
  e$ballPos <- e$ballPos + c(e$ballPos['vx'], e$ballPos['vy'], 0,0,0)
  tkmove(canvas,'ball', e$ballPos['vx'], e$ballPos['vy'])
  ## If on boundary change velocity, spin
  paddleCenter <- findPaddle()

  if(e$ballPos['y'] - d <= Y[2]) {        # top wall
    e$ballPos['vy'] <- - e$ballPos['vy']
    e$ballPos['vx'] <- e$ballPos['vx'] + e$ballPos['spin']
    e$ballPos['spin'] <- e$ballPos['spin'] + 0
  }  

  if(e$ballPos['x'] - d <= X[2]) {        # left wall
    e$ballPos['vx'] <- - e$ballPos['vx']
    e$ballPos['vy'] <- e$ballPos['vy'] + e$ballPos['spin']
    e$ballPos['spin'] <- e$ballPos['spin'] + 0
  }
  
  if(e$ballPos['y'] + d >= Y[3]) {        # bottom wall
    e$ballPos['vy'] <- - e$ballPos['vy']
    e$ballPos['vx'] <- e$ballPos['vx'] + e$ballPos['spin']
    e$ballPos['spin'] <- e$ballPos['spin'] + 0
  }

  if(as.integer(e$ballPos['x']) + d == X[3] &&        # paddle
     e$ballPos['y'] <= paddleCenter + h/2 &&
     e$ballPos['y'] >= paddleCenter - h/2 ) {

    e$ballPos['vx'] <- - e$ballPos['vx']
    e$ballPos['vy'] <- e$ballPos['vy'] + e$ballPos['spin']
    e$ballPos['spin'] <- e$ballPos['spin'] + mean(diff(e$y)) # change 0 to mean(diff(e$y)) to add spin

    ## update hits
    e$hits <- e$hits + 1
    tkitemconfigure(canvas, "score", text=as.character(e$hits))
  }

  if(e$ballPos['x'] + d >= X[4]) {        # missed
    e$hits <- 0
    e$ballPos['x'] <- NA
    stopUI()
    tkconfigure(startButton, "state"="normal")
  }

}

###############
## for adding spin to ball: mean(diff(e$y)) tracks motion
storePaddlePos <- function() {
  y <- findPaddle()
  tmp <- e$y
  e$y <- c(y,tmp)[1:length(tmp)]
}

###############
## start/stop UI including moving ball
e$afterID <- NA
updateUI <- function() {
  if(e$active) {
    if(as.logical(tkwinfo("exists",w))) {
      moveBall()
      storePaddlePos()
      e$afterID <- tcl("after",max(1,ceiling(25/speed)), updateUI)
    }
  }
  return(e$afterID)
}

stopUI <- function() {
  tcl("after","cancel",e$afterID)
  e$active <- FALSE
}    

###############
### move paddle
findPaddle <- function() {
  bbox <- as.numeric(as.character(tcl(canvas,"bbox","paddle")))
  mean(bbox[c(4,2)])
}

tkitembind(canvas, "paddle", "<Button-1>", function(W,x,y) {
  e$yPos <- as.numeric(y)
})
tkitembind(canvas, "paddle", "<B1-Motion>", function(W, x, y) {
  yNew <- as.numeric(y)
  delta <- yNew - e$yPos
  curPaddle <- findPaddle()

  ## stay in box
  if(delta < 0)
    delta <- - min(abs(delta), curPaddle - h/2 - (Y[2]-Y[1]))
  else
    delta <- min(delta, Y[3] - (curPaddle + h/2))

  tkmove(canvas, "paddle", 0, as.integer(delta))
  e$yPos <- yNew
})



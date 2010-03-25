board <-
c(0, 0, 0, 0, 0, 0, 0, 0, 0)
layoutBoard <-
function() {
  plot.new()
  plot.window(xlim = c(1,4), ylim=c(1,4))
  abline(v = 2:3)
  abline(h= 2:3)
  mtext("Tic Tac Toe. Click a square:")
}

drawMove <-
function(z,type="x") {
  i <- max(1,min(3,z[1])); j <- max(1,min(3,z[2]))
  if(type == "x") {
    lines(i + c(.1,.9),j + c(.1,.9))
    lines(i + c(.1,.9),j + c(.9,.1))
  } else {
    theta <- seq(0,2*pi,length=100)
    lines(i + 1/2 + .4*cos(theta), j + 1/2 + .4*sin(theta))
  }
}

isFinished <-
function() {
  if(sum(abs(board)) >= 9) return(TRUE)
  
  m <- matrix(1:9,nrow=3)
  ways <- list(m[,1],m[,2],m[,3],m[1,],m[2,],m[3,],diag(m),diag(apply(m,2,rev)))
  sums <- sapply(ways, function(i) abs(sum(board[i])))
  if(any(sums == 3)) return(TRUE)
  
  return(FALSE)
}

doComputerMove <-
function() {
  ## random !
  newMove <- sample(which(board == 0),1)
  board[newMove] <<- -1                 # otherwise a copy of board
  z <- c((newMove-1) %% 3, (newMove-1) %/% 3) + 1
  drawMove(z,"o")
}

doPlay <-
function() {
  iloc <- locator(n=1, type="n")
  clickHandler(iloc)
}

clickHandler <-
function(iloc) {
  if(is.null(iloc)) stop("Game terminated early")
  move <- floor(unlist(iloc))
  drawMove(move,"x")
  board[3*(move[2]-1) + move[1]] <<- 1
  if(!isFinished()) doComputerMove()
  if(!isFinished()) doPlay()
}

playGame <-
function() {
  layoutBoard()
  doPlay()
  mtext("All done\n",1)
}


###################################################
### chunk number 1: define-board
###################################################
#line 24 "TicTacToe.Rnw"
board <- matrix(rep(0,9), nrow=3)      


###################################################
### chunk number 2: layoutBoard
###################################################
#line 33 "TicTacToe.Rnw"
layoutBoard <- function() {
  plot.new()
  plot.window(xlim=c(1,4), ylim=c(1,4))
  abline(v=2:3);  abline(h=2:3)
  mtext("Tic Tac Toe. Click a square:")
}


###################################################
### chunk number 3: doPlay
###################################################
#line 58 "TicTacToe.Rnw"
doPlay <- function() {
  iloc <- locator(n=1, type="n")
  clickHandler(iloc)
}


###################################################
### chunk number 4: clickHandler
###################################################
#line 83 "TicTacToe.Rnw"
clickHandler <- function(iloc) {
  if(is.null(iloc)) 
    stop("Game terminated early")
  move <- floor(unlist(iloc))
  drawMove(move,"x")
  board[3*(move[2]-1) + move[1]] <<- 1
  if(!isFinished()) 
    doComputerMove()
  if(!isFinished()) 
    doPlay()
}


###################################################
### chunk number 5: drawMove
###################################################
#line 121 "TicTacToe.Rnw"
drawMove <- function(z,type="x") {
  i <- max(1,min(3,z[1])); j <- max(1,min(3,z[2]))
  if(type == "x") {
    lines(i + c(.1,.9),j + c(.1,.9))
    lines(i + c(.1,.9),j + c(.9,.1))
  } else {
    theta <- seq(0,2*pi,length=100)
    lines(i + 1/2 + .4*cos(theta), j + 1/2 + .4*sin(theta))
  }
}


###################################################
### chunk number 6: isFinished
###################################################
#line 144 "TicTacToe.Rnw"
isFinished <- function() {
  (any(abs(rowSums(board)) == 3) || 
   any(abs(colSums(board)) == 3) || 
   abs(sum(diag(board))) == 3 || 
   abs(sum(diag(apply(board, 2, rev)))) == 3)
}


###################################################
### chunk number 7: doComputerMove
###################################################
#line 157 "TicTacToe.Rnw"
doComputerMove <- function() {
  newMove <- sample(which(board == 0),1) # random !
  board[newMove] <<- -1    
  z <- c((newMove-1) %% 3, (newMove-1) %/% 3) + 1
  drawMove(z,"o")
}


###################################################
### chunk number 8: playGame
###################################################
#line 174 "TicTacToe.Rnw"
playGame <- function() {
  layoutBoard()
  doPlay()
  mtext("All done\n",1)
}



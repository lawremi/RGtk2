###################################################
### chunk number 1: define-board
###################################################
#line 25 "TicTacToe.Rnw"
board <- matrix(rep(0,9), nrow=3)      


###################################################
### chunk number 2: layout_board
###################################################
#line 34 "TicTacToe.Rnw"
layout_board <- function() {
  plot.new()
  plot.window(xlim=c(1,4), ylim=c(1,4))
  abline(v=2:3);  abline(h=2:3)
  mtext("Tic Tac Toe. Click a square:")
}


###################################################
### chunk number 3: do_play
###################################################
#line 59 "TicTacToe.Rnw"
do_play <- function() {
  iloc <- locator(n=1, type="n")
  click_handler(iloc)
}


###################################################
### chunk number 4: click_handler
###################################################
#line 92 "TicTacToe.Rnw"
click_handler <- function(iloc) {
  if(is.null(iloc)) 
    stop("Game terminated early")
  move <- floor(unlist(iloc))
  draw_move(move,"x")
  board[3*(move[2]-1) + move[1]] <<- 1
  if(!is_finished()) 
    do_computer_move()
  if(!is_finished()) 
    do_play()
}


###################################################
### chunk number 5: draw_move
###################################################
#line 133 "TicTacToe.Rnw"
draw_move <- function(z,type="x") {
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
### chunk number 6: is_finished
###################################################
#line 156 "TicTacToe.Rnw"
is_finished <- function() {
  (any(abs(rowSums(board)) == 3) || 
   any(abs(colSums(board)) == 3) || 
   abs(sum(diag(board))) == 3 || 
   abs(sum(diag(apply(board, 2, rev)))) == 3)
}


###################################################
### chunk number 7: do_computer_move
###################################################
#line 169 "TicTacToe.Rnw"
do_computer_move <- function() {
  new_move <- sample(which(board == 0),1) # random !
  board[new_move] <<- -1    
  z <- c((new_move-1) %% 3, (new_move-1) %/% 3) + 1
  draw_move(z,"o")
}


###################################################
### chunk number 8: play_game
###################################################
#line 186 "TicTacToe.Rnw"
play_game <- function() {
  board <<- matrix(rep(0,9), nrow=3)  
  layout_board()
  do_play()
  mtext("All done\n",1)
}



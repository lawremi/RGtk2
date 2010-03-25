###################################################
### chunk number 1: 
###################################################
library(gWidgets)


###################################################
### chunk number 2: 
###################################################
w <- gwindow("Alert box example")
g <- ggroup(horizontal=FALSE, cont = w)
alertBox <- ggroup(cont = g)
mainBox <- ggroup(cont = g, expand=TRUE)
l <- glabel("main box label", cont = mainBox, expand=TRUE)
ig <- NULL                              # global


###################################################
### chunk number 3: 
###################################################
openAlert <- function(message="message goes here") {
  ig <<- ggroup(cont=alertBox)
  glabel(message, cont = ig)
}
closeAlert <- function() delete(alertBox, ig)
  


###################################################
### chunk number 4: 
###################################################
QT <- openAlert("new message")                # open
QT <- closeAlert()                            # close



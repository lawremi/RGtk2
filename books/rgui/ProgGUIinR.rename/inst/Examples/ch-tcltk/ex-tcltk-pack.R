###################################################
### chunk number 1: 
###################################################
library(tcltk)
## pack examples
## how to pack in buttons


###################################################
### chunk number 2: 
###################################################
w <- tktoplevel()
tkwm.title(w, "Examples using pack as a geometry manager")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")

makeButtons <- function(f) {
  l <- list()
  l$cancel <- ttkbutton(f, text="cancel")
  l$ok <- ttkbutton(f, text="ok")
  return(l)
}


###################################################
### chunk number 3: 
###################################################
f1 <- ttklabelframe(f, text="plain vanilla")
tkpack(f1, expand=TRUE, fill="x")
l <- makeButtons(f1)
QT <- sapply(l, function(i) tkpack(i, side="left"))


###################################################
### chunk number 4: moveRight
###################################################
f2 <- ttklabelframe(f, text="push to right")
tkpack(f2, expand=TRUE, fill="x")
l <- makeButtons(f2)
tkpack(ttklabel(f2, text=" "), expand=TRUE, fill="x", side="left")
QT <- sapply(l, function(i) tkpack(i, side="left"))


###################################################
### chunk number 5: appleSays
###################################################
f3 <- ttklabelframe(f, text="push to right with space")
tkpack(f3, expand=TRUE, fill="x")
l <- makeButtons(f3)
tkpack(ttklabel(f3, text=" "), expand=TRUE, fill="x", side="left")
QT <- sapply(l, function(i) tkpack(i, side="left", padx=6))



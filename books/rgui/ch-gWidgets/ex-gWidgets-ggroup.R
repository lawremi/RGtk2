###################################################
### chunk number 1: 
###################################################
## example to sho nesting of vertical and horizontal box containers
require(gWidgets)


###################################################
### chunk number 2: 
###################################################
w  <- gwindow("ggroup examples")
g  <- ggroup(cont=w, horizontal=FALSE, expand=TRUE)
g1 <- ggroup(cont=g, expand=TRUE)
b  <- gbutton("no expand", cont=g1)
b  <- gbutton("expand", cont=g1, expand=TRUE)
g2 <- ggroup(cont=g)
l  <- glabel("expand=TRUE, anchor=c(-1,0)", anchor=c(-1,0), 
            expand=TRUE, cont=g2)
g3 <- ggroup(cont=g, expand=TRUE)
l  <- glabel("expand=FALSE, anchor=c(0,0)", anchor=c(0,0), 
            expand=TRUE, cont=g3)
g4 <- ggroup(cont=g, expand=TRUE)
l  <- glabel("expand=TRUE, anchor=c(1,0)", anchor=c(1,0), 
            expand=TRUE, cont=g4)


###################################################
### chunk number 3: 
###################################################
g5 <- ggroup(cont=g, expand=FALSE)
addSpring(g5)
b  <- gbutton("cancel", cont=g5, handler=function(h,..) dispose(w))
addSpace(g5, 10)
b  <- gbutton("ok", cont=g5)



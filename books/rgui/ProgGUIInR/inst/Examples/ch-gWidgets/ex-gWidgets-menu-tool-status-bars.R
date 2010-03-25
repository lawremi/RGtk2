###################################################
### chunk number 1: 
###################################################
library(gWidgets)


###################################################
### chunk number 2: 
###################################################
## Define a stub for a handler
f <- function(...) print("stub") 


###################################################
### chunk number 3: 
###################################################
aOpen <- gaction("open", icon="open", handler = f)
aQuit <- gaction("quit", icon="quit", handler = f)
aUndo <- gaction("undo", icon="undo", handler = f)


###################################################
### chunk number 4: 
###################################################
ml <- list(File=list(open=aOpen, sep=gseparator(), quit=aQuit),
           Edit=list(undo=aUndo))
tl <- list(open=aOpen, quit=aQuit)


###################################################
### chunk number 5: 
###################################################
w <- gwindow("Example of menubars, toolbars")
mb <- gmenu(ml, cont=w)
tb <- gtoolbar(tl, cont=w)
l <- glabel("Test of DOM widgets", cont=w)


###################################################
### chunk number 6: 
###################################################
enabled(aUndo) <- FALSE


###################################################
### chunk number 7: 
###################################################
svalue(aUndo) <- "undo: command"
enabled(aUndo) <- TRUE


###################################################
### chunk number 8: 
###################################################
## add in a new menu
hl <- list(help = list(help=gaction("manual", handler = f)))
add(mb, hl)



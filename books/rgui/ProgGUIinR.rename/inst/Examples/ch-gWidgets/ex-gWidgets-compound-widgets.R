###################################################
### chunk number 1: 
###################################################
w <- gwindow("Example of compound widgets")
pg <- gpanedgroup(cont = w)
gvarbrowser(cont = pg)

tbl <- glayout(cont = pg, expand=TRUE)
tbl[1,1, anchor=c(1,0)] <- "x"
tbl[1,2] <- (e <- gedit("", cont = tbl))
tbl[2,2, anchor=c(-1,1)] <- "(drop value above)"
tbl[3,1] <- (b <- gbutton("plot", cont = tbl))


###################################################
### chunk number 2: 
###################################################
## add drop source already part of gvarbrowser
addDropTarget(e, handler = function(h,...) svalue(e) <- h$dropdata)


###################################################
### chunk number 3: 
###################################################
addHandlerChanged(b, handler = function(h,...) plot(x=svalue(svalue(e)),xlab=svalue(e)))




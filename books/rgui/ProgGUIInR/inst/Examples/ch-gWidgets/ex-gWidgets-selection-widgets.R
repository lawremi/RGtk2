###################################################
### chunk number 1: 
###################################################
w <- gwindow("Example of selection widgets")
g <- ggroup(horizontal = FALSE, cont = w)
cb <- gcheckbox("LABEL1", cont = g, checked=FALSE, 
                handler = function(h,...) {
                  enabled(f) <- svalue(cb)
                })

f <- gframe("set off variables", cont = g)
tbl <- glayout(cont = f)
right <- c(1,1); left <- c(-1,1)
tbl[1,1, anchor=right] <- "Radio label"
tbl[1,2, anchor=left] <- gradio(1:3, horizontal=TRUE, 
           cont = tbl)
tbl[2,1, anchor=right] <- "checkbox group label"
tbl[2,2, achor=left] <- gcheckboxgroup(letters[1:3], 
           horizontal=FALSE, cont = tbl)
tbl[3,1, anchor=right] <- "combobox label"
tbl[3,2, achor=left] <- gcombobox(state.name, cont = tbl)
enabled(f) <- FALSE                     




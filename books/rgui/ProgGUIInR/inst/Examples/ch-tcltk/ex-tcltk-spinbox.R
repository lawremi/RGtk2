library(tcltk)
w <- tktoplevel()
f <- ttkframe(w, padding=10); tkpack(f)

tkspinbox <- function(parent,...) tkwidget(parent,"tk::spinbox", ...)

## numeric
value <- tclVar(1)
sp <- tkspinbox(f, from=0, to=10, increment=1, textvariable=value)
tkpack(sp)

tcl(sp,"get")
tcl(sp,"set",2)
tcl(sp,"get")

## character
values <- names(mtcars)
value <- tclVar(values[1])
spc <- tkspinbox(f, values=values, textvariable=value)
tkpack(spc)


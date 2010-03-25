## scale example

ttkscale <- function(parent, ...) tkwidget(parent,"ttk::scale", ...)

w <- tktoplevel()
f <- ttkframe(w); tkpack(f)

val <- tclVar(0.5)
val1 <- tclVar(5)

## no resolution -- need to scale!
sl1 <- ttkscale(f, from=0, to=10, variable=val1, orient = "horizontal")
tkpack(sl1)


sl2 <- tkscale(f, from=0, to=1, showvalue=TRUE, variable=val, resolution=.1, orient = "horizontal")
tkpack(sl2)

library(tcltk)
w <- tktoplevel()
f <- ttkframe(w)
tkpack(f, expand=TRUE, fill="both")

b <- ttkbutton(f, text="state")
tkpack(b)

tkcget(b,"-state")

tkconfigure(b,"-state","disabled")
tkconfigure(b,"-state","normal")

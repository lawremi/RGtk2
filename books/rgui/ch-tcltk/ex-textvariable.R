## in Tc/Tk textvariables are fom global scope

library(tcltk)

w <- tktoplevel()
## no ttkframe -- GUI looks bad
v <- tclVar("fred")

l <- ttklabel(w, textvariable=v)
tkpack(l)

f <- function() {
  v <- tclVar("Barney")
  l <- ttklabel(w, textvariable=v)
  tkpack(l)
}
f() ## puts in Barney

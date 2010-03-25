## callback in closure?

library(tcltk)
w <- tktoplevel()
tvar <- tclVar("click me")
b <- ttkbutton(w, textvariable=tvar)
tkpack(b)

f <- function(b,v, cb=NULL) {
  callback <- function() {
    h <- list()
    h$obj <- b
    h$tvar <- v
    cb(h)
  }
  tkbind(b,"<Button-1>",callback)
}

f(b,tvar, function(h) print(tclvalue(h$tvar)))

rm(tvar)

## now click click me

###################################################
### chunk number 1: 
###################################################
library(tcltk)


###################################################
### chunk number 2: 
###################################################
dualSlider <- function(min, max, by=1, lower=min, upper=max, label, minLabel="min:", maxLabel="max:",
                       container) {
  
  ttkscale <- function(parent, ...) tkwidget(parent, "ttk::scale", ...) # no constructor

  if(missing(label))
    f <- ttkframe(container)
  else
    f <- ttklabelframe(container, text=label)
  tkpack(f, expand=TRUE, fill="both")

  addLabels <- function(f,l,m,M, row) {
    tkgrid(ttklabel(f, text=l), row=row, column=0)
    tkgrid(ttklabel(f, text=as.character(m)), row=row, column=1)
    tkgrid(ttklabel(f, text=as.character(M)), row=row, column=3)
  }
  addLabels(f, minLabel, min, max, row=0)
  addLabels(f, maxLabel, min, max, row=1)

  compareVal <- function(x=c("min","max")) { ## compare values, move other if wrong
    minval <- as.numeric(as.character(tkget(sl1)))
    maxval <- as.numeric(as.character(tkget(sl2)))
    if(minval > maxval) {
      if(x == "min")
        tkset(sl2, minval)
      else
        tkset(sl1, maxval)
    }
  }
    
  sl1 <- ttkscale(f, from=0, to=100, value=0, 
                  command=function(...) compareVal("min"))
  sl2 <- ttkscale(f, from=0, to=100, value=100, 
                  command=function(...) compareVal("max"))
  tkgrid(sl1, row=0, column=2, sticky="ew")
  tkgrid(sl2, row=1, column=2, sticky="ew")
  tkgrid.columnconfigure(f, 2, weight=1)  

  getVal <- function() {   ## use closure to get values from widgets
    minval <- as.numeric(as.character(tkget(sl1)))
    maxval <- as.numeric(as.character(tkget(sl2)))
    f <- function(x) min + (max-min)*x/100
    c(min=f(minval), max=f(maxval))
  }

  return(list(f=f, sl1=sl1,sl2=sl2,getVal=getVal))
}


###################################################
### chunk number 3: 
###################################################
w <- tktoplevel(); tkwm.title(w, "Dual slider example")
ds <- dualSlider(min=0, max=1, label="Dual slider", container=w)
ds$getVal()



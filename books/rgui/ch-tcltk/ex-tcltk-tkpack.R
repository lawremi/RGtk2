library(tcltk)

## tkpack examples
exSide <- function(side=c("top","bottom","left","right")) {
  w <- tktoplevel()
  tkwm.title(w, side)
  f <- ttkframe(w )
  tkpack(f, expand=TRUE, fill="both")
  
  l1 <- tklabel(f, text="1")
  l2 <- tklabel(f, text="2")
  l3 <- tklabel(f, text="3")

  tkpack(l1, side=side)
  tkpack(l2, side=side)
  tkpack(l3, side=side)
}
exSide("bottom")
  
## padding
exPadding <- function() {
  w <- tktoplevel()
  f <- ttkframe(w )
  tkpack(f, expand=TRUE, fill="both")
  
  l1 <- tkcanvas(f, background="red", width=32, height=32)
  l2 <- tkcanvas(f, background="green", width=32, height=32)
  l3 <- tkcanvas(f, background="blue", width=32, height=32)
  
  
  tkpack(l1, ipadx=20, ipady=10) ## internal pad grows canvas here
  tkpack(l2, padx=30, pady=10)   ## puts padding on left, right
  tkpack(l3)
}


exAfterBefore <- function() {
  w <- tktoplevel()
  f <- ttkframe(w )
  tkpack(f, expand=TRUE, fill="both")
  
  l1 <- tkcanvas(f, background="red", width=32, height=32)
  l2 <- tkcanvas(f, background="green", width=32, height=32)
  l3 <- tkcanvas(f, background="blue", width=32, height=32)
  

  ## pack in green blue red
  tkpack(l1)
  tkpack(l2, before=l1)
  tkpack(l3, after = l2)
  

}

exForget <- function() {
  w <- tktoplevel()
  f <- ttkframe(w )
  tkpack(f, expand=TRUE, fill="both")
  
  l1 <- tkcanvas(f, background="red", width=32, height=32)
  l2 <- tkcanvas(f, background="green", width=32, height=32)
  l3 <- tkcanvas(f, background="blue", width=32, height=32)

  ## just red, green -- blue is forgotten
  tkpack(l1)
  tkpack(l2)
  tkpack(l3)
  tkpack("forget", l3)
  
}

exAnchor <- function() {
  w <- tktoplevel()
  f <- ttkframe(w )
  tkpack(f, expand=TRUE, fill="both")
  
  l1 <- tkcanvas(f, background="red", width=32, height=32)
  l2 <- tkcanvas(f, background="green", width=32, height=32)
  l3 <- tkcanvas(f, background="blue", width=32, height=32)

  tkpack(l1, anchor="n")
  tkpack(l2, anchor="w")
  tkpack(l3, anchor="e")
  ## now resize window
  
}


exFill <- function() {
 w <- tktoplevel()
  f <- ttkframe(w )
  tkpack(f, expand=TRUE, fill="both")
  
  l1 <- tkcanvas(f, background="red", width=32, height=32)
  l2 <- tkcanvas(f, background="green", width=32, height=32)
  l3 <- tkcanvas(f, background="blue", width=32, height=32)

  tkpack(l1, expand=TRUE, fill="x")
  tkpack(l2, expand=TRUE, fill="y")
  tkpack(l3, expand=TRUE, fill="both") ## all 3 get equal y space
  ## now resize window
 tkwm.title(w, "resize window")
}

exFill2 <- function() {
 w <- tktoplevel()
  f <- ttkframe(w )
  tkpack(f, expand=TRUE, fill="both")
  
  l1 <- tkcanvas(f, background="red", width=32, height=32)
  l2 <- tkcanvas(f, background="green", width=32, height=32)
  l3 <- tkcanvas(f, background="blue", width=32, height=32)

  tkpack(l1, expand=FALSE)
  tkpack(l2, expand=TRUE, fill="both") #Middle one gets all the space
  tkpack(l3, expand=FALSE) 
  ## now resize window
 tkwm.title(w, "resize window")
}

exFill2()

## exanding group example
library(tcltk)

w <- tktoplevel()
tkwm.title(w, "Expanding frame example")

f <- ttkframe(w)
tkpack(f, expand=TRUE, fill="both")

f1 <- ttkframe(f); tkpack(f1)
b <- ttkbutton(f1, text=">"); tkpack(b, side="left")
l <- ttklabel(f1, text=" click to expand"); tkpack(l)

f2 <- ttkframe(f); tkpack(f2, expand=TRUE, fill="both")
## exp is frame to pack things into
exp <- ttkframe(f2); exp$env$state <- FALSE
## as a sample we pack in l a simple label.
l <- ttklabel(exp, text="this is some text for the frame")
tkpack(l)

resizeFrame <- function(f) {
  tcl("update","idletasks")
  toplevel <- tkwinfo("toplevel",f)
  reqHeight <- as.numeric(tkwinfo("reqheight", toplevel))
  curHeight <- as.numeric(tkwinfo("height", toplevel))
  if(reqHeight == curHeight)
    return()
  reqWidth <- as.numeric(tkwinfo("reqwidth", toplevel))
  
  tkwm.withdraw(toplevel)
  tkwm.geometry(toplevel,paste(reqHeight,reqWidth,sep="x"))
  tkwm.deiconify(toplevel)
}
  


cb <- function() {
  if(exp$env$state) {
    ## close
    tkpack("forget", exp)
    tkconfigure(b,text=">")
    resizeFrame(f2)
    exp$env$state <- FALSE
  } else {
    ## open
    tkpack(exp, expand=TRUE, fill="both")
    tkconfigure(b,text="V")
    exp$env$state <- TRUE
  }
}

tkbind(b,"<Button-1>", cb)

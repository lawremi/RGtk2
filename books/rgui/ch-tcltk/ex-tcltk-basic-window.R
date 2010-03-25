newWindow <- function(title, command, parent,
                      width, height) {

  w <- tktoplevel()

  if(!missing(title))
    tkwm.title(w, title)

  if(!missing(command)) 
    tkwm.protocol(w,"WM_DELETE_WINDOW", function() {
      command()
      tkdestroy(w)
    })

  if(!missing(parent)) {
    parentWin <- tkwinfo("toplevel", parent)
    if(as.logical(tkwinfo("viewable", parentWin))) {
      tkwm.transient(w, parent)
    }
  }

  if(!missing(width))
    tkconfigure(w, width=as.numeric(width))

  if(!missing(height))
      tkconfigure(w, height=as.numeric(height))

  windowSystem <- as.character(tcl("tk","windowingsystem"))
  if(windowSystem == "aqua") {
    f <- ttkframe(w, padding=c(3,3,12,12))
  } else {
    f1 <- ttkframe(w, padding=0)
    tkpack(f1, expand=TRUE, fill="both")
    f <- ttkframe(f1, padding=c(3,3,12,0))
    sg <- ttksizegrip(f1)
    tkpack(sg, side="bottom", anchor="se")
  }
  tkpack(f, expand=TRUE, fill="both", side="top")


  

  return(f)
}

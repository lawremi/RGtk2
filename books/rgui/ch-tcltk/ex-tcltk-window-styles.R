## different styles for top-level windows
library(tcltk)
## wm transient: no need to decorate
if(0) {
  w <- tktoplevel(); tkwm.title(w, "parent")
  sw <- tktoplevel(); tkwm.title(sw,"child")
  tkwm.transient(sw,w)
  tkwm.overrideredirect(sw) # fails mac native, mac X11
}

## mac styles
styles <- c("documentProc", "dBoxProc", "plainDBox", "altDBoxProc","movabaleDBoxProc", "zoomDocProc","rDocProc",
             "floatProc","floatZoomProc")

for(i in styles) {
  w <- tktoplevel()
  tkwm.title(w, i)
  tcl("unsupported1", "style", w, i)
}







library(tcltk)
library(svMisc)                         # for some helpers

## Helper functions
usingMac <- function()  
  as.character(tcl("tk", "windowingsystem")) == "aqua"

addScrollbars <- function(parent, widget,type=c("both", "x", "y")) {
  if(any(type %in% c("both","x"))) {
    xscr <- ttkscrollbar(parent, orient="horizontal",
                         command=function(...) tkxview(widget, ...))
    tkconfigure(widget,
                xscrollcommand=function(...) tkset(xscr,...))
  }

  if(any(type %in% c("both","y"))) {
     yscr <- ttkscrollbar(parent, orient="vertical",
                          command=function(...) tkxview(widget, ...))
     tkconfigure(widget,
                 yscrollcommand=function(...) tkset(yscr,...))
   }

  ## place in grid     
  tkgrid(widget, row=0, column=0, sticky="news")
  if(any(type %in% c("both", "x"))) {
    tkgrid(xscr, row=1, column=0, sticky="ew")
    tkgrid.columnconfigure(parent, 0, weight=1)
  }
  if(any(type %in% c("both", "y"))) {
    tkgrid(yscr,row=0,column=1, sticky="ns")
    tkgrid.rowconfigure(parent, 0, weight=1)
  }


}

w <- tktoplevel()
tkwm.title(w, "Simple code editor")
f <- ttkframe(w,padding=c(3,3,3,12)); tkpack(f, expand=TRUE, fill="both")
tb <- tktext(f, undo=TRUE)
addScrollbars(f, tb)

mb <- tkmenu(w); tkconfigure(w, menu=mb)

fileMenu <- tkmenu(mb); tkadd(mb, "cascade", label="File", menu=fileMenu)
editMenu <- tkmenu(mb); tkadd(mb, "cascade", label="Edit", menu=editMenu)

showCmd <- function(cmd) writeLine(captureAll(Parse(cmd)))

tkadd(fileMenu, "command", label="Evaluate buffer",
      command = function() {
        curVal <- tclvalue(tkget(tb, "1.0", "end"))
        showCmd(curVal)
      })
tkadd(fileMenu, "command", label="Evaluate selection",
      state="disabled",
      command = function() {
        curSel <- tclvalue(tkget(tb, "sel.first", "sel.last"))
        showCmd(curSel)
      })
tkadd(fileMenu, "separator")
tkadd(fileMenu, "command", label="Quit", command=function() tkdestroy(w))

tkadd(editMenu, "command", label="Undo",
      command = function()  {
        tcl(tb, "edit", "undo")
      })
tkadd(editMenu, "command", label="Redo",
      command = function() {
        tcl(tb, "edit", "redo")
      })


## Code to handle selection
tkbind(tb,"<<Selection>>", function(W) {
  ranges <- tclvalue(tcl(W, "tag", "ranges", "sel"))
  if(length(ranges) > 1 || ranges != "") 
    tkentryconfigure(fileMenu,1,  state="normal")      
  else 
    tkentryconfigure(fileMenu, 1, state="disabled")
})

## completion popup for functions
doPopup <- function(W, X, Y) {
  cur <- tclvalue(tkget(W,"current  wordstart", "current wordend"))
  posVals <- head(CompletePlus(cur)[,1, drop=TRUE], n=20)
  if(length(posVals) > 0) {
    popup <- tkmenu(tb)
    sapply(posVals, function(i) {           # no loop?
      tkadd(popup, "command", label=i, command = function() {
        tkreplace(W, "current wordstart", "current wordend", i)
      })
    })
    tkpopup(popup, X, Y)
  }
}

if (usingMac()) {
  tkbind(tb, "<Button-2>", doPopup)      # right click
  tkbind(tb, "<Control-1>", doPopup)     # Control + click
} else {
  tkbind(tb, "<Button-3>", doPopup)
}
      

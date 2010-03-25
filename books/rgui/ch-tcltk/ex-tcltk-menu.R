###################################################
### chunk number 1: 
###################################################
## Not shown
library(tcltk)

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


###################################################
### chunk number 2: 
###################################################
library(svMisc)                         # for some helpers
showCmd <- function(cmd) writeLine(captureAll(Parse(cmd)))


###################################################
### chunk number 3: 
###################################################
w <- tktoplevel()
tkwm.title(w, "Simple code editor")
f <- ttkframe(w,padding=c(3,3,3,12)); tkpack(f, expand=TRUE, fill="both")
tb <- tktext(f, undo=TRUE)
addScrollbars(f, tb)


###################################################
### chunk number 4: 
###################################################
mb <- tkmenu(w); tkconfigure(w, menu=mb)
fileMenu <- tkmenu(mb); tkadd(mb, "cascade", label="File", menu=fileMenu)
editMenu <- tkmenu(mb); tkadd(mb, "cascade", label="Edit", menu=editMenu)


###################################################
### chunk number 5: 
###################################################
tkadd(fileMenu, "command", label="Evaluate buffer",
      command = function() {
        curVal <- tclvalue(tkget(tb, "1.0", "end"))
        showCmd(curVal)
      })


###################################################
### chunk number 6: 
###################################################
tkadd(fileMenu, "command", label="Evaluate selection",
      state="disabled",
      command = function() {
        curSel <- tclvalue(tkget(tb, "sel.first", "sel.last"))
        showCmd(curSel)
      })


###################################################
### chunk number 7: addQuit
###################################################
tkadd(fileMenu, "separator")
tkadd(fileMenu, "command", label="Quit", command=function() tkdestroy(w))


###################################################
### chunk number 8: 
###################################################
img <- system.file("images/up.gif",package="gWidgets")
tkimage.create("photo", "::img::undo", 
               file = img)
tkadd(editMenu, "command", label="Undo",
      accelerator="Ctrl-U",
      image="::img::undo", compound="left",
      command = function() tcl(tb, "edit", "undo"))
tkadd(editMenu, "command", label="Redo",
      command = function() tcl(tb, "edit", "redo"))


###################################################
### chunk number 9: updateUI
###################################################
updateUI <- function() {
  states <- c("disabled","normal")
  ## selection
  hasSelection <- function(W) {
    ranges <- tclvalue(tcl(W, "tag", "ranges", "sel"))
    length(ranges) > 1 || ranges != ""
  }
  tkentryconfigure(fileMenu,1,  state=states[hasSelection(tb) + 1]) # by index
  ## undo -- if buffer modified, assume undo stack possible
  ## no good check for redo
  canUndo <- function(W) as.logical(tcl(W,"edit", "modified"))
  tkentryconfigure(editMenu,"Undo", state=states[canUndo(tb) + 1]) # by pattern
  tkentryconfigure(editMenu,"Redo", state=states[canUndo(tb) + 1])
}


###################################################
### chunk number 10: 
###################################################
afterID <- ""
repeatCall <- function(ms=1000, f, w) {
  afterID <<- tcl("after", ms, function() {
    if(as.logical(tkwinfo("exists", w))) {
      f()
      afterID <<- repeatCall(ms, f, w)
    } else {
      tcl("after", "cancel", afterID)
    }
  })
}
repeatCall(100, updateUI, w)


###################################################
### chunk number 11: addKeyboardShortcut
###################################################
if(usingMac()) {
  tkentryconfigure(editMenu,"Undo",accelerator="Cmd-z")
  tkbind(w,"<Option-z>", function() tcl(tb,"edit","undo"))
} else {
  tkentryconfigure(editMenu,"Undo",accelerator="Control-u")
  tkbind(w,"<Control-u>", function() tcl(tb,"edit","undo"))
}


###################################################
### chunk number 12: definePopup
###################################################
doPopup <- function(W, X, Y) {
  cur <- tclvalue(tkget(W,"current  wordstart", "current wordend"))
  tcl(W, "tag", "add", "popup", "current  wordstart", "current wordend")
  posVals <- head(CompletePlus(cur)[,1, drop=TRUE], n=20)
  if(length(posVals) > 1) {
    popup <- tkmenu(tb)
    sapply(posVals, function(i) {           # no loop?
      tkadd(popup, "command", label=i, command = function() {
        tcl(W,"replace", "popup.first", "popup.last", i)
      })
    })
    tkpopup(popup, X, Y)
 }}


###################################################
### chunk number 13: addPopup
###################################################
if (!usingMac()) {
  tkbind(tb, "<Button-3>", doPopup)
} else {
  tkbind(tb, "<Button-2>", function(W,X,Y) {
    tcl("clipboard","clear",displayof=W) # UNIX legacy re mouse-2 click for selection copy
    doPopup(W,X,Y)
    })      # right click
  tkbind(tb, "<Control-1>", doPopup)     # Control + click
}



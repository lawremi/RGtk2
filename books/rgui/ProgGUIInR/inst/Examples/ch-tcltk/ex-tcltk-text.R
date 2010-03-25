###################################################
### chunk number 1: 
###################################################
evalCmdChunk <- function(t, cmds) {
  cmdChunks <- try(parse(text=cmds), silent=TRUE)
  if(inherits(cmdChunks,"try-error")) {
    tkinsert(t, "end", "Error", "errorTag") # add tag for markup
    tktag.configure(t, "errorTag", foreground="red", font="courier 12 bold")
  }

  for(cmd in cmdChunks) {
    dcmd <- deparse(cmd, width.cutoff = 0.75 * getOption("width"))
    command <-  paste(getOption("prompt"),
                      paste(dcmd,collapse=paste("\n", getOption("continue"), sep="")),
                      sep="", collapse="")
    tkinsert(t, "end", command, "commandTag")
    tktag.configure(t, "commandTag", foreground="blue", font = "courier 12 italic")
    tkinsert(t, "end","\n")
    ## output
    output <- capture.output(eval(cmd, envir=.GlobalEnv))
    output <- paste(output, collapse="\n")
    tkinsert(t, "end", output, "outputTag")
    tktag.configure(t, "outputTag", font = "courier 12")
    tkinsert(t, "end","\n")
  }
}


###################################################
### chunk number 2: 
###################################################
## function to add scrollbars to a widget
addScrollbars <- function(parent, widget) {
  xscr <- ttkscrollbar(parent, orient="horizontal",
                       command=function(...) tkxview(widget, ...))
  yscr <- ttkscrollbar(parent, orient="vertical",
                       command=function(...) tkxview(widget, ...))

  tkconfigure(widget,
              xscrollcommand=function(...) tkset(xscr,...),
              yscrollcommand=function(...) tkset(yscr,...))

  tkgrid(widget, row=0, column=0, sticky="news")
  tkgrid(yscr,row=0,column=1, sticky="ns")
  tkgrid(xscr, row=1, column=0, sticky="ew")
  tkgrid.columnconfigure(parent, 0, weight=1)
  tkgrid.rowconfigure(parent, 0, weight=1)
}


###################################################
### chunk number 3: makeGUI
###################################################
w <- tktoplevel(); tkwm.title(w, "Text buffer example")
f <- ttkframe(w, padding=c(3,3,3,12)); tkpack(f, expand=TRUE, fill="both")

t <- tktext(f, width=80, height = 24)
addScrollbars(f, t)


###################################################
### chunk number 4: TryIt
###################################################
evalCmdChunk(t, "2 + 2; lm(mpg ~ wt, mtcars)")



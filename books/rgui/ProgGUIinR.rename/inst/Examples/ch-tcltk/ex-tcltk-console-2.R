library(tcltk)

## Try to make a console
## issue with handlers. Break command does not break
## we use "limit" to mark the prompt point
## use W as that is what is passed in the percent sub, but can be tktext instance too
isBeforeLimit <- function(W) {
  as.logical(as.numeric(tclvalue(tcl(W,"compare","insert","<","limit"))))
}
isAfterLimit <- function(W) {
  as.logical(as.numeric(tclvalue(tcl(W,"compare","insert",">","limit"))))
}

hasSelection <- function(W)  {
  cur <- tclvalue(tcl(W,"tag","nextrange","sel","1.0","end")) ## selection?
  cur != ""
}

getCommand <- function(W) {
  cmd <- tkget(W,"limit","end")
  cmd <- tclvalue(cmd)
  paste(cmd, collapse=" ")
}
setCommand <- function(W, cmd) {
  tkdelete(W,"limit","end")
  tkinsert(W,"limit",cmd, "command")
}

setOutput <- function(W, cmd, error=FALSE) {
  type <- ifelse(error,"error","output")
  tkinsert(W,"end","\n")
  for(i in cmd) {
    tkinsert(W,"end",i, type)
    tkinsert(W,"end","\n")
  }
  tkinsert(W,"end","\n")
  insertPrompt(W)
}

insertPrompt <- function(W) {
  prompt <- getOption("prompt")
  prompt <- "NOSPACE:"
  ## tcl(t,"image","create","end", image="::img::Rprompt")
  tkinsert(W, "end", prompt, "prompt")
  tkmark.set(t, "limit","insert")       # set mark
}

## return word at insert point or just to left
getWordAtInsert <- function(W) {
  val <- tclvalue(tkget(W,"insert wordstart","insert wordend"))
  if(val == "" || val == "\n")
    val <- tclvalue(tkget(W,"insert -1 chars wordstart","insert -1 chars wordend"))
  val
}

hist <- c()
histp <- 0

w <- tktoplevel()
t <- tktext(w); tkpack(t, expand=TRUE, fill="both")

## markup tags
tktag.configure(t, "prompt", foreground="gray60")
tktag.configure(t, "command", foreground="black")
tktag.configure(t, "output", foreground="blue")
tktag.configure(t, "error", foreground="red")


## initial placement

insertPrompt(t)

tkmark.gravity(t, "limit", "left") # limit is attached to left character
tkfocus(t)

## bindings
## Return -- eval command
tkbind(t, "<Return>", function(W) {
  evaluateText(W)
  tkmark.set(W,"insert","end -1 lines lineend")
})

## backspace -- if we can
tkbind(t, "<BackSpace>", function(W) {
  if(hasSelection(W)) {
    tkdelete(W,"sel.first","sel.last") ## clears out selection
  } else if(isAfterLimit(W)) {
    tkdelete(W, "insert") ## delete one character
    tksee(W,"insert") ## move viewport
  }
  .Tcl("break")                         # neither works!
  tcl("eval","break")
})

## break here simply sets prompt
tkbind(t, "<Control-c>", function(W) {
  insertPrompt(W)
})

tkbind(t,"<Key>", function(W) {
  if(isBeforeLimit(W)) 
    tkmark.set(W,"insert","end")
})

tkbind(t,"<Tab>", function(W) {
  wrd <- getWordAtInsert(W)
  possibleValues <- apropos(paste("^",wrd,sep=""), mode="function")
  print(possibleValues)
})

tkbind(t,"<Down>", function(W) {
  ## if at begining do history, else move up if not above limit
  curCmd <- getCommand(W)
  if(curCmd == "") {
    ## put in history
  } else {
    if(as.logical(as.numeric(tclvalue(tcl(W,"compare","insert +1 lines",">","end")))))
      tcl("eval","break")
  }
})

tkbind(t,"<Up>", function(W) {
  ## if at begining do history, else move up if not above limit
  curCmd <- getCommand(W)
  if(curCmd == "") {
    ## put in history
  } else {
    if(as.logical(as.numeric(tclvalue(tcl(W,"compare","insert -1 lines","<","limit")))))
      tcl("eval","break")
  }
})

evaluateText <- function(W) {
  command <- getCommand(W)
  tryParse <- try(parse(text=command), silent=TRUE)
  if(inherits(tryParse,"try-error")) {
    ## can't parse expression?
  } else {
    out <- try(capture.output(eval(tryParse, envir=.GlobalEnv)), silent=TRUE)
    if(!inherits(out,"try-error"))
      setOutput(W, out, error=FALSE)
    else
      ## can error
      setOutput(W, out, error=TRUE)
  }
}

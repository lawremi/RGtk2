###################################################
### chunk number 1: 
###################################################
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 2: TextViewWidget
###################################################
tv <- gtkTextView()
tb <- tv$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
tv$modifyFont(font)                     # widget wide


###################################################
### chunk number 3: 
###################################################
tb$setData("textview", tv)


###################################################
### chunk number 4: 
###################################################
aTag <- tb$createTag(tag.name="cmdInput")
aTag <- tb$createTag(tag.name="cmdOutput", weight=PangoWeight["bold"])
aTag <- tb$createTag(tag.name="cmdError", weight=PangoStyle["italic"], foreground="red")
aTag <- tb$createTag(tag.name="uneditable", editable=FALSE)


###################################################
### chunk number 5: 
###################################################
startCmd <- gtkTextMark("startCmd", left.gravity=TRUE)
tb$addMark(startCmd, tb$getStartIter()$iter)


###################################################
### chunk number 6: 
###################################################
moveViewport <- function(obj) {
  tv <- obj$getData("textview")
  endIter <- obj$getEndIter()
  QT <- tv$scrollToIter(endIter$iter, 0)
}


###################################################
### chunk number 7: 
###################################################
addPrompt <- function(obj, prompt=c("prompt","continue"), setMark=TRUE) {
  prompt <- match.arg(prompt)
  prompt <- getOption(prompt)
  
  endIter <- obj$getEndIter()
  obj$insert(endIter$iter, prompt)
  tv <- obj$getData("textview")
  if(setMark)
    obj$moveMarkByName("startCmd", endIter$iter)
}


###################################################
### chunk number 8: addOutput
###################################################
addOutput <- function(obj, output, tagName="cmdOutput") {
  ## add output to end of buffer, new line with continuation prompt
  if(length(output) > 100) 
    out <- c(output[1:100], "...")

  endIter <- obj$getEndIter()
  if(length(output) > 0) 
    sapply(output, function(i)  {
      obj$insertWithTagsByName(endIter$iter, i, tagName)
      obj$insert(endIter$iter, "\n", len=-1)
    })
  
  addPrompt(obj, "prompt", setMark=TRUE)
  obj$applyTagByName("uneditable", obj$getStartIter()$iter, 
                     obj$getEndIter()$iter)
  moveViewport(obj)
}


###################################################
### chunk number 9: 
###################################################
addErrorMessage <- function(obj, msg) {
  ## add error message to end of buffer, new line with continuation prompt
  endIter <- obj$getEndIter()
  obj$insert(endIter$iter, "\n", len=-1)
  sapply(msg, function(i) {
    obj$insertWithTagsByName(endIter$iter, i,  "cmdError")
    obj$insert(endIter$iter, "\n", len=-1)
  })
  addPrompt(obj, "prompt", setMark=TRUE)
  moveViewport(obj)  
}


###################################################
### chunk number 10: 
###################################################
findCMD <- function(obj) {
  ## get current command
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(startIter$iter, endIter$iter, TRUE)

  cmd <- unlist(strsplit(cmd, "\n[+] ")) # hardcoded "+"
  cmd
}


###################################################
### chunk number 11: 
###################################################
evalCMD <- function(obj, cmd) {
  cmd <- paste(cmd, sep="\n")
  out <- try(parse(text=cmd), silent=TRUE)
  if(inherits(out, "try-error")) {
    if(length(grep("end", out))) {      # unexpected end of input
      ## continue
      addPrompt(obj, "continue", setMark=FALSE)
      moveViewport(obj)
    } else {
      ## error
      addErrorMessage(obj, out)
    }
    return()
  }
  addHistory(obj, cmd)  ## if keeping track of history
  
  out <- capture.output(eval(parse(text = cmd), envir=.GlobalEnv))
  addOutput(obj, out)

}


###################################################
### chunk number 12: connectBinding
###################################################
gSignalConnect(tv, "key-release-event", f=function(w, e, data) {
  obj <- w$getBuffer()                  # w is textview
  keyval <- e$getKeyval()
  if(keyval == GDK_Return) {
    ## run return handler
    cmd <- findCMD(obj)
    if(nchar(cmd) > 0)
      evalCMD(obj, cmd)
  }
  return(TRUE)                          # events need return value
})


###################################################
### chunk number 13: 
###################################################
addPrompt(tb) ## initial prompt
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(tv)

w <- gtkWindow(show=FALSE)
w$setTitle("A terminal")
w$add(sw)
w$setSizeRequest(400,200)
w$showAll()


###################################################
### chunk number 14: 
###################################################
## History features
## This is not illustrated in text, but is added here to illustrate how this might be implemented
## The major issue with this example is we can't trap the return or arrow keys before they move 
## the cursor so any thing ends up looking jerky

## store the stack and a pointer to the current command with the text buffer
tb$setData("history", list())
tb$setData("ptr", 0)


## replace cmd with that in str.
replaceCMD <- function(obj, str) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  obj$delete(startIter$iter, endIter$iter)
  endIter <- obj$getEndIter()
  obj$insertWithTagsByName(endIter$iter, str[1], "cmdInput")
  if(length(str) > 1) {
    for(i in str[-1]) {
      obj$insert(endIter$iter, "\n")
      obj$insertWithTagsByName(endIter$iter, getOption("continue"), "cmdInput")
      obj$insertWithTagsByName(endIter$iter, i, "cmdInput")
    }
  }
  moveViewport(obj)
}

## This adds the command to the history stack and moves the pointer.
addHistory <- function(obj, cmd) {
  history <- obj$GetData("history"); ptr <- obj$GetData("ptr")
  history <- c(history, cmd)
  ptr <- length(history)
  obj$SetData("ptr", ptr)
  obj$SetData("history", history)
}

## these next two functions scroll through the history
scrollHistoryUp <- function(obj) {
  ## move through history
  ptr <- obj$GetData("ptr") - 1
  if(ptr > 0)
    replaceCMD(obj, obj$GetData("history")[[ptr]])
  obj$SetData("ptr", max(ptr,0))
  obj$PlaceCursor(obj$GetEndIter()$iter)
}

scrollHistoryDown <- function(obj) {
  ## move through history
  ptr <- obj$GetData("ptr") + 1
  history <- obj$GetData("history")
  if(ptr <= length(history)) 
    replaceCMD(obj, history[[ptr]])
  obj$SetData("ptr", min(ptr,length(history)))
  obj$PlaceCursor(obj$GetEndIter()$iter)
}

## History bindings
## this uses Control-p and Control-n to move
gSignalConnect(tv, "key-release-event", f=function(w, e, data) {
  if(e$GetState() != GdkModifierType['control-mask'])
    return(TRUE)

  obj <- w$GetBuffer()
  keyval <- e$GetKeyval()

  if(keyval == GDK_p) {
    scrollHistoryUp(obj)
  } else if(keyval == GDK_n) {
    scrollHistoryDown(obj)
  }
  return(TRUE)
})



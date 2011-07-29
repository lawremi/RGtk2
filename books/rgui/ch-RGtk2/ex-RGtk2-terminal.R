###################################################
### chunk number 1: 
###################################################
#line 14 "ex-RGtk2-terminal.Rnw"
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 2: TextViewWidget
###################################################
#line 21 "ex-RGtk2-terminal.Rnw"
tv <- gtkTextView()
tb <- tv$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
tv$modifyFont(font)                     # widget wide


###################################################
### chunk number 3: 
###################################################
#line 31 "ex-RGtk2-terminal.Rnw"
tb$createTag(tag.name="cmdInput")
tb$createTag(tag.name="cmdOutput", 
             weight=PangoWeight["bold"])
tb$createTag(tag.name="cmdError", 
             weight=PangoStyle["italic"], foreground="red")
tb$createTag(tag.name="uneditable", editable=FALSE)


###################################################
### chunk number 4: 
###################################################
#line 42 "ex-RGtk2-terminal.Rnw"
startCmd <- tb$createMark("startCmd", tb$getStartIter()$iter, 
                          left.gravity=TRUE)
bufferEnd <- tb$createMark("bufferEnd", tb$getEndIter()$iter)


###################################################
### chunk number 5: 
###################################################
#line 52 "ex-RGtk2-terminal.Rnw"
addPrompt <- function(obj, prompt=c("prompt", "continue"),
                      setMark=TRUE) {
  prompt <- match.arg(prompt)
  prompt <- getOption(prompt)
  
  endIter <- obj$getEndIter()
  obj$insert(endIter$iter, prompt)
  if(setMark)
    obj$moveMarkByName("startCmd", endIter$iter)
  obj$applyTagByName("uneditable", obj$getStartIter()$iter, 
                     obj$getEndIter()$iter)
}
addPrompt(tb) ## place an initial prompt


###################################################
### chunk number 6: addOutput
###################################################
#line 70 "ex-RGtk2-terminal.Rnw"
addOutput <- function(obj, output, tagName="cmdOutput") {
  endIter <- obj$getEndIter()
  if(length(output) > 0)  
    sapply(output, function(i)  {
      obj$insertWithTagsByName(endIter$iter, i, tagName)
      obj$insert(endIter$iter, "\n", len=-1)
    })
}


###################################################
### chunk number 7: 
###################################################
#line 87 "ex-RGtk2-terminal.Rnw"
findCMD <- function(obj) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(startIter$iter, endIter$iter, TRUE)
  regex <- paste("\n[", getOption("continue"), "] ", sep = "")
  cmd <- unlist(strsplit(cmd, regex))
  cmd
}


###################################################
### chunk number 8: evalCmd
###################################################
#line 104 "ex-RGtk2-terminal.Rnw"
require(evaluate)
evalCMD <- function(tv, cmd) {
  tb <- tv$getBuffer()
  out <- try(evaluate:::evaluate(cmd, .GlobalEnv), silent=TRUE)
  
  if(inherits(out, "try-error")) {
    ## parse error
    addOutput(tb, out, "cmdError")
  } else if(inherits(out[[2]], "error")) {
    if(grepl("end", out[[2]])) {        # a hack here
      addPrompt(tb, "continue", setMark=FALSE)
      return()
    } else {
      addOutput(tb, out[[2]]$message, "cmdError")
    }
  } else {
    addOutput(tb, out[[2]], "cmdOutput")
  }
  addPrompt(tb, "prompt", setMark=TRUE)
}


###################################################
### chunk number 9: connectBinding
###################################################
#line 130 "ex-RGtk2-terminal.Rnw"
gSignalConnect(tv, "key-release-event", f=function(w, e) {
  obj <- w$getBuffer()                  # w is textview
  keyval <- e$getKeyval()
  if(keyval == GDK_Return) {
    cmd <- findCMD(obj)                 # poss. character(0)
    if(length(cmd) && nchar(cmd) > 0)
      evalCMD(w, cmd)
  }
})


###################################################
### chunk number 10: 
###################################################
#line 149 "ex-RGtk2-terminal.Rnw"
scrollViewport <- function(view, ...) {
  iter <- view$getBuffer()$getEndIter()$iter
  view$scrollToMark(bufferEnd, within.margin=0)
  return(FALSE)
}
gSignalConnect(tb, "changed", scrollViewport, data=tv, 
               after = TRUE, user.data.first = TRUE)


###################################################
### chunk number 11: makeGUI
###################################################
#line 159 "ex-RGtk2-terminal.Rnw"
## scroll window
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(tv)

## top-level window
w <- gtkWindow(show=FALSE)
w$setTitle("A terminal")
w$add(sw)
w$setSizeRequest(400,200)
w$showAll()


###################################################
### chunk number 12: 
###################################################
#line 175 "ex-RGtk2-terminal.Rnw"
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
ID <- gSignalConnect(tv, "key-release-event", f=function(w, e, data) {
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



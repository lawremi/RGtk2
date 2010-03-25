###################################################
### chunk number 1: 
###################################################
require(RGtk2)


###################################################
### chunk number 2: AppendWords
###################################################
entry <- gtkEntry()
completion <- gtkEntryCompletionNew()
entry$setCompletion(completion)


###################################################
### chunk number 3: SetCompletion
###################################################
store <- rGtkDataFrame(data.frame(name=I(state.name)))
completion$setModel(store)
completion$setTextColumn(0)             # which column in model
completion['inline-completion'] <- TRUE # inline with text edit
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 4: SetMatchFunc
###################################################
f <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)$value   # column 0 in model
  
  str <- comp$getEntry()$getText()      # case sensitive
  grepl(str, rowVal)
}
QT <- completion$setMatchFunc(func=f)


###################################################
### chunk number 5: 
###################################################
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()



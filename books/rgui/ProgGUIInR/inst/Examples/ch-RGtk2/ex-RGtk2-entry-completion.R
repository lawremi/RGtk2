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
words <- names(mtcars)                  # for data frame values
store <- rGtkDataFrame(as.data.frame(words))
completion$setModel(store)
completion$setTextColumn(0)             # which column in model
completion['inline-completion'] <- TRUE # inline with text edit
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 4: SetMatchFunc
###################################################
f <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)     # column 0 in model
  isMatch <- length(grep(str, rowVal))
  return(as.logical(isMatch))
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



###################################################
### chunk number 1: 
###################################################
#line 3 "ex-RGtk2-entry-completion.Rnw"
require(RGtk2)


###################################################
### chunk number 2: AppendWords
###################################################
#line 9 "ex-RGtk2-entry-completion.Rnw"
entry <- gtkEntry()
completion <- gtkEntryCompletion()
entry$setCompletion(completion)


###################################################
### chunk number 3: SetCompletion
###################################################
#line 19 "ex-RGtk2-entry-completion.Rnw"
store <- rGtkDataFrame(state.name)
completion$setModel(store)
completion$setTextColumn(0)
completion['inline-completion'] <- TRUE
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 4: SetMatchFunc
###################################################
#line 29 "ex-RGtk2-entry-completion.Rnw"
matchAnywhere <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)$value # column 0 in model
  
  str <- comp$getEntry()$getText()      # case sensitive
  grepl(str, rowVal)
}
completion$setMatchFunc(matchAnywhere)


###################################################
### chunk number 5: notShown
###################################################
#line 43 "ex-RGtk2-entry-completion.Rnw"
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()



###################################################
### chunk number 1: 
###################################################
require(RGtk2)


###################################################
### chunk number 2: 
###################################################
words <- names(mtcars)                  # for data frame values
store <- gtkListStore(c("gchararray"))

for(i in words) {
  iter <- store$Append()
  store$SetValue(iter$iter, column=0, value=i)
}


###################################################
### chunk number 3: 
###################################################
entry <- gtkEntry()
completion = gtkEntryCompletionNew()


###################################################
### chunk number 4: 
###################################################
completion$SetModel(store)
completion$SetTextColumn(0)             # which column in model
completion['inline-completion'] <- TRUE # inline with text edit
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 5: 
###################################################
entry$SetCompletion(completion)


###################################################
### chunk number 6: 
###################################################
ID <- gSignalConnect(entry,"activate",
                     f = function(data,w,...) {
                       val <- w$GetText()
                       store <- data$store
                       iter <- store$Append()
                       store$SetValue(iter$iter,column = 0, value = val)
                     },
                     data = list(store=store),
                     user.data.first = TRUE)


###################################################
### chunk number 7: 
###################################################
w <- gtkWindow(); w$SetTitle("Test of entry completion")
w$Add(entry)



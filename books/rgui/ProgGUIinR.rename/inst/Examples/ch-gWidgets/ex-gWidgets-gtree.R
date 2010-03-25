###################################################
### chunk number 1: 
###################################################
require(gWidgets)


###################################################
### chunk number 2: party
###################################################
require(party)
data("GlaucomaM", package="ipred")      # load data
gt <- ctree(Class ~ ., data=GlaucomaM)  # fit model


###################################################
### chunk number 3: offspring
###################################################
offspring <- function(key, offspring.data) {
  if(missing(key) || length(key) < 1)  # which node?
    node <- 1
  else
    node <- as.numeric(key[length(key)]) # key is a vector

  if(nodes(gt, node)[[1]]$terminal)    # return if terminal
    return(data.frame(node=node, hasOffspring=FALSE, description="terminal"))

  df <- data.frame(node=integer(2), hasOffspring=logical(2),
                   description=character(2), stringsAsFactors=FALSE)

  children <-  c("left","right")
  ineq <- c(" <= "," >  ")
  varName <- nodes(gt, node)[[1]]$psplit$variableName
  splitPoint <- nodes(gt, node)[[1]]$psplit$splitpoint

  for(i in 1:2) {
    df[i,1] <- nodes(gt, node)[[1]][[children[i]]][[1]]
    df[i,2] <- !nodes(gt, df[i,1])[[1]]$terminal
    df[i,3] <- paste(varName, splitPoint, sep=ineq[i])
  }
  df                                    # returns a data frame
}


###################################################
### chunk number 4: makeGUI
###################################################
w <- gwindow("Example of gtree")
g <- ggroup(cont = w, horizontal=FALSE)
glabel("Click on the tree to investigate the partition", cont = g)
tr <- gtree(offspring, cont = g, expand=TRUE)


###################################################
### chunk number 5: eventHandler
###################################################
addHandlerDoubleclick(tr, handler=function(h,...) {
  node <- as.numeric(svalue(h$obj))
  if(nodes(gt, node)[[1]]$terminal) {   # if terminal plot
    weights <- as.logical(nodes(gt,node)[[1]]$weights)
    plot(response(gt)[weights])
  }})



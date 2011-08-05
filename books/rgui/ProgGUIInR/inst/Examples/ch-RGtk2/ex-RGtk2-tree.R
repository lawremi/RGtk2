###################################################
### chunk number 1: 
###################################################
#line 8 "ex-RGtk2-tree.Rnw"
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 2: SetUpStore
###################################################
#line 16 "ex-RGtk2-tree.Rnw"
store <- gtkTreeStore(rep("gchararray", 2))
sstore <- gtkTreeModelSort(store)


###################################################
### chunk number 3: 
###################################################
#line 22 "ex-RGtk2-tree.Rnw"
iter <- store$append(parent=NULL)$iter
store$setValue(iter, column=0, "GlobalEnv")
store$setValue(iter, column=1, "environment")
iter <- store$append(parent=iter)


###################################################
### chunk number 4: 
###################################################
#line 33 "ex-RGtk2-tree.Rnw"
view <- gtkTreeView(sstore)
view$getSelection()$setMode("multiple")


###################################################
### chunk number 5: 
###################################################
#line 42 "ex-RGtk2-tree.Rnw"
gSignalConnect(view, signal = "row-expanded",
               f = function(view, iter, tpath, user.data) {
                 sortedModel <- view$getModel()
                 iter <- pathToIter(sortedModel, tpath)
                 path <- iterToRPath(sortedModel, iter)
                 children <- getChildren(path)
                 addChildren(store, children, parentIter=iter)
                 ## remove errant offspring, cf. addChildren
                 ci <- store$iterChildren(iter)
                 if(ci$retval) store$remove(ci$iter)
               })


###################################################
### chunk number 6: trePathToIter
###################################################
#line 62 "ex-RGtk2-tree.Rnw"
pathToIter <- function(sstore, tpath) {
  store <- sstore$getModel()
  uspath <- sstore$convertPathToChildPath(tpath)
  store$getIter(uspath)$iter
}


###################################################
### chunk number 7: IterToPath
###################################################
#line 73 "ex-RGtk2-tree.Rnw"
iterToRPath <- function(sstore, iter) {
  store <- sstore$getModel()
  indices <- store$getPath(iter)$getIndices()
  iter <- NULL
  path <- sapply(indices, function(i) {
    iter <<- store$iterNthChild(iter, i)$iter
    store$getValue(iter, 0)$value
  })
  return(path[-1])
}


###################################################
### chunk number 8: getChildren
###################################################
#line 91 "ex-RGtk2-tree.Rnw"
getChildren <- function(path=character(0)) {
  hasChildren <- function(obj) 
    (is.list(obj) || is.environment(obj)) && 
  !is.null(names(as.list(obj)))
  
  getType <- function(obj) head(class(obj), n=1)

  obj <- 
    if (!length(path)) {
      .GlobalEnv
    } else {
      x <- get(path[1], envir=.GlobalEnv)
      if(length(path) > 1)
        get(path[1], envir=.GlobalEnv)[[path[-1]]]
      else
        x
    }

  children <- as.list(obj)
  
  d <- data.frame(children = names(children),
                  class = sapply(children, getType),
                  offspring = sapply(children, hasChildren))
  
  ## filter out Gtk ones
  d[!grepl("^Gtk", d$class), ]
}


###################################################
### chunk number 9: addChildren
###################################################
#line 126 "ex-RGtk2-tree.Rnw"
addChildren <- function(store, children, parentIter = NULL) {
  if(nrow(children) == 0) 
    return(NULL)
  for(i in 1:nrow(children)) {
    iter <- store$append(parent=parentIter)$iter
    sapply(1:(ncol(children) - 1), function(j)              
           store$setValue(iter, column = j-1, children[i, j]))
    ## Add a branch if there are children
    if(children[i, "offspring"])
      store$append(parent=iter)
  }
}


###################################################
### chunk number 10: 
###################################################
#line 145 "ex-RGtk2-tree.Rnw"
gSignalConnect(view, signal = "row-collapsed",
       f = function(view, iter, tpath, user.data) {
         sortedModel <- view$getModel()
         iter <- pathToIter(sortedModel, tpath)
         n = store$iterNChildren(iter)
         if(n > 1) { ## n=1 gets removed when expanded
           for(i in 1:(n-1)) {
             child.iter <- store$iterChildren(iter)
             if(child.iter$retval)
               store$remove(child.iter$iter)
           }
         }
       })


###################################################
### chunk number 11: DoubleClickHandler
###################################################
#line 164 "ex-RGtk2-tree.Rnw"
gSignalConnect(view, signal = "row-activated",
       f = function(view, tpath, tcol) {
         sortedModel <- view$getModel()
         iter <- pathToIter(sortedModel, tpath)
         path <- iterToRPath(sortedModel, iter)
         sel <- view$getSelection()
         out <- sel$getSelectedRows()
         if(length(out) == 0) return(c()) # nothing
         vals <- c()
         for(i in out$retval) {  # multiple selections
           iter <- sortedModel$getIter(i)$iter
           newValue <- sortedModel$getValue(iter, 0)$value
           vals <- c(vals, newValue)
         }
         print(vals)  # [Replace this]
       })


###################################################
### chunk number 12: addRenderer
###################################################
#line 186 "ex-RGtk2-tree.Rnw"
## Now, we define our GUI. The view will have two similar columns.
## add two cell renderers -- 1 for name, 1 for type
nms <- c("Variable name","type")
for(i in 1:2) {
  cr <- gtkCellRendererText()
  vc <- gtkTreeViewColumn()
  vc$setSortColumnId(i-1) # allow sorting
  vc$setResizable(TRUE)
  vc$setTitle(nms[i])
  vc$packStart(cr,TRUE)
  vc$addAttribute(cr,"text",i-1)
  view$insertColumn(vc, i-1)
}


###################################################
### chunk number 13: exampleGUI
###################################################
#line 202 "ex-RGtk2-tree.Rnw"
## We now place the tree view widget into a basic GUI.
sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$add(view)

w <- gtkWindow()
w$setTitle("Tree view")
w$add(sw)



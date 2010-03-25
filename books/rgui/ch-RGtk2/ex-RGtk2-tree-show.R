###################################################
### chunk number 1: 
###################################################
library(proto)
library(RGtk2)


###################################################
### chunk number 2: AnObject
###################################################
AnObject <-
  proto(new=function(.,...) .$proto(...),
        data = NULL,                    # where to show
        show = function(.) {}           # show in treeview
        )


###################################################
### chunk number 3: 
###################################################
tv <- gtkTextView()
tv.sw <- gtkScrolledWindow()
tv.sw$SetPolicy("automatic","automatic")
tv.sw$Add(tv)


###################################################
### chunk number 4: 
###################################################
showText <- AnObject$new()
showText$data <- tv
showText$show <- function(.) {
  tb <- .$data$GetBuffer()
  tb$InsertAtCursor(paste(.$message,"\n",sep=""))
}


###################################################
### chunk number 5: 
###################################################
gtkTreeStoreAddFromList <- function(store,lst) {
  ## we stop descending when we hit a proto object
  is.proto <- function(.) inherits(.,"proto")
  addToTree <- function(store, lst, iter) {
    for(i in names(lst)) {
      niter <- store$Append(parent=iter)$iter
      if(!is.proto(lst[[i]])) {
        store$SetValue(niter, column = 0, i) # recurse
        addToTree(store, lst[[i]], niter)
      } else {
        store$SetValue(niter, column = 0, i)
      }
    }
  }
  addToTree(store, lst, NULL)
}


###################################################
### chunk number 6: getPathNames
###################################################
gtkTreeStoreGetPathNames <- function(store,iter, path) {
  if(missing(iter)) {
    str <- path$ToString()
    iter <- store$GetIterFromString(str)$iter
  }
  val <- store$GetValue(iter,0)$value
  iter <- store$IterParent(iter)
  while(iter$retval) {
    val <- c(store$GetValue(iter$iter,0)$value, val)
      iter <- store$IterParent(iter$iter) # walk back
  }
  return(val)
}


###################################################
### chunk number 7: 
###################################################
showView <- function(view)  {
  cr <- gtkCellRendererText()
  vc <- gtkTreeViewColumn()
  vc$SetTitle("testing")
  vc$PackStart(cr, TRUE)
  vc$AddAttribute(cr,"text",0)
  view$InsertColumn(vc,0)
  
  sw <- gtkScrolledWindow()
  sw$SetPolicy("automatic","automatic")
  sw$Add(view)
  return(sw)
}


###################################################
### chunk number 8: MakeList
###################################################
lst <- list(flintstone = list(
              husband = showText$new(message="fred"),
              wife = showText$new(message="wilma")
              ),
            rubble = list(
              husband = showText$new(message="barney"),
              wife = showText$new(message="betty")
              )
            )


###################################################
### chunk number 9: 
###################################################
store <- gtkTreeStore("gchararray")
store$AddFromList(lst["flintstone"])
store$AddFromList(lst["rubble"])


###################################################
### chunk number 10: 
###################################################
view <- gtkTreeViewNewWithModel(store)
## callback
ID <- gSignalConnect(view,"row-activated",
                     f = function(view,path, column, data) {
                       store <- view$GetModel()
                       nms <- store$GetPathNames(path=path)
                       if(is.proto(data[[nms]]))
                         data[[nms]]$show()   # vectorized [[
                     }, data = lst)


###################################################
### chunk number 11: 
###################################################
## simple layout
w <- gtkWindow(); w$SetTitle("Tree view")
g <- gtkHPaned(); w$Add(g)
g$Pack1(showView(view), resize=FALSE)
g$Pack2(tv.sw, resize=TRUE, shrink=TRUE)



###################################################
### chunk number 1: 
###################################################
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 2: getChildren
###################################################
getChildren <- function(path) {
  
  pathToObject <- function(path) {      
    x <- try(eval(parse(text=paste(path,collapse="$")),
                  envir=.GlobalEnv),silent=TRUE)
    if(inherits(x,"try-error")) {
      cat(sprintf("Error with %s",path))
      return(NA)
    }
    return(x)
  }

  theChildren <- function(path) {
    if(missing(path) || length(path) == 0)
      ls(envir=.GlobalEnv)
    else
      names(pathToObject(path))
  }
  hasChildren <- function(obj) is.recursive(obj) && !is.null(names(obj))
  
  getType <- function(obj) head(class(obj), n=1)

  children <- theChildren(path)
  ## filter out Gtk ones
  
  objs <- sapply(children,function(i) pathToObject(c(path,i)))
  d <- data.frame(children=children,
                  class = sapply(objs,getType),
                  offspring = sapply(objs,hasChildren))
  ind = grep("^Gtk",d$class)
  if(length(ind) == 0) return(d) else return(d[-ind,])
}


###################################################
### chunk number 3: addChildren
###################################################
addChildren <- function(store,children, parentIter=NULL) {
  
  if(nrow(children) == 0) return(NULL)
  for(i in 1:nrow(children)) {
    iter <- store$append(parent=parentIter)$iter
    ## use last column to indicate logical
    sapply(1:(ncol(children)-1),function(j)              
           store$setValue(iter,column=j-1,children[i,j]))
    ## add Branch.
    ## no better way, as this adds an extra blank line
    ## we remove later.
    if(children[i,ncol(children)])
      store$append(parent=iter)
  }
}


###################################################
### chunk number 4: trePathToIter
###################################################
tpathToPIter <- function(view,tpath) {
  ## view$getModel -- sstore, again store
  sstore <- view$getModel(); store <- sstore$getModel()
  uspath <- sstore$convertPathToChildPath(tpath)
  p.iter <- store$getIter(uspath)$iter
  return(p.iter)
}


###################################################
### chunk number 5: IterToPath
###################################################
## convert from iter to path
iterToPath <- function(view,iter) {
  sstore <- view$getModel(); store <- sstore$getModel()
  ## get path from iter
  string <- store$getPath(iter)$toString()
  indices = unlist(strsplit(string,":"))
  thePath <- c()
  for(i in 1:length(indices)) {
    path <- paste(indices[1:i],collapse=":")
    iter <- store$getIterFromString(path)$iter
    thePath[i] <- store$getValue(iter,0)$value
  }
  return(thePath[-1])
}


###################################################
### chunk number 6: SetUpStore
###################################################
## set up store with sorting and view
## sort by clicking on column headers
store = gtkTreeStoreNew(rep("gchararray",2))
sstore = gtkTreeModelSortNewWithModel(store)
view = gtkTreeViewNewWithModel(sstore)


###################################################
### chunk number 7: 
###################################################
iter <- store$append(parent=NULL)$iter
store$setValue(iter,column=0,"GlobalEnv")
store$setValue(iter,column=1,"")
iter <- store$append(parent=iter)


###################################################
### chunk number 8: 
###################################################
view$setSearchColumn(0)
## multiple
sel = view$getSelection()
sel$setMode(GtkSelectionMode["multiple"])


###################################################
### chunk number 9: addRenderer
###################################################
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
### chunk number 10: exampleGUI
###################################################
sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$add(view)

w <- gtkWindow(); w$setTitle("Tree view")
w$add(sw)


###################################################
### chunk number 11: 
###################################################
## That will show the first row, but nothing will happen
## when we click on the expand row
## we need to add a signal to do so


## add children if we expand
ID <- gSignalConnect(view,signal="row-expanded",
                     f = function(view, iter, tpath, ...) {
                       p.iter <- tpathToPIter(view,tpath)
                       path <- iterToPath(view,p.iter)
                       children = getChildren(path)
                       
                       addChildren(store, children, parentIter=p.iter)
                       ## remove errant 1st offspring. See addChildren
                       ci <- store$iterChildren(p.iter)
                       if(ci$retval) store$remove(ci$iter)
                     })



###################################################
### chunk number 12: 
###################################################
## add handler to remove children -- in case things change
ID <- gSignalConnect(view,signal="row-collapsed",
                  f = function(view, iter, tpath, ...) {
                    p.iter <- tpathToPIter(view,tpath)
                    
                    ## get children, remove
                    n = store$iterNChildren(p.iter)
                    if(n > 1) { ## n=1 gets removed when expanded
                      for(i in 1:(n-1)) {
                        child.iter = store$iterChildren(p.iter)
                        if(child.iter$retval)
                          store$remove(child.iter$iter)
                      }
                    }
                  })


###################################################
### chunk number 13: DOubleClickHandler
###################################################
## double click handler
ID <- gSignalConnect(view,signal="row-activated",
                     f = function(view, tpath, tcol) {
                       p.iter <- tpathToPIter(view,tpath)
                       path <- iterToPath(view,p.iter)
                       
                       sel <- view$getSelection()
                       out <- sel$getSelectedRows()
                       if(length(out) == 0) return(c()) # nothing
                       tmp <- c()
                       for(i in out$retval) {  # multiple selections
                         iter <- out$model$getIter(i)$iter
                         tmp <- c(tmp,out$model$getValue(iter,0)$value)
                       }
                       ## INSERT FUNCTION HERE
                       print(path)
                       print(tmp)
                     })


###################################################
### chunk number 14: 
###################################################


## how to insert into tree store, above shows how to remove
## append, prepend, insert methods
## how to refresh? delete, then reload?


## add drag and drop from the tree

## include other widget



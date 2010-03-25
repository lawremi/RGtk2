###################################################
### chunk number 1: 
###################################################
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 2: 
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
### chunk number 3: 
###################################################
tpathToPIter <- function(view,tpath) {
  ## view$GetModel -- sstore, again store
  sstore <- view$GetModel(); store <- sstore$GetModel()
  uspath <- sstore$ConvertPathToChildPath(tpath)
  p.iter <- store$GetIter(uspath)$iter
  return(p.iter)
}


###################################################
### chunk number 4: 
###################################################
## convert from iter to path
iterToPath <- function(view,iter) {
  sstore <- view$GetModel(); store <- sstore$GetModel()
  ## get path from iter
  string <- store$GetPath(iter)$ToString()
  indices = unlist(strsplit(string,":"))
  thePath <- c()
  for(i in 1:length(indices)) {
    path <- paste(indices[1:i],collapse=":")
    iter <- store$GetIterFromString(path)$iter
    thePath[i] <- store$GetValue(iter,0)$value
  }
  return(thePath[-1])
}


###################################################
### chunk number 5: 
###################################################
## set up store with sorting and view
## sort by clicking on column headers
store = gtkTreeStoreNew(rep("gchararray",2))
sstore = gtkTreeModelSortNewWithModel(store)
view = gtkTreeViewNewWithModel(sstore)


###################################################
### chunk number 6: 
###################################################
iter <- store$Append(parent=NULL)$iter
store$SetValue(iter,column=0,"GlobalEnv")
store$SetValue(iter,column=1,"")
store$Append(parent=iter)


###################################################
### chunk number 7: 
###################################################
view$SetSearchColumn(0)
## multiple
sel = view$GetSelection()
sel$SetMode(GtkSelectionMode["multiple"])


###################################################
### chunk number 8: 
###################################################
## add two cell renderers -- 1 for name, 1 for type
nms <- c("Variable name","type")
for(i in 1:2) {
  cr <- gtkCellRendererText()
  vc <- gtkTreeViewColumn()
  vc$SetSortColumnId(i-1) # allow sorting
  vc$SetResizable(TRUE)
  vc$SetTitle(nms[i])
  vc$PackStart(cr,TRUE)
  vc$AddAttribute(cr,"text",i-1)
  view$InsertColumn(vc, i-1)
}


###################################################
### chunk number 9: 
###################################################
sw <- gtkScrolledWindow()
sw$SetPolicy("GTK_POLICY_AUTOMATIC","GTK_POLICY_AUTOMATIC")
sw$Add(view)

w <- gtkWindow(); w$SetTitle("Tree view")
w$Add(sw)


###################################################
### chunk number 10: 
###################################################
## That will show the first row, but nothing will happen
## when we click on the expand row
## we need to add a signal to do so


## add children if we expand
connectSignal(view,signal="row-expanded",
              f = function(view, iter, tpath, ...) {
                p.iter <- tpathToPIter(view,tpath)
                path <- iterToPath(view,p.iter)
                children = getChildren(path)

                addChildren(store, children, parentIter=p.iter)
                ## remove errant 1st offspring. See addChildren
                ci <- store$IterChildren(p.iter)
                if(ci$retval) store$Remove(ci$iter)
              })



###################################################
### chunk number 11: 
###################################################
## add handler to remove children -- in case things change
connectSignal(view,signal="row-collapsed",
              f = function(view, iter, tpath, ...) {
                p.iter <- tpathToPIter(view,tpath)

                ## get children, remove
                n = store$IterNChildren(p.iter)
                if(n > 1) { ## n=1 gets removed when expanded
                  for(i in 1:(n-1)) {
                    child.iter = store$IterChildren(p.iter)
                    if(child.iter$retval)
                      store$Remove(child.iter$iter)
                  }
                }
              })


###################################################
### chunk number 12: 
###################################################
## double click handler
connectSignal(view,signal="row-activated",
              f = function(view, tpath, tcol) {
                p.iter <- tpathToPIter(view,tpath)
                path <- iterToPath(view,p.iter)

                sel <- view$GetSelection()
                out <- sel$GetSelectedRows()
                if(length(out) == 0) return(c()) # nothing
                tmp <- c()
                for(i in out$retval) {  # multiple selections
                  iter <- out$model$GetIter(i)$iter
                  tmp <- c(tmp,out$model$GetValue(iter,0)$value)
                }
                ## INSERT FUNCTION HERE
                print(path)
                print(tmp)
              })


###################################################
### chunk number 13: 
###################################################


## how to insert into tree store, above shows how to remove
## append, prepend, insert methods
## how to refresh? delete, then reload?


## add drag and drop from the tree

## include other widget



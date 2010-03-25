###################################################
### chunk number 1: 
###################################################
library(RGtk2)
## Populate a tree store from an R list by recursively calling some function


###################################################
### chunk number 2: 
###################################################
## populate from list with named components
gtkTreeStorePopulateFromList <- function(store, lst, noCols=1) {
  store$SetData("noCols",noCols)        # store for later use
  addToTree <- function(store,lst, iter) {
    for(i in names(lst)) {
      niter <- store$Append(parent=iter$iter)
      if(is.recursive(lst[[i]])) {
        store$SetValue(niter$iter, column = 0, i)
        addToTree(store, lst[[i]], niter)
      } else {
        store$SetValue(niter$iter, column = 0, i)
        for(j in 1:store$GetData("noCols"))
          store$SetValue(niter$iter, column = 1, lst[[i]][j])
      }
    }
  }
  ## call recursive function to walk down list.
  addToTree(store, lst, list(iter=NULL))
}


###################################################
### chunk number 3: 
###################################################
## return list from the tree.
## returns how we initialized gtkTreeStore
gtkTreeStoreToList <- function(store) {
  getChildren <- function(store, iter) {
    ## loop over iterNext, recurse if iterChildren
    l <- list(); n <- 0
    retval <- iter$retval
    while(retval) {                # loop over sibling
      name <- store$GetValue(iter$iter,0)$value
      citer <- store$IterChildren(iter$iter)
      if(citer$retval) {                # recurse if has child
        l[[name]] <- getChildren(store,citer)
      } else {
        val <- sapply(1:store$GetData("noCols"),
                      function(i) store$GetValue(iter$iter,i)$value)
        l[[name]] <- val
      }
      retval <- store$IterNext(iter$iter)  # updates iter, returns FALSE if none
    }
    return(l)
  }
  ## start it off
  getChildren(store,store$GetIterFirst())
}


###################################################
### chunk number 4: 
###################################################
gtkTreeStoreMakeView <- function(store, search.col=0) {
## create a tree view. Allow searching, drag-and-drop reordering 
  view = gtkTreeViewNewWithModel(store)
  view$SetHeadersClickable(TRUE)        # used with sorting
  view$SetReorderable(TRUE)             # drag and drop reordering
  store$SetData("view",view)            # to get later
  
  view$SetSearchColumn(search.col)
  ## multiple
  sel = view$GetSelection()
  sel$SetMode(GtkSelectionMode["multiple"])
  ## add two cell renderers -- 1 for name, 1 for type
  n <- store$GetData("noCols")
  for(i in 1:(n+1)) {
    nms <- c("name",rep("value",n))
    cr <- gtkCellRendererText()
    vc <- gtkTreeViewColumn()
    vc$SetSortColumnId(i-1)             # allow sorting
    vc$SetResizable(TRUE)               # adjust column width
    vc$SetTitle(nms[i])                 # name of column
    vc$PackStart(cr,TRUE)               # add cellrenderer
    vc$AddAttribute(cr,"text",i-1)      # get text from i-1 col of store
    view$InsertColumn(vc, i-1)          # put column into i-1 col or view
  }
  
  return(view)
}


###################################################
### chunk number 5: 
###################################################
## Try it out. Here is a list
lst = list(
  a=list(
    b=1,
    c=2,
    d=list(
      e=list(f=1)
      )
    ),
  g=2
  )


## Set up store, here we have a character for a name, the values
types <- c("gchararray")
store <- gtkTreeStore(types)
iter <- store$Append(parent=NULL)
store$SetValue(iter$iter, column=0,"statistical")
niter <- store$Append(parent= iter$iter)
for(i in 


store$PopulateFromList(lst, noCols = length(types) - 1)
view <- store$MakeView()


###################################################
### chunk number 6: 
###################################################
sw <- gtkScrolledWindow()             # scrollwindow for view
sw$SetPolicy("GTK_POLICY_AUTOMATIC","GTK_POLICY_AUTOMATIC")
sw$Add(view)

w <- gtkWindow(); w$SetTitle("Tree view example")
w$Add(sw)


###################################################
### chunk number 7: 
###################################################
## what is there
store$ToList()



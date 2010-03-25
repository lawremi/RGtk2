###################################################
### chunk number 1: 
###################################################
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
library(lattice)
w <- gtkWindow(); w$SetTitle("Histogram bin selection")

slider <- gtkHScaleNewWithRange(1, 100, 1) # min, max, step
slider['value-pos'] <- "bottom"
w$Add(slider)

## initial graphic
x <- rnorm(100)
print(histogram(x), nint = slider$GetValue())
ID <- gSignalConnect(slider,"value-changed",
               f = function(w, ...) {
                 val <- w$GetValue()
                 print(histogram(x, nint=val))
               })


###################################################
### chunk number 3: 
###################################################
w <- gtkWindow(); w$SetTitle("Scrolled window example")
b <- gtkButton("Resize window to\n\n\n see scroll bars")
## Add to scrolled window
sw <- gtkScrolledWindow()
sw$SetPolicy("automatic","automatic")
sw$AddWithViewport(b)                   # not text, tree, etc
w$Add(sw)


###################################################
### chunk number 4: 
###################################################
lstore <- gtkListStore("gchararray")
iter <- lstore$Append()
if(is.null(iter$retval)) lstore$SetValue(iter$iter,0,"fred")
iter <- lstore$Append()        # next in list
if(is.null(iter$retval)) lstore$SetValue(iter$iter,column=0,value="barney")
## what was set
lstore$GetValue(iter$iter, column = 0)
## Try to get non existent path
iter <- lstore$GetIterFromString("10")
iter$retval                             # FALSE


###################################################
### chunk number 5: 
###################################################
tstore <- gtkTreeStore("gchararray")
iter <- tstore$Append()
if(is.null(iter$retval)) tstore$SetValue(iter$iter,column=0, value="0")
## make child
iter <- tstore$Append(parent=iter$iter)
if(is.null(iter$retval)) tstore$SetValue(iter$iter,column=0, value="0:0")
iter <- tstore$Append()
if(is.null(iter$retval)) tstore$SetValue(iter$iter,column=0, value="1")
## retrieve
iter <- tstore$GetIterFromString("0:0")
tstore$GetValue(iter$iter,column=0) ## gets 1st child of 1st child or root


###################################################
### chunk number 6: 
###################################################
view <- gtkTreeView()                   # imaging a model
vc <- gtkTreeViewColumn()
vc$SetTitle("Column 1")                 # sets title
vc$SetResizable(TRUE)                   # allow resizing of columns
cr <- gtkCellRendererText()
vc$PackStart(cell=cr, expand=TRUE)      # add cell renderer to column
## adjust attributes of the column
vc$AddAttribute(cr, "text", 0)          # text is in first col. of model
cr['family'] <- "Helvetica"             # font family for whole column
cr['background'] <- "goldenrod"         # background color for column

view$InsertColumn(vc, 0)                # first column in tree view


###################################################
### chunk number 7: 
###################################################
## Example of combo box for colors

library(grid)
library(RGtk2)


###################################################
### chunk number 8: 
###################################################
makePixbufFromColor <- function(color) {
  filename <- tempfile()
  png(file=filename, width=25,height=10)
  grid.newpage()
  grid.draw(rectGrob(gp = gpar(fill = color)))
  dev.off()
  image <- gdkPixbufNewFromFile(filename)
  unlink(filename)
  return(image$retval)
}


###################################################
### chunk number 9: 
###################################################
store <- gtkListStore(c("GObject","gchararray"))


###################################################
### chunk number 10: 
###################################################
theColors <- palette()
for(i in theColors) {
  iter <- store$Append()
  store$SetValue(iter$iter,0, makePixbufFromColor(i))
  store$SetValue(iter$iter,1, i)
}


###################################################
### chunk number 11: 
###################################################
## now view combobox
combobox <- gtkComboBox(model=store)
## two cellrenderers. Icon first, then text
crp <- gtkCellRendererPixbuf(); crp['xalign'] <- 0
combobox$PackStart(crp, expand=FALSE)                 # icon first
combobox$AddAttribute(crp, "pixbuf", 0)
crt <- gtkCellRendererText(); 
crt['xpad'] <- 5                        # give some space
combobox$PackStart(crt)
combobox$AddAttribute(crt, "text", 1)


###################################################
### chunk number 12: 
###################################################
## display in a window
win <- gtkWindow();win$SetTitle("Color test")
win$Add(combobox)


###################################################
### chunk number 13: 
###################################################
gSignalConnect(combobox, "changed",
              f = function(cb, data) {
                store <- cb$GetModel()
                iter <- cb$GetActiveIter()
                if(iter$retval) {
                  val <- store$GetValue(iter$iter,1)$value 
                  print(val)
                }
                return(TRUE)
                
              })


###################################################
### chunk number 14: 
###################################################
comboentry <- gtkComboBoxEntryNewWithModel(store, text.column = 1)


###################################################
### chunk number 15: 
###################################################
crp <- gtkCellRendererPixbuf(); crp['xalign'] <- 0
comboentry$PackStart(crp, expand=FALSE)                 # icon first
comboentry$AddAttribute(crp, "pixbuf", 0)


###################################################
### chunk number 16: 
###################################################
comboentry$Show()


###################################################
### chunk number 17: 
###################################################
win <- gtkWindow();win$SetTitle("Combo box with entry")
win$Add(comboentry)


###################################################
### chunk number 18: 
###################################################
## ## "changed" -- each keystroke
## need both
gSignalConnect(comboentry, "changed",
               f = function(cb, data) {
                 if(cb$GetActive() != -1)
                   print(cb$GetChild()$GetText())
                 return(TRUE)
               })
## just enter will call handler. Widget is gtkEntry instance
gSignalConnect(comboentry$GetChild(), "activate",
              f = function(w, data) {
                  print(w$GetText())
                return(TRUE)
              })



###################################################
### chunk number 19: 
###################################################
require(RGtk2)


###################################################
### chunk number 20: 
###################################################
words <- names(mtcars)                  # for data frame values
store <- gtkListStore(c("gchararray"))

for(i in words) {
  iter <- store$Append()
  store$SetValue(iter$iter, column=0, value=i)
}


###################################################
### chunk number 21: 
###################################################
entry <- gtkEntry()
completion = gtkEntryCompletionNew()


###################################################
### chunk number 22: 
###################################################
completion$SetModel(store)
completion$SetTextColumn(0)             # which column in model
completion['inline-completion'] <- TRUE # inline with text edit
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 23: 
###################################################
entry$SetCompletion(completion)


###################################################
### chunk number 24: 
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
### chunk number 25: 
###################################################
w <- gtkWindow(); w$SetTitle("Test of entry completion")
w$Add(entry)


###################################################
### chunk number 26: 
###################################################
library(RGtk2)
## Populate a tree store from an R list by recursively calling some function


###################################################
### chunk number 27: 
###################################################
## populate from list with named components
gtkTreeStorePopulateFromList <- function(store, lst, noCols=1) {
  store$SetData("noCols",noCols)        # store for later use
  addToTree <- function(store,lst, iter) {
    for(i in names(lst)) {
      niter <- store$Append(parent=iter$iter)
      if(is.recursive(lst[[i]])) {
        store$SetValue(niter$iter, column = 0, i)
        addToTree(store, lst[[i]], niter$iter)
      } else {
        store$SetValue(niter$iter, column = 0, i)
        for(j in 1:store$GetData("noCols"))
          store$SetValue(niter$iter, column = 1, lst[[i]][j])
      }
    }
  }
  ## call recursive function to walk down list.
  addToTree(store, lst, NULL)
}


###################################################
### chunk number 28: 
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
### chunk number 29: 
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
### chunk number 30: 
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
types <- c("gchararray","gchararray")
store <- gtkTreeStore(types)
store$PopulateFromList(lst, noCols = length(types) - 1)
view <- store$MakeView()


###################################################
### chunk number 31: 
###################################################
sw <- gtkScrolledWindow()             # scrollwindow for view
sw$SetPolicy("GTK_POLICY_AUTOMATIC","GTK_POLICY_AUTOMATIC")
sw$Add(view)

w <- gtkWindow(); w$SetTitle("Tree view example")
w$Add(sw)


###################################################
### chunk number 32: 
###################################################
## what is there
store$ToList()


###################################################
### chunk number 33: 
###################################################
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 34: 
###################################################
## list children of the path.
## returns rows with name, type, hasChildren -- latter to indicate
## if an expanding icon should be present

## a path is pieces of a name
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
### chunk number 35: 
###################################################
## function to add children to the tree store
## if parentIter is NULL, adds to base.
## here children given by addChildren
addChildren <- function(store,children, parentIter=NULL) {
  
  if(nrow(children) == 0) return(NULL)
  for(i in 1:nrow(children)) {
    iter <- store$Append(parent=parentIter)$iter
    ## use last column to indicate logical
    sapply(1:(ncol(children)-1),function(j)              
           store$SetValue(iter,column=j-1,children[i,j]))
    ## add Branch.
    ## no better way, as this adds an extra blank line
    ## we remove later.
    if(children[i,ncol(children)])
      store$Append(parent=iter)
  }
}


###################################################
### chunk number 36: 
###################################################
## get parent iter for a tree path
tpathToPIter <- function(view,tpath) {
  ## view$GetModel -- sstore, again store
  sstore <- view$GetModel(); store <- sstore$GetModel()
  uspath <- sstore$ConvertPathToChildPath(tpath)
  p.iter <- store$GetIter(uspath)$iter
  return(p.iter)
}


###################################################
### chunk number 37: 
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
### chunk number 38: 
###################################################
## set up store with sorting and view
## sort by clicking on column headers
store = gtkTreeStoreNew(rep("gchararray",2))
sstore = gtkTreeModelSortNewWithModel(store)
view = gtkTreeViewNewWithModel(sstore)


###################################################
### chunk number 39: 
###################################################
## initially populate with just a single entry
iter <- store$Append(parent=NULL)$iter
store$SetValue(iter,column=0,"GlobalEnv")
store$SetValue(iter,column=1,"")
store$Append(parent=iter)
### How to expand the first entry
### wxWidgets has setItemHasChildren


###################################################
### chunk number 40: 
###################################################
view$SetSearchColumn(0)
## multiple
sel = view$GetSelection()
sel$SetMode(GtkSelectionMode["multiple"])


###################################################
### chunk number 41: 
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
### chunk number 42: 
###################################################
sw <- gtkScrolledWindow()
sw$SetPolicy("GTK_POLICY_AUTOMATIC","GTK_POLICY_AUTOMATIC")
sw$Add(view)

w <- gtkWindow(); w$SetTitle("Tree view")
w$Add(sw)


###################################################
### chunk number 43: 
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
### chunk number 44: 
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
### chunk number 45: 
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
### chunk number 46: 
###################################################
## how to insert into tree store, above shows how to remove
## append, prepend, insert methods
## how to refresh? delete, then reload?


## add drag and drop from the tree

## include other widget


###################################################
### chunk number 47: 
###################################################
library(RGtk2)


###################################################
### chunk number 48: 
###################################################
## example to show a data frame with optional editing
## add in rownames option

## Add to the gtkTreeView API some convenience functions

## add a column to the tree view with type
gtkTreeViewAddColumnWithType <-
  function(view,
           type=c("numeric","integer","character","logical","factor","icon"),
           viewCol, storeCol, name="", editable=TRUE) {
    type = match.arg(type)

    ## define the cell renderer
    cr <- switch(type,
                 "icon" = gtkCellRendererPixbuf(),
                 "logical" = gtkCellRendererToggle(),
                 "factor" = gtkCellRendererCombo(),
                 gtkCellRendererText())
    ## the new column we will add
    vc <- gtkTreeViewColumn()
    vc$PackStart(cr, TRUE)
    vc$SetTitle(name)
    vc$SetResizable(TRUE)
    if(type != "icon") vc$SetClickable(TRUE)
    view$InsertColumn(vc, viewCol - 1)
    ## add attributes
    switch(type,
           "logical"= vc$AddAttribute(cr, "active",storeCol - 1),
           "icon" = vc$AddAttribute(cr, "stock-id",storeCol -1),
           vc$AddAttribute(cr, "text",storeCol - 1)
           )
    if(type=="numeric") cr['xalign'] <- 1

    ## add in editable
    if(!editable || type == "icon") return()
    switch(type,
           "logical"=cr["activatable"] <- TRUE,
           cr["editable"] <- TRUE)
    
    if(type == "factor") {              # combobox needs a data store
      cstore <- gtkListStore("gchararray")     
      for(i in as.character(unique(view$GetRGtkDataFrame()[,storeCol]))) {
        iter <- cstore$Append()
        cstore$SetValue(iter$iter,column=0, i)
      }
      cr['model'] <- cstore
      cr['text-column'] <- 0        
    }

    ## basic call back, not logical though (no newValue)
    callBack <- function(cell, path, arg3, ...) {
      if(nargs() == 3) {
        userData <- arg3; newValue <- NA
      } else {
        newValue <- arg3; userData = ..1
      }
      store = userData$view$GetRGtkDataFrame()
      ## get row number
      if(!is.null(view$GetData("doVisible"))) {
        theVisible <- which(store[,1])
        i <- theVisible[as.numeric(path) + 1]
      } else {
        i <- as.numeric(path) + 1
      }

      newValue <- try(switch(userData$type,
                             "integer" = as.integer(as.numeric(newValue)),
                             "character" = as.character(newValue),
                             "numeric" = as.numeric(newValue),
                             "factor"  = as.character(newValue),
                             "logical" =  !store[i,userData$column]),
                      silent=TRUE)
      if(inherits(newValue,"try-error")) newValue <- NA
      
      store[i,userData$column] <- newValue
    }
    
    
    QT <- connectSignal(cr, signal = if(type =="logical") "toggled" else "edited",
                        f = callBack, ##if(type=="logical") callBackLogical else callBack,
                        data = list(view=view,type=type,column=storeCol))
  }


###################################################
### chunk number 49: 
###################################################
## This adds the tree view columns from the data store using
## the type. If visible=TRUE, then we assume the first column contains
## the visible information.
gtkTreeViewAddColumnsFromModel <-
  function(view,editable=TRUE, doVisible=view$GetData("doVisible")) {
    doVisible <- if(is.null(doVisible)) FALSE else as.logical(doVisible)

    if(doVisible && !is.logical(view$GetRGtkDataFrame()[,1])) {
      cat(gettext("If doVisible, first column must be a logical variable"))
      doVisible <- FALSE
    }
    
    dataf <- as.data.frame(view$GetRGtkDataFrame())
    editable <- rep(editable, length=ncol(dataf)) # recycle
    nms <- names(dataf)

    ncols <- ncol(dataf) - doVisible
    for(j in 1:ncols) {
      type = class(dataf[,j + doVisible])[1]
      view$AddColumnWithType(type,viewCol=j,storeCol=j + doVisible,
                             if(type=="icon") "" else nms[j + doVisible],
                             editable=editable[j])
    }
  }


###################################################
### chunk number 50: 
###################################################
gtkTreeViewClearAllColumns <- function(view) {
  l <- view$GetColumns()
  if(length(l) > 0) sapply(l, function(col) view$RemoveColumn(col))
}


###################################################
### chunk number 51: 
###################################################
gtkTreeViewSwitchModel <- function(view, newData) {
  if(!inherits(newData,"RGtkDataFrame"))
    newData <- try(rGtkDataFrame(newData), silent=TRUE)
  if(inherits(newData, "try-error")) 
    stop(gettext("newData is either a data frame or RGtkDataFrame"))
  
  view$ClearAllColumns()
  view['model'] <- newData
  view$AddColumnsFromModel(editable=TRUE, doVisible=view$GetData("doVisible"))
}


###################################################
### chunk number 52: 
###################################################
## newColumn, newRow are functions to call
## with view, row, col
gtkTreeViewAddKeyNavigations <- function(view, newColumn=NULL, newRow=NULL) {
  ## keyMotionHandler
  connectSignal(view,"key-release-event",
                f = function(view, event, userData,...) {
                  newColumn = userData$newColumn; newRow = userData$newRow
                  
                  keyval = event$GetKeyval()
                  cursor = view$GetCursor()
                  ## i,j are current positions,
                  i = as.numeric(cursor$path$ToString()) + 1
                  vc = cursor[['focus.column']] ## might be focus_column!!
                  j = which(sapply(view$GetColumns(), function(i) i == vc))
                  d = dim(view$GetRGtkDataFrame())
                  
                  setCursorAtCell <- function(view, i, j, edit=TRUE) {
                    path <- gtkTreePathNewFromString(i-1)
                    vc <- view$GetColumn(j - 1)
                    view$SetCursor(path=path, focus.column=vc, start.editing=edit)
                  }
                  
                  if(keyval == GDK_Return) {
                    ## what do do with return?
                  } else if(keyval == GDK_Up) {
                    setCursorAtCell(view,max(1, i - 1), j)
                  } else if(keyval == GDK_Down) {
                    if(i == d[1]) {
                      if(!is.null(newRow)) match.fun(newRow)(view, i, j)
                    } else {
                      setCursorAtCell(view,i + 1, j)
                    }
                  } else if(keyval == GDK_Tab) {
                    if(j == d[2]) {
                      if(!is.null(newColumn)) match.fun(newColumn)(view, i, j)
                    } else
                    setCursorAtCell(view,i, j + 1)
                  }
                },
                data=list(view = view,newRow=newRow, newColumn=newColumn)
                )

}  


###################################################
### chunk number 53: 
###################################################
gtkTreeViewGetRGtkDataFrame <- function(view) {
  model <- view$GetModel()
  if(inherits(model,"GtkTreeModelFilter"))
    model <- model$GetModel()

  if(inherits(model,"RGtkDataFrame"))
    return(model)
  else
    return(NULL)
}


###################################################
### chunk number 54: 
###################################################
## ### Test it




## ## How to add in icons
## icons = c("gtk-ok","gtk-stop","gtk-quit","gtk-save")
## class(icons) <- c("icon","character")

## dataf = data.frame(
##   visible = c(TRUE,TRUE,FALSE, TRUE),
##   icons = icons,
##   logical= sample(c(TRUE,FALSE),4,TRUE),
##   integer = 1:4,
##   numeric = rnorm(4),
##   character = letters[1:4],
##   factor = factor(c("a","b","a","b")),
##   stringsAsFactors = FALSE
##   )







## store = rGtkDataFrame(dataf)
## store1 <-  rGtkDataFrame(dataf[1:2,1:4]) ## loses icons

## nms <- names(dataf)

## doVisible <- TRUE
## if(exists("doVisible") && doVisible == TRUE) {
##   filtered.store <- store$FilterNew()
##   filtered.store$SetVisibleColumn(0)
##   view <- gtkTreeView(filtered.store)
##   view$SetData("doVisible",TRUE)        # filter by first row
## } else {
##   view <- gtkTreeView(store)
## }


## view$AddColumnsFromModel()
## view$AddKeyNavigations()

## ##
## sw <- gtkScrolledWindow()
## sw$SetPolicy("GTK_POLICY_AUTOMATIC","GTK_POLICY_AUTOMATIC")
## sw$Add(view)

## w <- gtkWindow(); w$SetTitle("ex-df-take-2")
## w$Add(sw)



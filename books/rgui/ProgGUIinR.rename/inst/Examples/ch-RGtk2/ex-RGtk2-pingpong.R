###################################################
### chunk number 1: 
###################################################
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
library(MASS)
df <- data.frame(names=names(Cars93),  
                 icons=sapply(Cars93, function(i) {
                   switch(class(i)[1],
                          "factor"="gtk-ok", # some icons
                          "gtk-cancel") 
                   }),
                 stringsAsFactors=FALSE)


###################################################
### chunk number 3: 
###################################################
lSide <- new.env()
lSide$ind <- 1:nrow(df)
lSide$rdf <- rGtkDataFrame(df[lSide$ind, ])
lSide$view <- gtkTreeView(lSide$rdf)
sel <- lSide$view$GetSelection()
sel$setMode(GtkSelectionMode["multiple"])   # multiple selection
lSide$button <- gtkButton(">")


###################################################
### chunk number 4: 
###################################################
## not shown
rSide <- new.env()
rSide$ind <- c()
rSide$rdf <- rGtkDataFrame(df[rSide$ind, ])
rSide$view <- gtkTreeView(rSide$rdf)
sel <- rSide$view$getSelection()
sel$setMode(GtkSelectionMode["multiple"])
rSide$button <- gtkButton("<")


###################################################
### chunk number 5: 
###################################################
gtkTreeViewAddColumnWithType <- function(view,
                                         name="",
                                         type=c("rowname","numeric","integer","character",
                                           "logical","factor","icon"),
                                         viewCol,                     # 1-based column of view
                                         storeCol                     # 1-based column for rGtkDataFrame
                                         ) {
  
  type = match.arg(type)
  
  ## define the cell renderer
  cr <- switch(type,
               "logical" = gtkCellRendererToggle(),
               "factor" = gtkCellRendererCombo(),
               "icon" = gtkCellRendererPixbuf(),
               gtkCellRendererText())
  
  ## the new column we will add
  vc <- gtkTreeViewColumn()
  vc$packStart(cr, TRUE)
  vc$setTitle(name)
  vc$setResizable(TRUE);
  vc$setClickable(TRUE)
  view$insertColumn(vc, viewCol - 1)  # viewCol is 1-based
  
  ## add attributes
  switch(type,
         "logical" =  vc$addAttribute(cr, "active", storeCol - 1),
         "icon" =  vc$addAttribute(cr, "stock-id", 1),
         vc$addAttribute(cr, "text",storeCol - 1)
         )
  if(type == "numeric")
    cr['xalign'] <- 1

  
  if(type == "factor") {              # combobox needs a data store
    cstore <- gtkListStore("gchararray")
    rGtkstore <- view$getModel()
    vals <- rGtkstore[, storeCol, drop=TRUE]
    for(i in as.character(unique(vals))) {
      iter <- cstore$append()
      cstore$setValue(iter$iter,column=0, i)
    }
    cr['model'] <- cstore
    cr['text-column'] <- 0        
  }
  

##   ## set editable/activatable property
##   switch(type,
##          "logical" = cr["activatable"] <- TRUE,
##          "icon" = NULL,
##          cr["editable"] <- TRUE)
  
  
  ## connect callback to edited/toggled signal
##   QT <- gSignalConnect(cr, signal =
##                        if(type != "logical") "edited" else "toggled",
##                        f = editCallBack, 
##                        data = list(view=view,type=type,column=storeCol))
}


###################################################
### chunk number 6: 
###################################################
gtkTreeViewAddKeyNavigations <- function(view) {
  ## keyMotionHandler example.
  connectSignal(view,"key-release-event",
                f = function(view, event, userData,...) {
                  
                  keyval = event$getKeyval()
                  cursor = view$getCursor()
                  ## i,j are current positions,
                  i = as.numeric(cursor$path$toString()) + 1
                  vc = cursor[['focus.column']] ## might be focus_column!!
                  j = which(sapply(view$getColumns(), function(i) i == vc))
                  d = dim(view$getModel()) # rGtkStore method
                  
                  setCursorAtCell <- function(view, i, j) {
                    path <- gtkTreePathNewFromString(i-1)
                    vc <- view$getColumn(j - 1)
                    view$setCursor(path=path, focus.column=vc, start.editing=edit)
                  }
                  
                  if(keyval == GDK_Return) {
                    ## what do do with return?
                  } else if(keyval == GDK_Up) {
                    setCursorAtCell(view,max(1, i - 1), j)
                  } else if(keyval == GDK_Down) {
                    if(i < d[1]) 
                      setCursorAtCell(view,i + 1, j)
                  } else if(keyval == GDK_Tab) {
                    if(j < d[2]) 
                      setCursorAtCell(view,i, j + 1)
                  }
                },
                data=list(view = view)
                )

}


###################################################
### chunk number 7: 
###################################################
gtkTreeViewGetSelectedIndices <- function(view) {
  l <- view$getSelection()$getSelectedRows()
  selection <- l$retval
  store <- l$model
  
  if(length(selection) == 0)
    return(c())

  ind <- sapply(selection, function(sel) {
    as.numeric(sel$toString()) + 1 # 0-based
  })

  return(ind)

}


###################################################
### chunk number 8: 
###################################################
  ## add columns
lSide$view$addColumnWithType(name="icon", "icon", viewCol=1, storeCol = 2)
lSide$view$addColumnWithType(name="names", "character", viewCol=2, storeCol = 1)


rSide$view$addColumnWithType(name="icon", "icon", viewCol=1, storeCol = 2)
rSide$view$addColumnWithType(name="names", "character", viewCol=2, storeCol = 1)



###################################################
### chunk number 9: 
###################################################
  ## main function to update indices
moveSelectedIndices <- function(side1, side2) {
  inds <- side1$view$getSelectedIndices()
  if(length(inds)) {
    ind1 <- side1$ind
    tmp <- ind1[inds]
    side1$ind <- sort(setdiff(side1$ind, tmp))
    side2$ind <- sort(c(side2$ind, tmp))
  }
}


###################################################
### chunk number 10: 
###################################################
  ## update the data stores after change in indices
updateViews <- function(side1, side2) {
  sapply(list(side1, side2), function(side) {
    side$rdf <- rGtkDataFrame(df[side$ind, ])
    side$view$setModel(side$rdf)
  })
}


###################################################
### chunk number 11: 
###################################################
  ## update sensitivity of arrows after updating stroes
updateButtons <- function(side1, side2) {
  sapply(list(side1, side2), function(side) {
    if(length(side$ind))
      side$button$setSensitive(TRUE)
    else
      side$button$setSensitive(FALSE)
  })
}


###################################################
### chunk number 12: 
###################################################
handler <- function(h,...) {
  moveSelectedIndices(h$side1, h$side2)
  updateViews(h$side1, h$side2)
  updateButtons(h$side1, h$side2)
}


###################################################
### chunk number 13: 
###################################################
## somehandlers,, could also do doubleclick on valu in list, say
gSignalConnect(lSide$button, "clicked", f=handler,
               data=list(side1=lSide, side2=rSide),
               user.data.first=TRUE)


###################################################
### chunk number 14: 
###################################################
gSignalConnect(lSide$button, "clicked", f=handler,
               data=list(side1=rSide, side2=lSide),
               user.data.first=TRUE)


###################################################
### chunk number 15: 
###################################################
gSignalConnect(lSide$view, "key-release-event", f= function(h, w, e,...) {
 if(e$getKeyval() == GDK_Right) {
    handler(h)
  }
  return(TRUE)                  # events need a logical return values
},
data=list(side1=lSide, side2 = rSide),
               user.data.first=TRUE)


###################################################
### chunk number 16: 
###################################################
gSignalConnect(rSide$view, "key-release-event", f= function(h, w, e,...) {
  if(e$getKeyval() == GDK_Left) {
    handler(h)
  }
  return(TRUE)
},
               data=list(side1=rSide, side2 = lSide),
               user.data.first=TRUE)


###################################################
### chunk number 17: 
###################################################
TARGET.TYPE.TEXT <- 80
gtkDragSourceSet(lSide$view, 
                 GdkModifierType["button1-mask"] | GdkModifierType["button3-mask"],
                 list(text=gtkTargetEntry("text/plain", 0, TARGET.TYPE.TEXT)),
                 GdkDragAction["copy"])
gtkDragDestSet(rSide$view, 
                 "GTK_DEST_DEFAULT_ALL",
                 list(text=gtkTargetEntry("text/plain", 0, TARGET.TYPE.TEXT)),
                 GdkDragAction[c("copy")]
                 )
gSignalConnect(rSide$view, "drag-data-received", #f=handler,
               f = function(...) print("hi"),
               data=list(side1=lSide, side2=rSide),
               user.data.first=TRUE)


###################################################
### chunk number 18: 
###################################################
## Make GUI
w <- gtkWindow(show=FALSE)
g <- gtkHBox()
w$add(g)

sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$addWithViewport(lSide$view)     
g$packStart(sw, expand=TRUE, fill=TRUE)

bg <- gtkVBox()
g$packStart(bg, expand=FALSE)
bg$packStart(lSide$button)
bg$packStart(rSide$button)

sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$addWithViewport(rSide$view)     
g$packStart(sw, expand=TRUE, fill=TRUE)

w$setDefaultSize(400,400)
w$showAll()

updateButtons(lSide, rSide)



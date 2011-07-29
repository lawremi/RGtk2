###################################################
### chunk number 1: 
###################################################
#line 3 "ex-RGtk2-rGtkDataFrame.Rnw"
library(RGtk2)


###################################################
### chunk number 2: callBackEdit
###################################################
#line 17 "ex-RGtk2-rGtkDataFrame.Rnw"
editCallBack <- function(cell, path, arg3, ...) {
  if(nargs() == 3) {
    userData <- arg3; newValue <- NA    # no newValue (toggle)
  } else {
    newValue <- arg3; userData = ..1    # ..1 is first component of ...
  }
  rGtkStore <- userData$view$getModel() 
  i <- as.numeric(path) + 1
  j <- userData$column
  newValue <- try(switch(userData$type,
                         "integer" = as.integer(as.numeric(newValue)),
                         "character" = as.character(newValue),
                         "numeric" = as.numeric(newValue),
                         "factor"  = as.character(newValue),
                         "logical" =  !as.logical(rGtkStore[i,j])),
                  silent=TRUE)
  
  if(inherits(newValue,"try-error")) {
    sprintf("Failed to coerce new value to type %s",userData$type)
    return(FALSE)
  }
  
  if(userData$type == "factor") {
    curLevels <- levels(rGtkStore[,j])
    if(! newValue %in% curLevels) {
      cat(gettext("Can't add level to a factor."))
      return(FALSE)
    }
  }
  
  rGtkStore[i,j] <- newValue            # assign value
  return(FALSE)
}


###################################################
### chunk number 3: AddColumnWithType
###################################################
#line 58 "ex-RGtk2-rGtkDataFrame.Rnw"
gtkTreeViewAddColumnWithType <-
  function(view,
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
                 gtkCellRendererText())
    
    ## the new column we will add
    vc <- gtkTreeViewColumn()
    vc$packStart(cr, TRUE)
    vc$setTitle(name)
    vc$setResizable(TRUE); vc$setClickable(TRUE)
    view$InsertColumn(vc, viewCol - 1)  # viewCol is 1-based
    
    ## add attributes
    switch(type,
           "logical" =  vc$addAttribute(cr, "active",storeCol - 1),
           vc$addAttribute(cr, "text",storeCol - 1)
           )
    if(type == "numeric") cr['xalign'] <- 1
    
    ## set editable/activatable property
    switch(type,
           "logical" = cr["activatable"] <- TRUE,
           cr["editable"] <- TRUE)
    
    if(type == "factor") {              # combo box needs a data store
      cstore <- gtkListStore("gchararray")
      rGtkstore <- view$getModel()
      vals <- rGtkstore[,storeCol, drop=TRUE]
      for(i in as.character(unique(vals))) {
        iter <- cstore$append()
        cstore$setValue(iter$iter,column=0, i)
      }
      cr['model'] <- cstore
      cr['text-column'] <- 0        
    }

    
    ## connect callback to edited/toggled signal
    QT <- gSignalConnect(cr, signal =
                         if(type != "logical") "edited" else "toggled",
                         f = editCallBack, 
                         data = list(view=view,type=type,column=storeCol))
  }


###################################################
### chunk number 4: keyNav
###################################################
#line 116 "ex-RGtk2-rGtkDataFrame.Rnw"
### -- bug with this when not editing
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
                    view$setCursor(path=path, focus.column=vc, start.editing=TRUE)
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
### chunk number 5: testIt
###################################################
#line 157 "ex-RGtk2-rGtkDataFrame.Rnw"
df = data.frame(
  logical = c(TRUE, TRUE, FALSE),
  character = c("one","two","three"),
  factor = factor(c("ctrl","trt1","trt2")),
  integer = 1:3,
  numeric = rnorm(3),
  stringsAsFactors=FALSE)


###################################################
### chunk number 6: 
###################################################
#line 167 "ex-RGtk2-rGtkDataFrame.Rnw"
store <- rGtkDataFrame(df)
view <- gtkTreeView(store)


###################################################
### chunk number 7: 
###################################################
#line 173 "ex-RGtk2-rGtkDataFrame.Rnw"
nms <- names(df)
QT <- sapply(1:ncol(df), function(i) {
  type <- class(df[,i])[1]
  view$addColumnWithType(name = nms[i], type, viewCol = i, storeCol = i)
  
})


###################################################
### chunk number 8: 
###################################################
#line 183 "ex-RGtk2-rGtkDataFrame.Rnw"
vc <- gtkTreeViewColumn()
newColNo <- view$insertColumn(vc, -1)           # -1 = end


###################################################
### chunk number 9: AddNavigations
###################################################
#line 189 "ex-RGtk2-rGtkDataFrame.Rnw"
ID <- view$addKeyNavigations()


###################################################
### chunk number 10: PackWidget
###################################################
#line 196 "ex-RGtk2-rGtkDataFrame.Rnw"
sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$add(view)

w <- gtkWindow(); w$setTitle("rGtkDataFrame example")
w$add(sw)



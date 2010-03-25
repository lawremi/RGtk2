
## methods for model
## return an rGtkDataFrame model for data frame
rGtk2ModelWithViews <- function(df) {
  if(!is.data.frame(df)) {
    df <- try(data.frame(df, stringsAsFactors=FALSE), silent=TRUE)
    if(inherits(df, "try-error")) {
      cat("Can not make into a data frame\n")
      return(NULL)
    }
  }
  
  model <- rGtkDataFrame(df)
  model$setData("views", list())

  ## Now make variableList
  ## For each variable we have a list with name, class, label, [levels], format_string, note
  nms <- names(df)
  variableList <- lapply(1:dim(df)[2], function(i) {
    list(name=nms[i],
         class=class(df[,i]),
         label=nms[i],
         levels = if(is.factor(df[,i])) levels else NULL,
         note = "",
         format_string = "",
         row.color = "")
  })
  model$setData("variableList", variableList)
         
  klass <- class(model)
  structure(model, class=c(klass[1], "RGtk2ModelWithViews", klass[-1]))
}
      



## list all views
rGtk2ModelWithViewsGetViews <- function(obj) obj$getData("views")

## add a new view for the model object
rGtk2ModelWithViewsAddNewView <- function(obj) {
  ## add a new View view to this model -- workhorse
  newView <- gtkTreeView(obj)
  newView$setData("model", obj)         # otherwise we lose class
  
  ## view properties
  newView$getSelection()$setMode("multiple")
  newView$setRubberBanding(TRUE)
  newView$setHeadersClickable(TRUE)

  ## add to list of views
  views <- obj$getData("views")
  views[[length(views)+1]] <- newView
  obj$setData("views", views)

  ## put in view columns, etc.
  addViewColumns(newView)
  return(newView)
}

## remove a view from the model object
rGtk2ModelWithViewsRemoveView <- function(obj, view) {
  allViews <- obj$getViews()
  ind <- which(sapply(allViews, function(i) i == view))
  if(any(ind))
    obj$setData("views", allViews[[-ind]])
}

##################################################
## methods to manipulate an object and its views

##################################################
# Column methods

## Add a variable
## add a new column. Col in 0:n, default is n. Vals or type optional-- not both
rGtk2ModelWithViewsAddVariable <- function(obj, values,  type, name="") {
  ## Append a new variable to model
  d <- dim(obj)
  if(missing(values) && missing(type)) {
    cat("need a values or type specification\n")
    return(FALSE)
  } else if(missing(type)) {
    type <- class(values)
  } else if(missing(values)) {
    values <- .ourAs(rep(NA, d[1]))
  }

  ## append a new variable to variable information
  variableList <- obj$getData("variableList")
  variableList[[d[2] + 1]] <-
    list(name=.valOrDefault(name, "Variable"),
         class = type,
         label = name,
         levels = if(is.factor(values)) levels(values) else NULL,
         note = "",
         format_string = "",
         row.color = "")
  obj$setData("variableList", variableList)
  
  ## update views
  sapply(obj$getViews(), function(view) {
    vc <- gtkTreeViewColumn()
    .addCellRenderer(values, d[2] + 1, vc, view)
  })
}

## get a variable
rGtk2ModelWithViewsGetVariable <- function(obj, col) {
  if(is.character(col)) 
    col <- obj$getColumnByName(col)
    
  obj[, col]
}

## set a variable - must be of the proper type
rGtk2ModelWithViewsSetVariable <- function(obj, col, values, name) {
  if(is.character(col))
    col <- obj$getColumnByName(col)
  obj[, col] <- values
  if(!missing(name))
    obj$setName(col, name)
}

## refresh column by replacing cell renderer
rGtk2ModelWithViewsRefreshColumn <- function(obj, col) {
  sapply(obj$getViews(), function(i) {
    vc <- view$getColumn(col-1)
    vals <- obj$getVariable(col)
    .addCellRenderer(vals, col, vc, view) # attributes
  })
}

## change levels for a factor to newLevels.
## The optional ind basically does levels(vals)[ind] <- newLevels
## involves update views. 
rGtk2ModelWithViewsChangeVariableLevels <- function(obj, col, newLevels, ind) {
  ## change levels of a factor ## XXX
  values <- obj$getVariable(col)
  if(is.factor(values)) {
    ## adjust frame in model
    frame <- obj[,]
    if(missing(ind))
      levels(values) <- newLevels
    else
      levels(values)[ind] <- newLevels
    frame[,col] <- values
    obj$setFrame(frame)
  }
  ## refresh views
  obj$refreshColumn(col)
}
##################################################
## row methods
## add row, row in 0:m, vals optionsal
rGtk2ModelWithViewsInsertCase <- function(obj, row, vals) {
  ## disconnect the model from the views
  allViews <- obj$getViews()
  sapply(allViews, function(view) view$setModel(NULL))
  ## now add the row to the data frame
  frame <- as.data.frame(obj)
  m <- dim(frame)[1]

  if(missing(row))
    row <- m + 1
  row <- as.integer(max(1, min(m + 1, row)))

  ## manipulate frame
  frame[m+1,] <- NA
  if(row <= m) 
    frame[(row+1):(m+1),] <- frame[row:m,]
  if(missing(vals))
    frame[row,] <- NA
  else
    frame[row,] <- vals
  obj$setFrame(frame)
  
  ## now reconnect
  sapply(allViews, function(view) view$setModel(obj))
  invisible()
}

rGtk2ModelWithViewsGetCase <- function(obj, row) {
  obj[row,]
}

## remove row, row in 1:m
rGtk2ModelWithViewsRemoveCase <- function(obj, row) {
  ## disconnect the model from the views
  allViews <- obj$getViews()
  sapply(allViews, function(view) view$setModel(NULL))
  ## now remove row from frame
  frame <- as.data.frame(obj)
  m <- nrow(frame)
  if(missing(row))
    return()
  row <- as.integer(min(m, max(1, row)))
  frame <- frame[-row,]
  obj$setFrame(frame)

  ## now reconnect
  sapply(allViews, function(view) view$setModel(obj))
  invisible()
}

## edit cell, specify values
rGtk2ModelWithViewsSetCell <- function(obj, row, col, val) {
  ## XXX insert undo info here
  if(missing(row) && missing(col))
    obj$setFrame(val)
  else if(missing(col))
    obj[row, ] <- val
  else if(missing(row))
    obj[,col] <- val
  else
    obj[row, col] <- val
}


## edit cell, specify values
rGtk2ModelWithViewsGetCell <- function(obj, row, col) {
  obj[row, col]
}
## get column name, attribute of model -- outside of rGtkDataFrame
rGtk2ModelWithViewsGetName <- function(obj, col) {
  variableList <- obj$getData("variableList")
  variableList[[col]]$name
}
rGtk2ModelWithViewsGetNames <- function(obj) {
  sapply(1:dim(obj)[2], function(i) obj$getName(i))
}
  
rGtk2ModelWithViewsSetName <- function(obj, col, name, unique=TRUE) {
  ## check for conflict -- expect unique names here
  nms <- obj$getNames()
  name <- tail(make.names(c(nms, name), unique=unique), 1)

  ## set name in variable list
  if(is.character(col))
    col <- obj$getColumnByName(col)
  variableList <- obj$getData("variableList")
  variableList[[col]]$name <- name
  
  obj$setData("variableList", variableList)  
  ## set name in GUI
  sapply(obj$getViews(), function(i) {
    vc <- i$getColumn(col - 1)
    l <- gtkLabel(name)
    vc$setWidget(l)
    ## can connect signals to vc$getData("header")
    vc$setData("header", l$getParent()$getParent()$getParent())
  })

  invisible()
}

## return column index from column name
rGtk2ModelWithViewsGetColumnByName <- function(obj, col) {
  which(col == obj$getNames())
}

## Description different than name, just a long one
rGtk2ModelWithViewsGetDescription <- function(obj, col, description) {}
rGtk2ModelWithViewsSetDescription <- function(obj, col) {}

## Sorting
## col can be a vector
rGtk2ModelWithViewsSortByColumn <- function(obj, cols, decreasing=FALSE) {
  if(is.character(cols))
    cols <- sapply(cols, function(i) obj$getColumnByName(i))
  frame <- obj[,]
  myorder <- function(...) order(..., decreasing=decreasing)
  ind <- do.call("myorder", frame[,cols, drop=FALSE])
  obj$setFrame(frame[ind,])
}

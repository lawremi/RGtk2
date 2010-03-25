  
## view columns is big issue

## Create cell renderers for different types
## We check for NA, NULL, NaN values
## generic for cell data func
## Handles NA, formats, .. Slower but better?
.valOrDefault <- function(x, default) if(is.null(x) || is.na(x)) default else x
.ourAs <- function(x, classes) {
  for(i in classes) {
    out <- try(as(x, i), silent=TRUE)
    if(!inherits(out, "try-error"))
      return(out)
  }
  return(NA)
}
.addCellRenderer <- function(vals, column, vc, view, editable=TRUE) UseMethod(".addCellRenderer")
.addCellRenderer.default <- function(vals, column, vc, view, editable=TRUE) {
  vc$clear()
  
  cr <- gtkCellRendererText()
  vc$packStart(cr)
  vc$SetCellDataFunc(cr, func=
                     function(vc, cr, model, iter, data) {
                       curVal <- model$getValue(iter, data - 1)$value
                       cr['text'] <- .valOrDefault(curVal, "")
                     },
                     func.data = column)
  ## edit
  if(editable) {
    cr['editable'] <- TRUE
    gSignalConnect(cr, "edited", function(cr, path, new.text, user.data) {
      model <- view$getData("model")
      row <- as.numeric(path) + 1
      model$setCell(row, column, new.text)
      downCell(view, row, column, start.editing=TRUE)
    })
  }
}

.addCellRederer.character <- .addCellRenderer.default
.addCellRenderer.integer <- function(vals, column, vc, view, editable=TRUE) {
  vc$clear()
  
  cr <- gtkCellRendererText()
  vc$packStart(cr)
  vc$SetCellDataFunc(cr, func=
                     function(vc, cr, model, iter, data) {
                       curVal <- model$getValue(iter, data - 1)$value
                       cr['text'] <- .valOrDefault(as.integer(curVal), "NA")
                     },
                     func.data = column)
  if(editable) {
    ## edit
    cr['editable'] <- TRUE
    gSignalConnect(cr, "edited", function(cr, path, new.text, user.data) {
      model <- view$getData("model")
      val <- .ourAs(new.text, "integer")
      row <- as.numeric(path) + 1
      model$setCell(row, column, val)
      downCell(view, row, column, start.editing=TRUE)
    })
  }
}

.addCellRenderer.numeric <- function(vals, column, vc, view, editable=TRUE) {
  vc$clear()
  
  cr <- gtkCellRendererText()
  vc$packStart(cr)
  fmt_string <- paste("%.",getOption("digits"),"f", sep="")
  vc$SetCellDataFunc(cr, func=
                     function(vc, cr, model, iter, data) {
                       curVal <- model$getValue(iter, data - 1)$value
                       cr['text'] <- .valOrDefault(sprintf(fmt_string, curVal), "NA")
                       cr['xalign'] <- 1
                     },
                     func.data = column)
  if(editable) {
    ## edit
    cr['editable'] <- TRUE
    gSignalConnect(cr, "edited", function(cr, path, new.text, user.data) {
      model <- view$getData("model")
      val <- .ourAs(new.text, "numeric")
      row <- as.numeric(path) + 1
      model$setCell(row, column, val)
      downCell(view, row, column, start.editing=TRUE)
    })
  }
}
.addCellRenderer.factor <- function(vals, column, vc, view, editable=TRUE) {
  vc$clear()
  
  cr <- gtkCellRendererCombo()
  cr['model'] <- rGtkDataFrame(sort(unique(vals)))
  cr['text-column'] <- 0
  vc$packStart(cr)
  vc$addAttribute(cr, "text", column - 1)


  ## Issue with this. When done editing, need to signal editing done
  if(editable) {
    ## edit
    cr['editable'] <- TRUE
    gSignalConnect(cr, "edited", function(cr, path, new.text, user.data) {
      model <- view$getData("model")
      row <- as.numeric(path) + 1
      model$setCell(row, column, new.text)
      downCell(view, row, column)
    })
  }
}

.addCellRenderer.logical <- function(vals, column, vc, view, editable=TRUE) {
  vc$clear()
  
  cr <- gtkCellRendererToggle()
  vc$packStart(cr)
  vc$addAttribute(cr, "active", column - 1)

  if(editable) {
    ## edit
    cr['activatable'] <- TRUE
    gSignalConnect(cr, "toggled", function(cr, path, user.data) {
      model <- view$getData("model")
      model$setCell(as.numeric(path) + 1, column, !model[as.numeric(path) + 1, column])
    })
  }
}

.addCellRenderer.stockid <- function(vals, column, vc, view, editable=TRUE) {
  vc$clear()
  
  cr <- gtkCellRendererPixbuf()
  vc$packStart(cr)
  vc$addAttribute(cr, "stock-id", column - 1)
}

###
## add intial view columns
addViewColumns <- function(view) {
  model <- view$getData("model")        # not getModel -- no methods for that

  classes <- model$getData("class")

  variableList <- model$getData("variableList")
  
  for(j in 1:dim(model)[2]) {
    vc <- gtkTreeViewColumn()
    varName <- variableList[[j]]$name
    view$InsertColumn(vc, j-1)
    if(!length(grep("^\\.", varName)))   { # set name unles .name
      model$setName(j, varName, unique=FALSE)
    }
    vals <- model[,j]
    class(vals) <- variableList[[j]]$class
    .addCellRenderer(vals, j, vc, view)
  }
  ## hack to make clickable
  gSignalConnect(view, "realize", function(w, data) w$setHeadersClickable(TRUE))
}  



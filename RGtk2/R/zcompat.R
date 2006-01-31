# wrappers for RGtk1 functions to RGtk2

# containers

gtkChildren <- gtkContainerGetChildren
gtkParent <- gtkWidgetGetParent

# gdk manuals

gdkGetWindowSize <- function(w) {
	geom <- gdkWindowGetGeometry(w)
	c(geom["width"], geom["height"])
}

# signals

gtkObjectSignalEmit <- gSignalEmit
gtkObjectGetSignals <- gObjectGetSignals
gtkTypeGetSignals <- gTypeGetSignals
gtkSignalGetInfo <- gSignalGetInfo


# args

gtkObjectGetArgInfo <- gObjectGetPropInfo
gtkObjectGetArgs <- gObjectGetProps
gtkObjectGetArg <- 
function(obj, argName) 
{
	props <- gObjectGetProps(obj, argName)
	if (!is.null(props))
		props <- props[[1]]
	props
}
gtkObjectSetArgs <- gObjectSetProps

# dnd

gtkTargetEntry <- gtkTargetEntryNew <- 
function(target, flags, info) as.GtkTargetEntry(list(target, flags, info))

# gtk text stuff ---- not supported!
gtkTextGetText <- function(w) gtkEditableGetChars(w, 0, -1)
gtkTextClearText <- function(w) gtkEditableDeleteText(w, 0, -1)
gtkTextSetText <- function(w, contents="", append=F) {
	if (append)
		pos <- nchar(gtkTextGetText(w))
	else {
		gtkTextClearText(w)
		pos <- 0
	}
	
	gtkEditableInsertText(w, contents, pos)
}

# reference counting - really shouldn't be used
gtkObjectRef <-
function(obj)
{
  gtkCheckInherits(obj, "GtkObject")  
 .GtkCall("S_g_object_ref", obj) 
}

gtkObjectUnref <-
function(obj)
{
  gtkCheckInherits(obj, "GtkObject")  
 .GtkCall("S_g_object_unref", obj) 
}

# this function should not be necessary in well-structured code

findWidgetByType <-
  #
  # Recursively search a widget tree for the first occurence of
  # a widget of the specified type.
  #
function(win, gtkType = "GtkMenuBar", verbose = FALSE)
{
 if(verbose)
   print(class(win))

 if(is.function(gtkType)) {
   if(gtkType(win))
     return(win)
 } else if(as.character(gtkType) %in% class(win)) {
     return(win)
 } 

 if("GtkContainer" %in% class(win)) {
  for(i in win$GetChildren()) {
   tmp <- findWidgetByType(i, gtkType, verbose = verbose)
   if(!is.null(tmp))
     return(tmp)
  }
 }
 
 return(NULL)
}

# CList convenience access - note that this widget is deprecated 

gtkCListGetText <-
function(w, row, cols, zeroBased = TRUE)
{
  checkPtrType(w, "GtkCList")

  if(missing(cols) && is.matrix(row) && ncol(row) == 2)
     which = row
  else
     which = cbind(row, cols)

  if(!zeroBased)
    which <- which - 1
  
  storage.mode(which) <- "integer"

  .Call("R_gtkCListGetText", w, as.integer(t(which)), PACKAGE = "RGtk2")
}


gtkCListSetText <-
function(w, row, cols, values, zeroBased = TRUE)
{
  checkPtrType(w, "GtkCList")  

  if(missing(cols) && is.matrix(row) && ncol(row) == 2)
     which = row
  else
     which = cbind(row, cols)

  if(!zeroBased)
    which <- which - 1
  
  storage.mode(which) <- "integer"

  values <- rep(as.character(values), length = nrow(which))
  
  invisible(.Call("R_gtkCListSetText", w, which, values, PACKAGE = "RGtk2"))
}

# types

gtkObjectGetTypeName <- gObjectTypeName
gtkObjectGetClasses <- gObjectGetClasses
gtkTypeGetClasses <- gTypeGetAncestors
gtkObjectGetType <- gObjectType
gtkGetType <- gTypeFromName

# widgets

gtkTopWindow <- 
function(title="My RGtk2 Window", show = TRUE)
{
	window <- gtkWindowNew("toplevel", show = show)
	window$setTitle(title)
	window
}
gtkAdd <-
function(parent, ...)
{
  widgets <- list(...)
  if(length(widgets) == 0)
    stop("No widgets to add to parent")

  if(!all(sapply(widgets, checkPtrType, "GtkWidget"))) {
    stop("Non widget objects passed to gtkAdd()")
  }

  sapply(widgets, function(widget) parent$add(widget))
}
gtkShow <- function(..., all=TRUE)
{
	widgets <- list(...)
	func <- gtkWidgetShow
	if (all)
		func <- gtkWidgetShowAll
	sapply(widgets, func)
}
gtkAddCallback <- gtkObjectAddCallback <- gSignalConnect
gtkObjectRemoveCallback <- gtkObjectDisconnectCallback <- gSignalHandlerDisconnect
gtkObjectBlockCallback <- gSignalHandlerBlock
gtkObjectUnblockCallback <- gSignalHandlerUnblock
gtkAddTimeout <- gTimeoutAdd
gtkRemoveTimeout <- gtkRemoveIdle <- gSourceRemove
gtkAddIdle <- gIdleAdd


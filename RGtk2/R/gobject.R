##### GObject wrapping #####

# GType support

# currently just converts type name to GType object, if x isn't one already
as.GType <- function(x)
{
	mapping <- c("integer" = "gint", "character" = "gchararray", "logical" = "gboolean",
		"numeric" = "gdouble", "raw" = "guchar", "externalptr" = "gpointer") 
    type <- x
    if (is.character(type)) {
		if (type %in% names(mapping))
			type <- mapping[[type]]
        type <- try(gTypeFromName(type), TRUE)
        if (inherits(type, "try-error")) {
            func <- paste(tolower(substring(x, 1, 1)), substring(x, 2), "GetType", sep="")
            if (exists(func))
                type <- do.call(func, list())
        }
    } 
	if (!inherits(type, "GType"))
		stop("Cannot convert ", x, " to GType")
	type
}

gObjectTypeName <-
function(w)
{
 checkPtrType(w, "GObject")
 .Call("R_gObjectTypeName", w, PACKAGE = "RGtk2")
}

gObjectGetClasses <-
function(w, check = TRUE)
{
 if(check)
     checkPtrType(w, "GObject")
 .Call("R_getGObjectTypeHierarchy", w, PACKAGE = "RGtk2")
}
gObjectGetInterfaces <-
function(w)
{
 checkPtrType(w, "GObject")
 .Call("R_getInterfaces", w, PACKAGE = "RGtk2")
}

gTypeGetAncestors <-
function(type)
{
  type <- as.GType(type)
  .Call("R_getGTypeHierarchy", type, PACKAGE = "RGtk2")
}

gTypeGetClass <-
function(type)
{
	type <- as.GType(type)
	.Call("R_getGTypeClass", type, PACKAGE = "RGtk2")
}

gObjectType <-
function(w, check = TRUE)
{
 if(check)
    checkPtrType(w, "GObject")
 .Call("R_gObjectType", w, PACKAGE = "RGtk2")
}

gTypeFromName <-
function(name)
{
 .Call("R_gTypeFromName", as.character(name), PACKAGE = "RGtk2")
}

print.GType <-
function(x,...)
{
  print(names(x), ...)
}

# GSignal support
connectSignal <- gSignalConnect <-
function(obj, signal, f, data = NULL, after = FALSE, user.data.first = FALSE)
{
  useData <- missing(data) == FALSE
  checkPtrType(obj, "GObject")

  if(is.null(f))
    stop("You've specified NULL as the action in setting a callback. Did you mean to use quote()")

  if(is.expression(f)) {
    f <- f[[1]]
  }

  if(!( is.expression(f) || is.function(f) || is.call(f))) {
    stop(paste("Callback action must be an expression, a call or a function, but instead is of type", typeof(f), ". Did you forget to use quote()"))
  }

  .Call("R_connectGSignalHandler", obj, f, as.character(signal), data, useData, 
  	as.logical(after), as.logical(user.data.first), PACKAGE = "RGtk2")
}

disconnectSignal <- gSignalHandlerDisconnect <-
function(obj, id)
{
 checkPtrType(obj, "GObject")
 .Call("R_disconnectGSignalHandler", obj, as.integer(id), PACKAGE = "RGtk2")
}

blockSignal <- gSignalHandlerBlock <-
function(obj, id)
{
  checkPtrType(obj, "GObject")
 .Call("R_blockGSignalHandler", obj, as.integer(id), TRUE, PACKAGE = "RGtk2")
}

unblockSignal <- gSignalHandlerUnblock <-
function(obj, id)
{
  checkPtrType(obj, "GObject")
 .Call("R_blockGSignalHandler", obj, as.integer(id), FALSE, PACKAGE = "RGtk2")
}

gSignalStopEmission <-
function(obj, signal, detail = NULL)
{
	if (!is.null(detail))
		signal <- paste(signal, detail, sep="::")
	.Call("R_gSignalStopEmission", obj, signal, PACKAGE = "RGtk2")
}

getSignals <- gObjectGetSignals <-
function(obj)
{
  checkPtrType(obj, "GObject")
  type <- gObjectType(type)
  els <- getSignalsForType(type)
  els
}

getSignalsForType <- gTypeGetSignals <-
function(type)
{
  if(is.character(type))
    type <- gTypeFromName(type)
  else if(inherits(type, "GObject")) {
    type <- gObjectType(type)
  }

  checkPtrType(type, "GType")
  els <- .Call("R_getGSignalIdsByType", type, PACKAGE = "RGtk2")

  names(els) <- sapply(els, function(x) names(x))

  els
}


gSignalGetInfo <-
function(sig)
{
 checkPtrType(sig, "GSignalId")
 .Call("R_getSignalInfo", sig, PACKAGE = "RGtk2")
}

emitSignal <- gSignalEmit <-
function(obj, signal, ..., detail = NULL)
{
  checkPtrType(obj, "GObject")
  args <- list(...)
  signal <- as.character(signal)
  if (!is.null(detail))
		signal <- paste(signal, detail, sep="::")
  .RGtkCall("R_gSignalEmit", obj, signal, args, PACKAGE = "RGtk2")
}

# GObject properties

names.GObject <-
  #
  # return a vector of the names of the properties
  # available for the given GObject, collapsing over
  # all the inherited classes and removing the class::
  # prefix.
  #
function(x)
{
  names(gObjectGetPropInfo(x, parents = TRUE, collapse = TRUE, strip = TRUE))
}

gObjectGetPropInfo <-
function(obj, parents = TRUE, collapse = FALSE)
{
  if(is.character(obj))
    obj <- gTypeFromName(obj)

  if(inherits(obj, "GType"))
    type <- obj
  else {
    checkPtrType(obj, "GObject")
    type <- gObjectType(obj)
  }
  v <- .Call("R_getGTypeParamSpecs", as.numeric(type), as.logical(parents), PACKAGE = "RGtk2")

  if(collapse) {
         # Merge into a new list (vals)
         # making certain not to overwrite values in
         # more specific classes with names
    vals <- list()
    sapply(v, function(x) {
                  which <- is.na(match(names(x), names(vals)))
                    Names <- names(x)[which]
                  vals[Names] <<- x[which]
              })
    v <- vals
    #
    #unlist(v, recursive = FALSE)
    # messes up the names.
  }

  v
}


gObjectGet <- gObjectGetProps <-
function(obj, ...)
{
   checkPtrType(obj, "GObject")
   .Call("R_getGObjectProps", obj, as.character(c(...)), PACKAGE = "RGtk2")
}

"[.GObject" <-
function(obj, value, ...)
{
 gObjectGet(obj, c(value, ...))
}

gObjectSet <- gObjectSetProps <-
function(obj, ... = TRUE)
{
  args <- list(...)
  checkPtrType(obj, "GObject")
  if(any(names(args) == ""))
    stop("All values must have a name")

  invisible(.RGtkCall("R_setGObjectProps", obj, args, PACKAGE = "RGtk2"))
}

"[<-.GObject" <-
function(obj, propNames, value)
{
	value <- list(value)
	names(value) <- propNames
	.RGtkCall("R_setGObjectProps", obj, value, PACKAGE = "RGtk2")
	obj
}

gObject <- gObjectNew <-
function(type, ... = TRUE)
{
  args <- list(...)
  type <- as.GType(type)
  if (!("GObject" %in% gTypeGetAncestors(type)))
	  stop("GType must inherit from GObject")
  if(any(names(args) == ""))
    stop("All values must have a name")

  invisible(.RGtkCall("R_gObjectNew", type, args, PACKAGE = "RGtk2"))
}

as.GParamSpec <- 
function(x)
{
	x <- as.struct(x, "GParamSpec", c("param.type", "name", "nick", "blurb", "flags"))
	x[[1]] <- as.GType(x[[1]])
	x[[2]] <- as.character(x[[2]])
	x[[3]] <- as.character(x[[3]])
	x[[4]] <- as.character(x[[4]])
	
	return(x)
}
	

gObjectSetData <-
function(obj, key, data = NULL)
{
        checkPtrType(obj, "GObject")
        key <- as.character(key)

        w <- .RGtkCall("S_g_object_set_data", obj, key, data, PACKAGE = "RGtk2")

        return(invisible(w))
}
gObjectGetData <-
function(obj, key)
{
        checkPtrType(obj, "GObject")
        key <- as.character(key)

        w <- .RGtkCall("S_g_object_get_data", obj, key, PACKAGE = "RGtk2")

        return(w)
}

# Methods

"$.<invalid>" <-
function(obj, name)
{
	stop("attempt to call '", name, "' on invalid reference '", deparse(substitute(obj)), "'", call.=FALSE)
}

"$.RGtkObject" <-
function(x, method)
{
 .getAutoMethodByName(x, method)
}

.getAutoMethodByName <-
function(obj, name)
{
    classes <- c(attr(obj, "interfaces"), class(obj))
    sym <- paste(tolower(substring(classes, 1, 1)), substring(classes, 2), toupper(substring(name, 1, 1)),
        substring(name,2), sep="")
    which <- sapply(sym, exists)

 if(!any(which))
   stop(paste("No such method", name, "for classes", paste(class(obj), collapse=", ")))

 sym <- as.name(sym[which][1])

  # evaluate it to turn it into a function
  # and also get the correct environment
 eval(substitute( function(...) {
                     sym(obj, ...)
                 }, list(obj=obj,sym=sym)))
}

# Comparing pointers

"==.RGtkObject" <-
function(x, y) {
	ptrToNumeric(x) == ptrToNumeric(y)
}

# Fields

"[[.RGtkObject" <-
  #
  #
  #
function(x, field)
{
  if(is.numeric(field)) {
    return(x$getChildren()[[field]])
  }
  sym <- try(.getAutoElementByName(x, field, error = FALSE))
  if (!inherits(sym, "try-error"))
	  val <- eval(substitute(sym(x), list(sym=sym)))
  else if (inherits(x, "GObject")) {
   val <- gObjectGetProps(x, field)
  } else val <- sym
  return(val)
}
if (FALSE) {
"[[<-.RGtkObject" <-
  #
  #
  #
function(x, name, value)
{
  sym <- try(.getAutoElementByName(x, name, op = "Set", error = FALSE))
  if (!inherits(sym, "try-error"))
	  val <- eval(substitute(sym(x, value), list(sym=sym)))
  else if(inherits(x, "GObject"))
   val <- gObjectSetProps(x, name)
  else val <- sym
  return(val)
}
}
.getAutoElementByName <-
function(obj, name, op = "Get", error = TRUE)
{
 sym <- paste(tolower(substring(class(obj), 1, 1)), substring(class(obj), 2), op,
    toupper(substring(name, 1, 1)), substring(name, 2),sep="")
    #print(sym)
 which <- sapply(sym, exists)

 if(!any(which)) {
	 message <- paste("Could not", op, "element/property", name,"for classes", paste(class(obj), collapse=", "))
   if(error)
     stop(message)
   else {
     v <- paste(message)
     class(v) <- "try-error"
     return(v)
   }
 }

 sym <- as.name(sym[which][1])

 sym
}

# This attempts to coerce an R object to an RGClosure that is understood on the C side
as.GClosure <- 
function(x)
{
	if (inherits(x, "GClosure"))
		x <- toRGClosure(x)
	else x <- as.function(x)
	class(x) <- "RGClosure"
	x
}

# This attempts to convert a C GClosure to an R closure 
# (with extra ref attribute that prevents recursion on C side)
toRGClosure <-
function(c_closure)
{
	checkPtrType(c_closure, "GClosure")
	closure <- function(...) {
		.RGtkCall("R_g_closure_invoke", c_closure, c(...), PACKAGE = "RGtk2")
	}
	attr(closure, "ref") <- c_closure
	closure
}

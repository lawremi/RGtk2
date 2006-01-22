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
 .Call("R_gObjectTypeName", w)
}

gObjectGetClasses <-
function(w, check = TRUE)
{
 if(check)
     checkPtrType(w, "GObject")
 .Call("R_getGObjectTypeHierarchy", w)
}
gObjectGetInterfaces <-
function(w)
{
 checkPtrType(w, "GObject")
 .Call("R_getInterfaces", w)
}

gTypeGetAncestors <-
function(type)
{
  type <- as.GType(type)
  .Call("R_getGTypeHierarchy", type)
}

gTypeGetClass <-
function(type)
{
	type <- as.GType(type)
	.Call("R_getGTypeClass", type)
}

gObjectType <-
function(w, check = TRUE)
{
 if(check)
    checkPtrType(w, "GObject")
 .Call("R_gObjectType", w)
}

gTypeFromName <-
function(name)
{
 .Call("R_gTypeFromName", as.character(name))
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
  	as.logical(after), as.logical(user.data.first))
}

disconnectSignal <- gSignalHandlerDisconnect <-
function(obj, id)
{
 checkPtrType(obj, "GObject")
 .Call("R_disconnectGSignalHandler", obj, as.integer(id))
}

blockSignal <- gSignalHandlerBlock <-
function(obj, id)
{
  checkPtrType(obj, "GObject")
 .Call("R_blockGSignalHandler", obj, as.integer(id), TRUE)
}

unblockSignal <- gSignalHandlerUnblock <-
function(obj, id)
{
  checkPtrType(obj, "GObject")
 .Call("R_blockGSignalHandler", obj, as.integer(id), FALSE)
}

gSignalStopEmission <-
function(obj, signal, detail = NULL)
{
	if (!is.null(detail))
		signal <- paste(signal, detail, sep="::")
	.Call("R_gSignalStopEmission", obj, signal)
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
  els <- .Call("R_getGSignalIdsByType", type)

  names(els) <- sapply(els, function(x) names(x))

  els
}


gSignalGetInfo <-
function(sig)
{
 checkPtrType(sig, "GSignalId")
 .Call("R_getSignalInfo", sig)
}

emitSignal <- gSignalEmit <-
function(obj, signal, ..., detail = NULL)
{
  checkPtrType(obj, "GObject")
  args <- list(...)
  signal <- as.character(signal)
  if (!is.null(detail))
		signal <- paste(signal, detail, sep="::")
  .RGtkCall("R_gSignalEmit", obj, signal, args)
}

# GObject properties

names.GObject <-
  #
  # return a vector of the names of the properties/args
  # available for the given GtkObject, collapsing over
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
  v <- .Call("R_getGTypeParamSpecs", as.numeric(type), as.logical(parents))

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
   .Call("R_getGObjectProps", obj, as.character(c(...)))
}

"[.GObject" <-
function(x, ...)
{
 gObjectGet(x, c(...))
}

gObjectSet <- gObjectSetProps <-
function(obj, ..., .flush = TRUE)
{
  args <- list(...)
  checkPtrType(obj, "GObject")
  if(any(names(args) == ""))
    stop("All values must have a name")

  invisible(.RGtkCall("R_setGObjectProps", obj, args, .flush = .flush))
}

"[<-.GObject" <-
function(x, propNames, propValues)
{
	names(propValues) <- propNames
	invisible(.RGtkCall("R_setGObjectProps", obj, propValues, .flush = .flush))
}

gObject <- gObjectNew <-
function(type, ..., .flush = TRUE)
{
  args <- list(...)
  type <- as.GType(type)
  if (!("GObject" %in% gTypeGetAncestors(type)))
	  stop("GType must inherit from GObject")
  if(any(names(args) == ""))
    stop("All values must have a name")

  invisible(.RGtkCall("R_gObjectNew", type, args, .flush = .flush))
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
function(obj, key, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(obj, "GObject")
        key <- as.character(key)

        w <- .RGtkCall("S_g_object_set_data", obj, key, data, .flush = .flush)

        return(invisible(w))
}
gObjectGetData <-
function(obj, key, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(obj, "GObject")
        key <- as.character(key)

        w <- .RGtkCall("S_g_object_get_data", obj, key, .flush = .flush)

        return(w)
}

# Methods

"$.<invalid>" <-
function(obj, name)
{
	stop("attempt to call '", name, "' on invalid reference '", deparse(substitute(obj)), "'", call.=FALSE)
}

"$.RGtkObject" <-
function(obj, name)
{
 .getAutoMethodByName(obj, name)
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
function(obj, name)
{
  if(is.numeric(name)) {
    return(obj$getChildren()[[name]])
  }
  sym <- try(.getAutoElementByName(obj, name, error = FALSE))
  if (!inherits(sym, "try-error"))
	  val <- eval(substitute(sym(obj), list(sym=sym)))
  else if (inherits(obj, "GObject")) {
   val <- gObjectGetProps(obj, name)
  } else val <- sym
  return(val)
}

"[[<-.RGtkObject" <-
  #
  #
  #
function(obj, name, value)
{
  sym <- try(.getAutoElementByName(obj, name, op = "Set", error = FALSE))
  if (!inherits(sym, "try-error"))
	  val <- eval(substitute(sym(obj, value), list(sym=sym)))
  else if(inherits(obj, "GObject"))
   val <- gObjectSetProps(obj, name)
  else val <- sym
  return(val)
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
		x <- to.RGClosure(x)
	else x <- as.function(x)
	class(x) <- "RGClosure"
	x
}

# This attempts to convert a C GClosure to an R closure 
# (with extra ref attribute that prevents recursion on C side)
to.RGClosure <-
function(c_closure)
{
	checkPtrType(c_closure, "GClosure")
	closure <- function(...) {
		.RGtkCall("R_g_closure_invoke", c_closure, c(...))
	}
	attr(closure, "ref") <- c_closure
	closure
}

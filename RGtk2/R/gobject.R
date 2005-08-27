##### GObject wrapping #####

# GType support

as.GType <- function(x)
{
    type <- x
    if (is.character(type)) {
        type <- try(gTypeFromName(type), TRUE)
        if (inherits(type, "try-error")) {
            func <- paste(tolower(substring(x, 1, 1)), substring(x, 2), "GetType", sep="")
            if (exists(func))
                type <- do.call(func, list())
        }
    }
    as.numeric(type)
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

gTypeGetClasses <-
function(type)
{
  if(is.character(type))
    type <- gTypeFromName(type)

  checkPtrType(type, "GType")
  .Call("R_getGTypeHierarchy", type)
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
function(w, signal, f, data = NULL, after = TRUE, user.data.first = FALSE)
{
  useData <- missing(data) == FALSE
  checkPtrType(w, "GObject")

  if(is.null(f))
    stop("You've specified NULL as the action in setting a callback. Did you mean to use quote()")

  if(is.expression(f)) {
    f <- f[[1]]
  }

  if(!( is.expression(f) || is.function(f) || is.call(f))) {
    stop(paste("Callback action must be an expression, a call or a function, but instead is of type", typeof(f), ". Did you forget to use quote()"))
  }

  .Call("R_connectGSignalHandler", w, f, as.character(signal), data, useData, 
  	as.logical(after), as.logical(user.data.first))
}

disconnectSignal <- gSignalDisconnect <-
function(obj, id)
{
 checkPtrType(obj, "GObject")
 .Call("R_disconnectGSignalHandler", obj, as.integer(id))
}

blockSignal <- gSignalBlock <-
function(obj, id)
{
  checkPtrType(obj, "GObject")
 .Call("R_blockGSignalHandler", obj, as.integer(id), TRUE)
}

unblockSignal <- gSignalUnblock <-
function(obj, id)
{
  checkPtrType(obj, "GObject")
 .Call("R_blockGSignalHandler", obj, as.integer(id), FALSE)
}

getSignals <- gObjectGetSignals <-
function(w)
{
  checkPtrType(w, "GObject")
  els <- .Call("R_getSignalIds", w)
  names(els) <- sapply(els, function(x) names(x))

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
  els <- .Call("R_getSignalIdsByType", type)

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
function(obj, signal, ..., .flush = TRUE)
{
  checkPtrType(obj, "GObject")
  args <- list(...)
  .RGtkCall("R_gSignalEmit", obj, as.character(signal), args, .flush = .flush)
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
  #
  # Could be done in S code more readily using
  # {l,s}apply(class(obj), getTypeArgInfo)
  #
  #
  #  strip is intended to remove the `class::'
  #  prefix. Can do this in R or in C.
  #
function(obj, parents = TRUE, collapse = FALSE, strip = FALSE)
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
                  if(strip) {
                    Names <- gsub("^.*::","",names(x)[which])
                  } else
                    Names <- names(x)[which]
                  vals[Names] <<- x[which]
              })
    v <- vals
    #
    #unlist(v, recursive = FALSE)
    # messes up the names.
  } else if(strip) {

    v <- lapply(v, function(x) {
                    names(x) <- gsub("^.*::","",names(x))
                    x
                  })
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
 gObjectGetProps(x, c(...))
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
function(object, key, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GObject")
        key <- as.character(key)

        w <- .RGtkCall("S_g_object_set_data", object, key, data, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}
gObjectGetData <-
function(object, key, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "GObject")
        key <- as.character(key)

        w <- .RGtkCall("S_g_object_get_data", object, key, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

"[<-.GObject" <-
function(x, name, value)
{
  names(value) <- name
  .RGtkCall("R_setGObjectProps", x, value,.flush = TRUE)

   x
}

# Methods

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

as.GClosure <- 
function(x)
{
	x <- as.function(x)
	class(x) <- "GClosure"
	x
}

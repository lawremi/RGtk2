checkPtrType <-
#
# if critical is TRUE, an error is generated
# in the case that w does not inherit from the
# specified class.
# If it is FALSE, a warning is generated.
# If critical is a string (character vector of length 1)
# it is passed directly to stop() and used as the error message.
# This allows the caller to give more context-specific
# messages.
function(w, klass = "GtkWidget", nullOk = FALSE, critical = TRUE)
{
 if(is.null(w) && nullOk)
   return(TRUE)

 if(!inherits(w, klass) && !implements(w, klass)) {
   if(is.character(critical))
     stop(critical)
   else if(is.logical(critical) && critical)
     stop(paste("object of class", class(w), "isn't a",klass))
 }

 return(TRUE)
}

implements <-
function(obj, interface)
{
    interface %in% attr(obj, "interfaces")
}

# this function deprecated
checkArrType <-
function(obj, fun)
{
	lapply(obj, fun)
}

.RGtkCall <-
function(name, ..., PACKAGE = "RGtk2", .flush = TRUE)
{
   #print(paste("Calling", name, "with args:", paste(..., collapse=", ")))
    val <- .Call(name, ..., PACKAGE = PACKAGE)
   if(.flush)
     gdkFlush(.flush = FALSE)

   val
}

bitCheck <- function(bits)
{
	any(as.logical(bits))
}
bitAnd <- function(x, y)
{
    if (mode(x) != "raw")
        x <- intToBits(as.integer(x))
    if (mode(y) != "raw")
        y <- intToBits(as.integer(y))
    x & y
}
bitOr <- function(x, y)
{
    if (mode(x) != "raw")
        x <- intToBits(as.integer(x))
    if (mode(y) != "raw")
        y <- intToBits(as.integer(y))
    x | y
}

demofile <- function(name)
{
	file.path(installed.packages()["RGtk2", "LibPath"], "RGtk2", "demo", name)
}

# .Call("R_getSignalNames", gtkButton())

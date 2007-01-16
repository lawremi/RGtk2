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

 if (inherits(w, "<invalid>"))
	 stop("Attempt to use invalidated object")
 
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

checkArrType <-
function(obj, fun)
{
	if (missing(fun))
		obj
	else lapply(obj, fun)
}

.RGtkCall <-
function(name, ..., PACKAGE = "RGtk2")
{
   #print(paste("Calling", name, "with args:", paste(..., collapse=", ")))
    val <- .Call(name, ..., PACKAGE = PACKAGE)
	if (getOption("gdkFlush")) {
		.Call("S_gdk_flush", PACKAGE = "RGtk2")
	}
    val
}

# Coerce something to a "flag" that can be operated on bitwise
as.flag <- function(x) {
	if (!is.numeric(x) && mode(x) != "raw")
		stop("Flags must be numeric or raw")
	class(x) <- "flag"
	x
}

# Coerces a member of a flags vector to a flag
"[.flags" <-
function(x, value) {
	as.flag(x[[value]])
}

# the bitwise ops

"|.flag" <-
function(x, y)
{
	as.flag(.bitOr(x, y))
}
"&.flag" <-
function(x, y)
{
	as.flag(.bitAnd(x, y))
}
"!.flag" <-
function(x)
{
	as.flag(.bitNot(x))
}

# coerces the argument to "bits" if it isn't raw already
# also ensures class is 'raw' to prevent infinite recursion
.toBits <- function(x) 
{
	if (mode(x) != "raw")
    x <- intToBits(as.integer(x))
	class(x) <- "raw"
	x
}

"==.flag" <-
function(x, y) {
	if (!.flagCompare(x, y))
		.flagCompare(y, x)
	else TRUE
}

.flagCompare <- function(x, y) {
	if (is.character(y) && class(x)[1] != "flag") {
		flags <- get(class(x)[1])
		names(flags)[match(x, flags)] == y
	} else if (is.logical(y)) {
		x <- as.logical(x)
		if (y) any(x)
		else !any(x)
	} else {
		x <- .toBits(x)
		y <- .toBits(y)
		all(as.logical(sapply(1:length(x), function(i) x[i] == y[i])))
	}
}

# these actually perform the bit ops, after coercing args to bits
.bitAnd <- function(x, y)
{
	x <- .toBits(x)
	y <- .toBits(y)
  x & y
}
.bitOr <- function(x, y)
{
  x <- .toBits(x)
	y <- .toBits(y)
  x | y
}
.bitNot <- function(x) {
	x <- .toBits(x)
	rawToBits(!x)[seq(1, 256, by=8)]
}

"==.enum" <-
function(x, y)
{
  ans <- F
  
  if (inherits(x, "enum"))
    ans <- names(get(class(x)[1]))[x+1] == y
  else if (inherits(y, "enum"))
    ans <- names(get(class(y)[1]))[y+1] == x
  
  x <- unclass(x)
  y <- unclass(y)
  
  if (!ans)
    ans <- x == y
  
  if (!ans && length(names(x)) > 0)
    ans <- names(x) == y 
  if (!ans && length(names(y)) > 0)
    ans <- names(y) == x
  if (!ans && length(names(y)) > 0 && length(names(x)) > 0)
    ans <- names(x) == names(y)
	
  ans
}

# file shortcuts
imagefile <- function(name)
{
	file.path(installed.packages()["RGtk2", "LibPath"], "RGtk2", "images", name)
}

.notimplemented <- function(reason, func = sys.call(-1)) {
	stop("Sorry, ", func, " is not (yet) implemented because it is ", reason, ".")
}

# this lets you get a pointer as a numeric value so that you can compare by address
.ptrToNumeric <- function(ptr) {
	.Call("convertPtrToNumeric", ptr, PACKAGE="RGtk2")
}

# Text manipulation

.collapseClassName <-
  #
  # converts a class name of the form GtkButton
  # to gtk_button.
  # Also handles GtkCList to gtk_clist.
  #
function(name)
{
  tmp <- gsub("([ABCDEFGHIJKLMNOPQRSTUVWXYZ]+)", "_\\1", name)
  tmp <- tolower(substring(tmp, 2))
  gsub("_([abcdefghijklmnopqrstuvwxyz])_","_\\1", tmp)
}

# Create an environment from a list

.as.environment.list <- function(l, parent = emptyenv())
{
  e <- new.env(TRUE, parent)
  sapply(names(l), function(name) assign(name, l[[name]], e))
  e
}

# .Call("R_getSignalNames", gtkButton())

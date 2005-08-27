
# G Main Loop timeouts and idles

gTimeoutAdd <-
function(interval, f, data = NULL, .flush = TRUE)
{
 useData <- !missing(data)

 if(!is.function(f))
   stop("Timeout handlers must be function objects")

 .RGtkCall("R_addGTimeoutHandler", as.integer(interval),  f, data, useData, .flush = .flush)
}


gSourceRemove <-
function(id)
{
  checkPtrType(id, "GTimeoutId")
  .Call("R_removeGSource", as.integer(id))
}


gIdleAdd <-
function(f, data = NULL, .flush = TRUE)
{
 useData <- !missing(data)

 if(!is.function(f)) {
  stop("Idle functions must be functions!")
 }

  .RGtkCall("R_addGIdleHandler", f, data, useData, .flush = .flush)
}

# transparent coercion

as.GQuark <-
function(x)
{
	x <- as.numeric(x)
	class(x) <- "GQuark"
	x
}
as.GList <-
function(x)
{
	x <- as.list(x)
	class(x) <- "GList"
	x
}
as.GSList <-
function(x)
{
	x <- as.list(x)
	class(x) <- "GSList"
	x
}
as.GString <-
function(x)
{
	x <- as.character(x)
	class(x) <- "GString"
	x
}
as.GTimeVal <-
function(x)
{
	x <- as.struct(x, "GTimeVal", c("tv_sec", "tv_usec"))
	x[[1]] <- as.numeric(x[[1]])
	x[[2]] <- as.numeric(x[[2]])
	
	return(x)
}
	

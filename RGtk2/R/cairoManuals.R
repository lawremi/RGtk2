cairoImageSurfaceCreateFromPngStream <- 
function (con) 
{
	.notimplemented("is not yet written. It will support reading PNG data from an R connection")
}
cairoSurfaceWriteToPngStream <-
function (surface, con) 
{
	.notimplemented("is not yet written. It will support writing PNG data to an R connection")
}

## version checking ##

boundCairoVersion <- function() {
  paste(.RGtkCall("boundCairoVersion"), collapse=".")
}

checkCairo <- function(version) {
  compareVersion(boundCairoVersion(), version)
}

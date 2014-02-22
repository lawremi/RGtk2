\alias{cairoImageSurfaceCreate}
\name{cairoImageSurfaceCreate}
\title{cairoImageSurfaceCreate}
\description{Creates an image surface of the specified format and
dimensions. Initially the surface contents are all
0. (Specifically, within each pixel, each color or alpha channel
belonging to format will be 0. The contents of bits within a pixel,
but not belonging to the given format are undefined).}
\usage{cairoImageSurfaceCreate(format, width, height)}
\arguments{
\item{\verb{format}}{[\code{\link{CairoFormat}}]  format of pixels in the surface to create}
\item{\verb{width}}{[integer]  width of the surface, in pixels}
\item{\verb{height}}{[integer]  height of the surface, in pixels}
}
\value{[\code{\link{CairoSurface}}]  a pointer to the newly created surface. The caller
owns the surface and should call \code{\link{cairoSurfaceDestroy}} when done
with it.
This function always returns a valid pointer, but it will return a
pointer to a "nil" surface if an error such as out of memory
occurs. You can use \code{\link{cairoSurfaceStatus}} to check for this.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

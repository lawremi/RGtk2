\alias{cairoImageSurfaceCreate}
\name{cairoImageSurfaceCreate}
\title{cairoImageSurfaceCreate}
\description{Creates an image surface of the specified format and
dimensions. The initial contents of the surface is undefined; you
must explicitely clear the buffer, using, for example,
\code{\link{cairoRectangle}} and \code{\link{cairoFill}} if you want it cleared.}
\usage{cairoImageSurfaceCreate(format, width, height)}
\arguments{
\item{\code{format}}{[\code{\link{cairo_format_t}}]  format of pixels in the surface to create }
\item{\code{width}}{[integer]  width of the surface, in pixels}
\item{\code{height}}{[integer]  height of the surface, in pixels}
}
\value{[\code{\link{cairo_surface_t}}]  a pointer to the newly created surface. The caller
owns the surface and should call cairo_surface_destroy when done
with it.

This function always returns a valid pointer, but it will return a
pointer to a "nil" surface if an error such as out of memory
occurs. You can use \code{\link{cairoSurfaceStatus}} to check for this.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

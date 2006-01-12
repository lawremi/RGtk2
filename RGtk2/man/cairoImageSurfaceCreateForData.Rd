\alias{cairoImageSurfaceCreateForData}
\name{cairoImageSurfaceCreateForData}
\title{cairoImageSurfaceCreateForData}
\description{Creates an image surface for the provided pixel data. The output
buffer must be kept around until the \code{\link{cairo_surface_t}} is destroyed
or \code{\link{cairoSurfaceFinish}} is called on the surface.  The initial
contents of \code{buffer} will be used as the inital image contents; you
must explicitely clear the buffer, using, for example,
\code{\link{cairoRectangle}} and \code{\link{cairoFill}} if you want it cleared.}
\usage{cairoImageSurfaceCreateForData(data, format, width, height, stride)}
\arguments{
\item{\code{data}}{[char]  a pointer to a buffer supplied by the application
   in which to write contents.}
\item{\code{format}}{[\code{\link{cairo_format_t}}]  the format of pixels in the buffer}
\item{\code{width}}{[integer]  the width of the image to be stored in the buffer}
\item{\code{height}}{[integer]  the height of the image to be stored in the buffer}
\item{\code{stride}}{[integer]  the number of bytes between the start of rows
  in the buffer. Having this be specified separate from \code{width}
  allows for padding at the end of rows, or for writing
  to a subportion of a larger image.}
}
\value{[\code{\link{cairo_surface_t}}]  a pointer to the newly created surface. The caller
owns the surface and should call cairo_surface_destroy when done
with it.

This function always returns a valid pointer, but it will return a
pointer to a "nil" surface if an error such as out of memory
occurs. You can use \code{\link{cairoSurfaceStatus}} to check for this.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

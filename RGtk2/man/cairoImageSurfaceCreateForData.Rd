\alias{cairoImageSurfaceCreateForData}
\name{cairoImageSurfaceCreateForData}
\title{cairoImageSurfaceCreateForData}
\description{Creates an image surface for the provided pixel data. The output
buffer must be kept around until the \code{\link{CairoSurface}} is destroyed
or \code{\link{cairoSurfaceFinish}} is called on the surface.  The initial
contents of \code{data} will be used as the initial image contents; you
must explicitly clear the buffer, using, for example,
\code{\link{cairoRectangle}} and \code{\link{cairoFill}} if you want it cleared.}
\usage{cairoImageSurfaceCreateForData(data, format, width, height, stride)}
\arguments{
\item{\verb{data}}{[char]  a pointer to a buffer supplied by the application in which
    to write contents. This pointer must be suitably aligned for any
    kind of variable, (for example, a pointer returned by malloc).}
\item{\verb{format}}{[\code{\link{CairoFormat}}]  the format of pixels in the buffer}
\item{\verb{width}}{[integer]  the width of the image to be stored in the buffer}
\item{\verb{height}}{[integer]  the height of the image to be stored in the buffer}
\item{\verb{stride}}{[integer]  the number of bytes between the start of rows in the
    buffer as allocated. This value should always be computed by
    \code{\link{cairoFormatStrideForWidth}} before allocating the data
    buffer.}
}
\details{Note that the stride may be larger than
width*bytes_per_pixel to provide proper alignment for each pixel
and row. This alignment is required to allow high-performance rendering
within cairo. The correct way to obtain a legal stride value is to
call \code{\link{cairoFormatStrideForWidth}} with the desired format and
maximum image width value, and the use the resulting stride value
to allocate the data and to create the image surface. See
\code{\link{cairoFormatStrideForWidth}} for example code.  }
\value{[\code{\link{CairoSurface}}]  a pointer to the newly created surface. The caller
owns the surface and should call \code{\link{cairoSurfaceDestroy}} when done
with it.
This function always returns a valid pointer, but it will return a
pointer to a "nil" surface in the case of an error such as out of
memory or an invalid stride value. In case of invalid stride value
the error status of the returned surface will be
\code{CAIRO_STATUS_INVALID_STRIDE}.  You can use
\code{\link{cairoSurfaceStatus}} to check for this.
See \code{\link{cairoSurfaceSetUserData}} for a means of attaching a
destroy-notification fallback to the surface if necessary.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

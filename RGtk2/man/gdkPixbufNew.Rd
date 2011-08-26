\alias{gdkPixbufNew}
\name{gdkPixbufNew}
\title{gdkPixbufNew}
\description{Creates a new \code{\link{GdkPixbuf}} structure and allocates a buffer for it.  The 
buffer has an optimal rowstride.  Note that the buffer is not cleared;
you will have to fill it completely yourself.}
\usage{gdkPixbufNew(colorspace, has.alpha, bits.per.sample, width, height)}
\arguments{
\item{\verb{colorspace}}{Color space for image}
\item{\verb{has.alpha}}{Whether the image should have transparency information}
\item{\verb{bits.per.sample}}{Number of bits per color sample}
\item{\verb{width}}{Width of image in pixels, must be > 0}
\item{\verb{height}}{Height of image in pixels, must be > 0}
}
\value{[\code{\link{GdkPixbuf}}] A newly-created \code{\link{GdkPixbuf}} with a reference count of 1, or
\code{NULL} if not enough memory could be allocated for the image buffer.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

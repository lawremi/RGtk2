\alias{gdkPixbufNewFromData}
\name{gdkPixbufNewFromData}
\title{gdkPixbufNewFromData}
\description{Creates a new \code{\link{GdkPixbuf}} out of in-memory image data.  Currently only RGB
images with 8 bits per sample are supported.}
\usage{gdkPixbufNewFromData(data, colorspace, has.alpha, bits.per.sample, 
    width, height, rowstride)}
\arguments{
\item{\verb{data}}{Image data in 8-bit/sample packed format}
\item{\verb{colorspace}}{Colorspace for the image data}
\item{\verb{has.alpha}}{Whether the data has an opacity channel}
\item{\verb{bits.per.sample}}{Number of bits per sample}
\item{\verb{width}}{Width of the image in pixels, must be > 0}
\item{\verb{height}}{Height of the image in pixels, must be > 0}
\item{\verb{rowstride}}{Distance in bytes between row starts}
}
\value{[\code{\link{GdkPixbuf}}] A newly-created \code{\link{GdkPixbuf}} structure with a reference count of 1.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

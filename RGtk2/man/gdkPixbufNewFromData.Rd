\alias{gdkPixbufNewFromData}
\name{gdkPixbufNewFromData}
\title{gdkPixbufNewFromData}
\description{Creates a new \code{\link{GdkPixbuf}} out of in-memory image data.  Currently only RGB
images with 8 bits per sample are supported.}
\usage{gdkPixbufNewFromData(data, colorspace, has.alpha, bits.per.sample, width, height, rowstride)}
\arguments{
\item{\code{data}}{[raw]  Image data in 8-bit/sample packed format.}
\item{\code{colorspace}}{[\code{\link{GdkColorspace}}]  Colorspace for the image data.}
\item{\code{has.alpha}}{[logical]  Whether the data has an opacity channel.}
\item{\code{bits.per.sample}}{[integer]  Number of bits per sample.}
\item{\code{width}}{[integer]  Width of the image in pixels.}
\item{\code{height}}{[integer]  Height of the image in pixels.}
\item{\code{rowstride}}{[integer]  Distance in bytes between row starts.}
}
\value{[\code{\link{GdkPixbuf}}]  A newly-created \code{\link{GdkPixbuf}} structure with a reference count of 1.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

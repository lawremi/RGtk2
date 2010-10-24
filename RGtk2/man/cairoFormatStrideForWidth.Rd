\alias{cairoFormatStrideForWidth}
\name{cairoFormatStrideForWidth}
\title{cairoFormatStrideForWidth}
\description{This function provides a stride value that will respect all
alignment requirements of the accelerated image-rendering code
within cairo. Typical usage will be of the form:}
\usage{cairoFormatStrideForWidth(format, width)}
\arguments{
\item{\verb{format}}{[\code{\link{CairoFormat}}]  A \code{\link{CairoFormat}} value}
\item{\verb{width}}{[integer]  The desired width of an image surface to be created.}
}
\details{\preformatted{
stride <- format$strideForWidth(width)
data <- raw(stride * height)
surface <- cairoImageSurfaceCreateForData(data, format, width, height, stride)
}  
  Since 1.6}
\value{[integer]  the appropriate stride to use given the desired
format and width, or -1 if either the format is invalid or the width
too large.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

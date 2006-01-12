\alias{gdkBitmapCreateFromData}
\name{gdkBitmapCreateFromData}
\title{gdkBitmapCreateFromData}
\description{Creates a new bitmap from data in XBM format.}
\usage{gdkBitmapCreateFromData(drawable = NULL, data, width, height)}
\arguments{
\item{\code{drawable}}{[\code{\link{GdkDrawable}}] a \code{\link{GdkDrawable}}, used to determine default values
for the new pixmap. Can be \code{NULL}, in which case the root
window is used.}
\item{\code{data}}{[character] a pointer to the XBM data.}
\item{\code{width}}{[integer] the width of the new pixmap in pixels.}
\item{\code{height}}{[integer] the height of the new pixmap in pixels.}
}
\value{[\code{\link{GdkBitmap}}] the \code{\link{GdkBitmap}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

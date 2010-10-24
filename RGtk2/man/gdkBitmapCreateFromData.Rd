\alias{gdkBitmapCreateFromData}
\name{gdkBitmapCreateFromData}
\title{gdkBitmapCreateFromData}
\description{Creates a new bitmap from data in XBM format.}
\usage{gdkBitmapCreateFromData(drawable = NULL, data, width, height)}
\arguments{
\item{\verb{drawable}}{a \code{\link{GdkDrawable}}, used to determine default values
for the new pixmap. Can be \code{NULL}, in which case the root
window is used.}
\item{\verb{data}}{a pointer to the XBM data.}
\item{\verb{width}}{the width of the new pixmap in pixels.}
\item{\verb{height}}{the height of the new pixmap in pixels.}
}
\value{[\code{\link{GdkBitmap}}] the \code{\link{GdkBitmap}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

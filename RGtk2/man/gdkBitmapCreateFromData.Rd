\alias{gdkBitmapCreateFromData}
\name{gdkBitmapCreateFromData}
\title{gdkBitmapCreateFromData}
\description{Creates a new bitmap from data in XBM format.}
\usage{gdkBitmapCreateFromData(drawable = NULL, data, width, height)}
\arguments{
\item{\verb{drawable}}{[\verb{\link{GdkDrawable}}] a \verb{\link{GdkDrawable}}, used to determine default values
for the new pixmap. Can be \code{NULL}, in which case the root
window is used.}
\item{\verb{data}}{[character] a pointer to the XBM data.}
\item{\verb{width}}{[integer] the width of the new pixmap in pixels.}
\item{\verb{height}}{[integer] the height of the new pixmap in pixels.}
}
\value{[\verb{\link{GdkBitmap}}] the \verb{\link{GdkBitmap}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

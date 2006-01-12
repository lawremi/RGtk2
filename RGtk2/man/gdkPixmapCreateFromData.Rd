\alias{gdkPixmapCreateFromData}
\name{gdkPixmapCreateFromData}
\title{gdkPixmapCreateFromData}
\description{Create a two-color pixmap from data in XBM data.}
\usage{gdkPixmapCreateFromData(drawable = NULL, data, height, depth, fg, bg)}
\arguments{
\item{\code{drawable}}{[\code{\link{GdkDrawable}}] a \code{\link{GdkDrawable}}, used to determine default values
for the new pixmap. Can be \code{NULL}, if the depth is given.}
\item{\code{data}}{[character] a pointer to the data.}
\item{\code{height}}{[integer] the height of the new pixmap in pixels.}
\item{\code{depth}}{[integer] the depth (number of bits per pixel) of the new pixmap.}
\item{\code{fg}}{[\code{\link{GdkColor}}] the foreground color.}
\item{\code{bg}}{[\code{\link{GdkColor}}] the background color.}
}
\value{[\code{\link{GdkPixmap}}] the \code{\link{GdkPixmap}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

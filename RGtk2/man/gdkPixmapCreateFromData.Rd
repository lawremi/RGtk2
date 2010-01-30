\alias{gdkPixmapCreateFromData}
\name{gdkPixmapCreateFromData}
\title{gdkPixmapCreateFromData}
\description{Create a two-color pixmap from data in XBM data.}
\usage{gdkPixmapCreateFromData(drawable = NULL, data, height, depth, fg, bg)}
\arguments{
\item{\verb{drawable}}{[\verb{\link{GdkDrawable}}] a \verb{\link{GdkDrawable}}, used to determine default values
for the new pixmap. Can be \code{NULL}, if the depth is given.}
\item{\verb{data}}{[character] a pointer to the data.}
\item{\verb{height}}{[integer] the height of the new pixmap in pixels.}
\item{\verb{depth}}{[integer] the depth (number of bits per pixel) of the new pixmap.}
\item{\verb{fg}}{[\verb{\link{GdkColor}}] the foreground color.}
\item{\verb{bg}}{[\verb{\link{GdkColor}}] the background color.}
}
\value{[\verb{\link{GdkPixmap}}] the \verb{\link{GdkPixmap}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

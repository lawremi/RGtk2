\alias{gdkPixmapCreateFromData}
\name{gdkPixmapCreateFromData}
\title{gdkPixmapCreateFromData}
\description{Create a two-color pixmap from data in XBM data.}
\usage{gdkPixmapCreateFromData(drawable = NULL, data, height, depth, 
    fg, bg)}
\arguments{
\item{\verb{drawable}}{a \code{\link{GdkDrawable}}, used to determine default values
for the new pixmap. Can be \code{NULL}, if the depth is given.}
\item{\verb{data}}{a pointer to the data.}
\item{\verb{height}}{the height of the new pixmap in pixels.}
\item{\verb{depth}}{the depth (number of bits per pixel) of the new pixmap.}
\item{\verb{fg}}{the foreground color.}
\item{\verb{bg}}{the background color.}
}
\value{[\code{\link{GdkPixmap}}] the \code{\link{GdkPixmap}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

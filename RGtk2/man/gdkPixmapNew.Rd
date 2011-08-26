\alias{gdkPixmapNew}
\name{gdkPixmapNew}
\title{gdkPixmapNew}
\description{Create a new pixmap with a given size and depth.}
\usage{gdkPixmapNew(drawable = NULL, width, height, depth = -1)}
\arguments{
\item{\verb{drawable}}{A \code{\link{GdkDrawable}}, used to determine default values
for the new pixmap. Can be \code{NULL} if \code{depth} is specified,}
\item{\verb{width}}{The width of the new pixmap in pixels.}
\item{\verb{height}}{The height of the new pixmap in pixels.}
\item{\verb{depth}}{The depth (number of bits per pixel) of the new pixmap.
If -1, and \code{drawable} is not \code{NULL}, the depth of the new
pixmap will be equal to that of \code{drawable}.}
}
\value{[\code{\link{GdkPixmap}}] the \code{\link{GdkPixmap}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

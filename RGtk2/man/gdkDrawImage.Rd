\alias{gdkDrawImage}
\name{gdkDrawImage}
\title{gdkDrawImage}
\description{Draws a \code{\link{GdkImage}} onto a drawable.
The depth of the \code{\link{GdkImage}} must match the depth of the \code{\link{GdkDrawable}}.}
\usage{gdkDrawImage(object, gc, image, xsrc, ysrc, xdest, ydest, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{image}}{[\code{\link{GdkImage}}]  the \code{\link{GdkImage}} to draw.}
\item{\code{xsrc}}{[integer]  the left edge of the source rectangle within \code{image}.}
\item{\code{ysrc}}{[integer]  the top of the source rectangle within \code{image}.}
\item{\code{xdest}}{[integer]  the x coordinate of the destination within \code{drawable}.}
\item{\code{ydest}}{[integer]  the y coordinate of the destination within \code{drawable}.}
\item{\code{width}}{[integer]  the width of the area to be copied, or -1 to make the area 
    extend to the right edge of \code{image}.}
\item{\code{height}}{[integer]  the height of the area to be copied, or -1 to make the area 
    extend to the bottom edge of \code{image}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

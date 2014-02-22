\alias{gdkDrawImage}
\name{gdkDrawImage}
\title{gdkDrawImage}
\description{Draws a \code{\link{GdkImage}} onto a drawable.
The depth of the \code{\link{GdkImage}} must match the depth of the \code{\link{GdkDrawable}}.}
\usage{gdkDrawImage(object, gc, image, xsrc, ysrc, xdest, ydest, width, 
    height)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\verb{gc}}{a \code{\link{GdkGC}}.}
\item{\verb{image}}{the \code{\link{GdkImage}} to draw.}
\item{\verb{xsrc}}{the left edge of the source rectangle within \code{image}.}
\item{\verb{ysrc}}{the top of the source rectangle within \code{image}.}
\item{\verb{xdest}}{the x coordinate of the destination within \code{drawable}.}
\item{\verb{ydest}}{the y coordinate of the destination within \code{drawable}.}
\item{\verb{width}}{the width of the area to be copied, or -1 to make the area
extend to the right edge of \code{image}.}
\item{\verb{height}}{the height of the area to be copied, or -1 to make the area
extend to the bottom edge of \code{image}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

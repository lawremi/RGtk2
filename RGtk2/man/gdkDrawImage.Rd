\alias{gdkDrawImage}
\name{gdkDrawImage}
\title{gdkDrawImage}
\description{Draws a \verb{\link{GdkImage}} onto a drawable.
The depth of the \verb{\link{GdkImage}} must match the depth of the \verb{\link{GdkDrawable}}.}
\usage{gdkDrawImage(object, gc, image, xsrc, ysrc, xdest, ydest, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}} (a \verb{\link{GdkWindow}} or a \verb{\link{GdkPixmap}}).}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}.}
\item{\verb{image}}{[\verb{\link{GdkImage}}]  the \verb{\link{GdkImage}} to draw.}
\item{\verb{xsrc}}{[integer]  the left edge of the source rectangle within \code{image}.}
\item{\verb{ysrc}}{[integer]  the top of the source rectangle within \code{image}.}
\item{\verb{xdest}}{[integer]  the x coordinate of the destination within \code{drawable}.}
\item{\verb{ydest}}{[integer]  the y coordinate of the destination within \code{drawable}.}
\item{\verb{width}}{[integer]  the width of the area to be copied, or -1 to make the area 
    extend to the right edge of \code{image}.}
\item{\verb{height}}{[integer]  the height of the area to be copied, or -1 to make the area 
    extend to the bottom edge of \code{image}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

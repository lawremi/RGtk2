\alias{gdkDrawArc}
\name{gdkDrawArc}
\title{gdkDrawArc}
\description{Draws an arc or a filled 'pie slice'. The arc is defined by the bounding
rectangle of the entire ellipse, and the start and end angles of the part 
of the ellipse to be drawn.}
\usage{gdkDrawArc(object, gc, filled, x, y, width, height, angle1, angle2)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{filled}}{[logical] \code{TRUE} if the arc should be filled, producing a 'pie slice'.}
\item{\code{x}}{[integer]  the x coordinate of the left edge of the bounding rectangle.}
\item{\code{y}}{[integer]  the y coordinate of the top edge of the bounding rectangle.}
\item{\code{width}}{[integer]  the width of the bounding rectangle.}
\item{\code{height}}{[integer]  the height of the bounding rectangle.}
\item{\code{angle1}}{[integer]  the start angle of the arc, relative to the 3 o'clock position,
    counter-clockwise, in 1/64ths of a degree.}
\item{\code{angle2}}{[integer]  the end angle of the arc, relative to \code{angle1}, in 1/64ths 
    of a degree.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

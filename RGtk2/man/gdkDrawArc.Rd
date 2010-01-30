\alias{gdkDrawArc}
\name{gdkDrawArc}
\title{gdkDrawArc}
\description{Draws an arc or a filled 'pie slice'. The arc is defined by the bounding
rectangle of the entire ellipse, and the start and end angles of the part 
of the ellipse to be drawn.}
\usage{gdkDrawArc(object, gc, filled, x, y, width, height, angle1, angle2)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}} (a \verb{\link{GdkWindow}} or a \verb{\link{GdkPixmap}}).}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}.}
\item{\verb{filled}}{[logical] \code{TRUE} if the arc should be filled, producing a 'pie slice'.}
\item{\verb{x}}{[integer]  the x coordinate of the left edge of the bounding rectangle.}
\item{\verb{y}}{[integer]  the y coordinate of the top edge of the bounding rectangle.}
\item{\verb{width}}{[integer]  the width of the bounding rectangle.}
\item{\verb{height}}{[integer]  the height of the bounding rectangle.}
\item{\verb{angle1}}{[integer]  the start angle of the arc, relative to the 3 o'clock position,
    counter-clockwise, in 1/64ths of a degree.}
\item{\verb{angle2}}{[integer]  the end angle of the arc, relative to \code{angle1}, in 1/64ths 
    of a degree.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

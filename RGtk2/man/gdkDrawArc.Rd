\alias{gdkDrawArc}
\name{gdkDrawArc}
\title{gdkDrawArc}
\description{Draws an arc or a filled 'pie slice'. The arc is defined by the bounding
rectangle of the entire ellipse, and the start and end angles of the part 
of the ellipse to be drawn.}
\usage{gdkDrawArc(object, gc, filled, x, y, width, height, angle1, angle2)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\verb{gc}}{a \code{\link{GdkGC}}.}
\item{\verb{filled}}{\code{TRUE} if the arc should be filled, producing a 'pie slice'.}
\item{\verb{x}}{the x coordinate of the left edge of the bounding rectangle.}
\item{\verb{y}}{the y coordinate of the top edge of the bounding rectangle.}
\item{\verb{width}}{the width of the bounding rectangle.}
\item{\verb{height}}{the height of the bounding rectangle.}
\item{\verb{angle1}}{the start angle of the arc, relative to the 3 o'clock position,
counter-clockwise, in 1/64ths of a degree.}
\item{\verb{angle2}}{the end angle of the arc, relative to \code{angle1}, in 1/64ths
of a degree.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gdkDrawRectangle}
\name{gdkDrawRectangle}
\title{gdkDrawRectangle}
\description{Draws a rectangular outline or filled rectangle, using the foreground color
and other attributes of the \code{\link{GdkGC}}.}
\usage{gdkDrawRectangle(object, gc, filled, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\verb{gc}}{a \code{\link{GdkGC}}.}
\item{\verb{filled}}{\code{TRUE} if the rectangle should be filled.}
\item{\verb{x}}{the x coordinate of the left edge of the rectangle.}
\item{\verb{y}}{the y coordinate of the top edge of the rectangle.}
\item{\verb{width}}{the width of the rectangle.}
\item{\verb{height}}{the height of the rectangle.}
}
\details{A rectangle drawn filled is 1 pixel smaller in both dimensions than a 
rectangle outlined. Calling 
\code{gdk_draw_rectangle (window, gc, TRUE, 0, 0, 20, 20)} 
results in a filled rectangle 20 pixels wide and 20 pixels high. Calling
\code{gdk_draw_rectangle (window, gc, FALSE, 0, 0, 20, 20)} 
results in an outlined rectangle with corners at (0, 0), (0, 20), (20, 20),
and (20, 0), which makes it 21 pixels wide and 21 pixels high.
  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

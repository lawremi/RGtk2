\alias{gtkWidgetSetDoubleBuffered}
\name{gtkWidgetSetDoubleBuffered}
\title{gtkWidgetSetDoubleBuffered}
\description{Widgets are double buffered by default; you can use this function
to turn off the buffering. "Double buffered" simply means that
\code{\link{gdkWindowBeginPaintRegion}} and \code{\link{gdkWindowEndPaint}} are called
automatically around expose events sent to the
widget. \code{gdkWindowBeginPaint()} diverts all drawing to a widget's
window to an offscreen buffer, and \code{\link{gdkWindowEndPaint}} draws the
buffer to the screen. The result is that users see the window
update in one smooth step, and don't see individual graphics
primitives being rendered.}
\usage{gtkWidgetSetDoubleBuffered(object, double.buffered)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{double.buffered}}{\code{TRUE} to double-buffer a widget}
}
\details{In very simple terms, double buffered widgets don't flicker,
so you would only use this function to turn off double buffering
if you had special needs and really knew what you were doing.
  
Note: if you turn off double-buffering, you have to handle
expose events, since even the clearing to the background color or 
pixmap will not happen automatically (as it is done in 
\code{gdkWindowBeginPaint()}).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

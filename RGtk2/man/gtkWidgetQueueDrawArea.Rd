\alias{gtkWidgetQueueDrawArea}
\name{gtkWidgetQueueDrawArea}
\title{gtkWidgetQueueDrawArea}
\description{Invalidates the rectangular area of \code{widget} defined by \code{x}, \code{y},
\code{width} and \code{height} by calling \code{\link{gdkWindowInvalidateRect}} on the
widget's window and all its child windows. Once the main loop
becomes idle (after the current batch of events has been processed,
roughly), the window will receive expose events for the union of
all regions that have been invalidated.}
\usage{gtkWidgetQueueDrawArea(object, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{x}}{x coordinate of upper-left corner of rectangle to redraw}
\item{\verb{y}}{y coordinate of upper-left corner of rectangle to redraw}
\item{\verb{width}}{width of region to draw}
\item{\verb{height}}{height of region to draw}
}
\details{Normally you would only use this function in widget
implementations. You might also use it, or
\code{\link{gdkWindowInvalidateRect}} directly, to schedule a redraw of a
\code{\link{GtkDrawingArea}} or some portion thereof.
  
Frequently you can just call \code{\link{gdkWindowInvalidateRect}} or
\code{\link{gdkWindowInvalidateRegion}} instead of this function. Those
functions will invalidate only a single window, instead of the
widget and all its children.
  
The advantage of adding to the invalidated region compared to
simply drawing immediately is efficiency; using an invalid region
ensures that you only have to redraw one time.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

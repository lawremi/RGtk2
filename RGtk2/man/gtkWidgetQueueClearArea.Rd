\alias{gtkWidgetQueueClearArea}
\name{gtkWidgetQueueClearArea}
\title{gtkWidgetQueueClearArea}
\description{
This function is no longer different from
\code{\link{gtkWidgetQueueDrawArea}}, though it once was. Now it just calls
\code{\link{gtkWidgetQueueDrawArea}}. Originally
\code{\link{gtkWidgetQueueClearArea}} would force a redraw of the
background for \code{GTK_NO_WINDOW} widgets, and
\code{\link{gtkWidgetQueueDrawArea}} would not. Now both functions ensure
the background will be redrawn.
\strong{WARNING: \code{gtk_widget_queue_clear_area} has been deprecated since version 2.2 and should not be used in newly-written code. Use \code{\link{gtkWidgetQueueDrawArea}} instead.}
}
\usage{gtkWidgetQueueClearArea(object, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{x}}{x coordinate of upper-left corner of rectangle to redraw}
\item{\verb{y}}{y coordinate of upper-left corner of rectangle to redraw}
\item{\verb{width}}{width of region to draw}
\item{\verb{height}}{height of region to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

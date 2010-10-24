\alias{gtkWidgetDraw}
\name{gtkWidgetDraw}
\title{gtkWidgetDraw}
\description{
In GTK+ 1.2, this function would immediately render the
region \code{area} of a widget, by invoking the virtual draw method of a
widget. In GTK+ 2.0, the draw method is gone, and instead
\code{\link{gtkWidgetDraw}} simply invalidates the specified region of the
widget, then updates the invalid region of the widget immediately.
Usually you don't want to update the region immediately for
performance reasons, so in general \code{\link{gtkWidgetQueueDrawArea}} is
a better choice if you want to draw a region of a widget.
\strong{WARNING: \code{gtk_widget_draw} is deprecated and should not be used in newly-written code.}
}
\usage{gtkWidgetDraw(object, area)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{area}}{area to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

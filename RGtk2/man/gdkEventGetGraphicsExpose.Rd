\alias{gdkEventGetGraphicsExpose}
\name{gdkEventGetGraphicsExpose}
\title{gdkEventGetGraphicsExpose}
\description{
Waits for a GraphicsExpose or NoExpose event from the X server.
This is used in the \verb{GtkText} and \code{\link{GtkCList}} widgets in GTK+ to make sure any
GraphicsExpose events are handled before the widget is scrolled.
\strong{WARNING: \code{gdk_event_get_graphics_expose} has been deprecated since version 2.18 and should not be used in newly-written code. }
}
\usage{gdkEventGetGraphicsExpose(window)}
\arguments{\item{\verb{window}}{the \code{\link{GdkWindow}} to wait for the events for.}}
\value{[\code{\link{GdkEvent}}] a \code{\link{GdkEventExpose}} if a GraphicsExpose was received, or \code{NULL} if a
NoExpose event was received.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

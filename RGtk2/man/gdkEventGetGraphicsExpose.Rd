\alias{gdkEventGetGraphicsExpose}
\name{gdkEventGetGraphicsExpose}
\title{gdkEventGetGraphicsExpose}
\description{Waits for a GraphicsExpose or NoExpose event from the X server.
This is used in the \code{GtkText} and \code{\link{GtkCList}} widgets in GTK+ to make sure any
GraphicsExpose events are handled before the widget is scrolled.}
\usage{gdkEventGetGraphicsExpose(window)}
\arguments{\item{\code{window}}{[\code{\link{GdkWindow}}]  the \code{\link{GdkWindow}} to wait for the events for.}}
\value{[\code{\link{GdkEvent}}]   a \code{\link{GdkEventExpose}} if a GraphicsExpose was received, or \code{NULL} if a
NoExpose event was received.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

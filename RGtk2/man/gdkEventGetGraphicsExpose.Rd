\alias{gdkEventGetGraphicsExpose}
\name{gdkEventGetGraphicsExpose}
\title{gdkEventGetGraphicsExpose}
\description{Waits for a GraphicsExpose or NoExpose event from the X server.
This is used in the \verb{GtkText} and \verb{\link{GtkCList}} widgets in GTK+ to make sure any
GraphicsExpose events are handled before the widget is scrolled.}
\usage{gdkEventGetGraphicsExpose(window)}
\arguments{\item{\verb{window}}{[\verb{\link{GdkWindow}}]  the \verb{\link{GdkWindow}} to wait for the events for.}}
\value{[\verb{\link{GdkEvent}}]   a \verb{\link{GdkEventExpose}} if a GraphicsExpose was received, or \code{NULL} if a
NoExpose event was received.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

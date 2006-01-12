\alias{gtkMainDoEvent}
\name{gtkMainDoEvent}
\title{gtkMainDoEvent}
\description{Processes a single GDK event. This is public only to allow filtering of events
between GDK and GTK+. You will not usually need to call this function directly.}
\usage{gtkMainDoEvent(event)}
\arguments{\item{\code{event}}{[\code{\link{GdkEvent}}] An event to process (normally) passed by GDK.}}
\details{While you should not call this function directly, you might want to know
how exactly events are handled. So here is what this function does with 
the event:}
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

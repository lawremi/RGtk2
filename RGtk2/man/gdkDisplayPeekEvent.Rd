\alias{gdkDisplayPeekEvent}
\name{gdkDisplayPeekEvent}
\title{gdkDisplayPeekEvent}
\description{Gets a copy of the first \verb{\link{GdkEvent}} in the \code{display}'s event queue, without
removing the event from the queue.  (Note that this function will
not get more events from the windowing system.  It only checks the events
that have already been moved to the GDK event queue.)}
\usage{gdkDisplayPeekEvent(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GdkDisplay}}]  a \verb{\link{GdkDisplay}} }}
\details{  Since  2.2}
\value{[\verb{\link{GdkEvent}}]  a copy of the first \verb{\link{GdkEvent}} on the event queue, or \code{NULL} 
if no events are in the queue.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

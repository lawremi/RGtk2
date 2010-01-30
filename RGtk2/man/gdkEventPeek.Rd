\alias{gdkEventPeek}
\name{gdkEventPeek}
\title{gdkEventPeek}
\description{If there is an event waiting in the event queue of some open
display, returns a copy of it. See \code{\link{gdkDisplayPeekEvent}}.}
\usage{gdkEventPeek()}
\value{[\verb{\link{GdkEvent}}]  a copy of the first \verb{\link{GdkEvent}} on some event queue, or \code{NULL} if no
events are in any queues.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

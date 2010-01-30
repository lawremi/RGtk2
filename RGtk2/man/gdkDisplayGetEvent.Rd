\alias{gdkDisplayGetEvent}
\name{gdkDisplayGetEvent}
\title{gdkDisplayGetEvent}
\description{Gets the next \verb{\link{GdkEvent}} to be processed for \code{display}, fetching events from the
windowing system if necessary.}
\usage{gdkDisplayGetEvent(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GdkDisplay}}]  a \verb{\link{GdkDisplay}}}}
\details{  Since  2.2}
\value{[\verb{\link{GdkEvent}}]  the next \verb{\link{GdkEvent}} to be processed, or \code{NULL} if no events
are pending.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

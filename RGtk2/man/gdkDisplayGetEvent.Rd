\alias{gdkDisplayGetEvent}
\name{gdkDisplayGetEvent}
\title{gdkDisplayGetEvent}
\description{Gets the next \code{\link{GdkEvent}} to be processed for \code{display}, fetching events from the
windowing system if necessary.}
\usage{gdkDisplayGetEvent(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDisplay}}}}
\details{Since 2.2}
\value{[\code{\link{GdkEvent}}] the next \code{\link{GdkEvent}} to be processed, or \code{NULL} if no events
are pending.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

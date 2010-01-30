\alias{gdkEventGet}
\name{gdkEventGet}
\title{gdkEventGet}
\description{Checks all open displays for a \verb{\link{GdkEvent}} to process,to be processed
on, fetching events from the windowing system if necessary.
See \code{\link{gdkDisplayGetEvent}}.}
\usage{gdkEventGet()}
\value{[\verb{\link{GdkEvent}}]  the next \verb{\link{GdkEvent}} to be processed, or \code{NULL} if no events
are pending.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

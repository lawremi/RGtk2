\alias{gdkEventCopy}
\name{gdkEventCopy}
\title{gdkEventCopy}
\description{Copies a \code{\link{GdkEvent}}, copying or incrementing the reference count of the
resources associated with it (e.g. \code{\link{GdkWindow}}'s and strings).}
\usage{gdkEventCopy(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkEvent}}}}
\value{[\code{\link{GdkEvent}}] a copy of \code{event}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

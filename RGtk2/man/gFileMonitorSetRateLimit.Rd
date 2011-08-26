\alias{gFileMonitorSetRateLimit}
\name{gFileMonitorSetRateLimit}
\title{gFileMonitorSetRateLimit}
\description{Sets the rate limit to which the \code{monitor} will report
consecutive change events to the same file.}
\usage{gFileMonitorSetRateLimit(object, limit.msecs)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileMonitor}}.}
\item{\verb{limit.msecs}}{a integer with the limit in milliseconds to
poll for changes.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

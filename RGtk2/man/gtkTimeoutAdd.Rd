\alias{gtkTimeoutAdd}
\name{gtkTimeoutAdd}
\title{gtkTimeoutAdd}
\description{
Registers a function to be called periodically. The function will be called
repeatedly after \code{interval} milliseconds until it returns \code{FALSE} at which
point the timeout is destroyed and will not be called again.
\strong{WARNING: \code{gtk_timeout_add} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{gTimeoutAdd}} instead.}
}
\usage{gtkTimeoutAdd(interval, fun, data = NULL)}
\arguments{
\item{\verb{interval}}{The time between calls to the function, in milliseconds
(1/1000ths of a second.)}
\item{\verb{data}}{The data to pass to the function.}
}
\value{[numeric] A unique id for the event source.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

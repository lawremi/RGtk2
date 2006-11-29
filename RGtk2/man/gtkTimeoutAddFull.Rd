\alias{gtkTimeoutAddFull}
\name{gtkTimeoutAddFull}
\title{gtkTimeoutAddFull}
\description{
Registers a function to be called periodically. The function will be called
repeatedly after \code{interval} milliseconds until it returns \code{FALSE} at which 
point the timeout is destroyed and will not be called again.
\strong{WARNING: \code{gtk_timeout_add_full} is deprecated and should not be used in newly-written code. Use \code{gTimeoutAddFull()} instead.}
}
\usage{gtkTimeoutAddFull(interval, fun, data = NULL)}
\arguments{
\item{\code{interval}}{[numeric] The time between calls to the function, in milliseconds 
	(1/1000ths of a second.)}
\item{\code{data}}{[R object] The data to pass to the function.}
}
\value{[numeric] A unique id for the event source.}

\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

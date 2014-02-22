\alias{gDataInputStreamReadUntilAsync}
\name{gDataInputStreamReadUntilAsync}
\title{gDataInputStreamReadUntilAsync}
\description{The asynchronous version of \code{\link{gDataInputStreamReadUntil}}.
It is an error to have two outstanding calls to this function.}
\usage{gDataInputStreamReadUntilAsync(object, stop.chars, io.priority, 
    cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a given \code{\link{GDataInputStream}}.}
\item{\verb{stop.chars}}{characters to terminate the read.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{callback to call when the request is satisfied.}
\item{\verb{user.data}}{the data to pass to callback function.}
}
\details{When the operation is finished, \code{callback} will be called. You
can then call \code{\link{gDataInputStreamReadUntilFinish}} to get
the result of the operation.
  Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

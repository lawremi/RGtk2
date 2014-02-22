\alias{gOutputStreamFlushAsync}
\name{gOutputStreamFlushAsync}
\title{gOutputStreamFlushAsync}
\description{Flushes a stream asynchronously.
For behaviour details see \code{\link{gOutputStreamFlush}}.}
\usage{gOutputStreamFlushAsync(object, io.priority = 0, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GOutputStream}}.}
\item{\verb{io.priority}}{the io priority of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{When the operation is finished \code{callback} will be 
called. You can then call \code{\link{gOutputStreamFlushFinish}} to get the 
result of the operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

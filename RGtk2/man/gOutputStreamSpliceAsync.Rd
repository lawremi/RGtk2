\alias{gOutputStreamSpliceAsync}
\name{gOutputStreamSpliceAsync}
\title{gOutputStreamSpliceAsync}
\description{Splices a stream asynchronously.
When the operation is finished \code{callback} will be called.
You can then call \code{\link{gOutputStreamSpliceFinish}} to get the 
result of the operation.}
\usage{gOutputStreamSpliceAsync(object, source, flags = "G_OUTPUT_STREAM_SPLICE_NONE", 
    io.priority = 0, cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GOutputStream}}.}
\item{\verb{source}}{a \code{\link{GInputStream}}.}
\item{\verb{flags}}{a set of \code{\link{GOutputStreamSpliceFlags}}.}
\item{\verb{io.priority}}{the io priority of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}.}
\item{\verb{user.data}}{user data passed to \code{callback}.}
}
\details{For the synchronous, blocking version of this function, see 
\code{\link{gOutputStreamSplice}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

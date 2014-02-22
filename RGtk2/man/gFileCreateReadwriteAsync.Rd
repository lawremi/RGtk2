\alias{gFileCreateReadwriteAsync}
\name{gFileCreateReadwriteAsync}
\title{gFileCreateReadwriteAsync}
\description{Asynchronously creates a new file and returns a stream for reading and
writing to it. The file must not already exist.}
\usage{gFileCreateReadwriteAsync(object, flags, io.priority, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}}
\item{\verb{flags}}{a set of \code{\link{GFileCreateFlags}}}
\item{\verb{io.priority}}{the I/O priority
of the request}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For more details, see \code{\link{gFileCreateReadwrite}} which is
the synchronous version of this call.
  
When the operation is finished, \code{callback} will be called. You can then
call \code{\link{gFileCreateReadwriteFinish}} to get the result of the operation.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

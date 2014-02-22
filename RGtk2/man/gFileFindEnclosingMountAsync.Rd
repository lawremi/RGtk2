\alias{gFileFindEnclosingMountAsync}
\name{gFileFindEnclosingMountAsync}
\title{gFileFindEnclosingMountAsync}
\description{Asynchronously gets the mount for the file.}
\usage{gFileFindEnclosingMountAsync(object, io.priority = 0, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GFile}}}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For more details, see \code{\link{gFileFindEnclosingMount}} which is
the synchronous version of this call.
  
When the operation is finished, \code{callback} will be called. You can then call
\code{\link{gFileFindEnclosingMountFinish}} to get the result of the operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

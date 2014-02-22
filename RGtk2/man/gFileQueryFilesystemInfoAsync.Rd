\alias{gFileQueryFilesystemInfoAsync}
\name{gFileQueryFilesystemInfoAsync}
\title{gFileQueryFilesystemInfoAsync}
\description{Asynchronously gets the requested information about the filesystem
that the specified \code{file} is on. The result is a \code{\link{GFileInfo}} object
that contains key-value attributes (such as type or size for the
file).}
\usage{gFileQueryFilesystemInfoAsync(object, attributes, io.priority, 
    cancellable, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{attributes}}{an attribute query string.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For more details, see \code{\link{gFileQueryFilesystemInfo}} which is the
synchronous version of this call.
  
When the operation is finished, \code{callback} will be called. You can
then call \code{\link{gFileQueryInfoFinish}} to get the result of the
operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

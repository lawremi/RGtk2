\alias{gFileUnmountMountableWithOperation}
\name{gFileUnmountMountableWithOperation}
\title{gFileUnmountMountableWithOperation}
\description{Unmounts a file of type G_FILE_TYPE_MOUNTABLE.}
\usage{gFileUnmountMountableWithOperation(object, flags, mount.operation, 
    cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{flags}}{flags affecting the operation}
\item{\verb{mount.operation}}{a \code{\link{GMountOperation}}, or \code{NULL} to avoid user interaction.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied, or \code{NULL}.}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.
  
When the operation is finished, \code{callback} will be called. You can then call
\code{\link{gFileUnmountMountableFinish}} to get the result of the operation.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gFileEjectMountable}
\name{gFileEjectMountable}
\title{gFileEjectMountable}
\description{
Starts an asynchronous eject on a mountable.  
When this operation has completed, \code{callback} will be called with
\code{user.user} data, and the operation can be finalized with 
\code{\link{gFileEjectMountableFinish}}.
\strong{WARNING: \code{g_file_eject_mountable} has been deprecated since version 2.22 and should not be used in newly-written code. Use \code{\link{gFileEjectMountableWithOperation}} instead.}
}
\usage{gFileEjectMountable(object, flags = "G_MOUNT_UNMOUNT_NONE", cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{flags}}{flags affecting the operation}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied, or \code{NULL}.}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

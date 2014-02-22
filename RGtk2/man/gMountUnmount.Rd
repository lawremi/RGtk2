\alias{gMountUnmount}
\name{gMountUnmount}
\title{gMountUnmount}
\description{
Unmounts a mount. This is an asynchronous operation, and is 
finished by calling \code{\link{gMountUnmountFinish}} with the \code{mount} 
and \code{\link{GAsyncResult}} data returned in the \code{callback}.
\strong{WARNING: \code{g_mount_unmount} has been deprecated since version 2.22 and should not be used in newly-written code. Use \code{\link{gMountUnmountWithOperation}} instead.}
}
\usage{gMountUnmount(object, flags = "G_MOUNT_UNMOUNT_NONE", cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GMount}}.}
\item{\verb{flags}}{flags affecting the operation}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}, or \code{NULL}.}
\item{\verb{user.data}}{user data passed to \code{callback}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

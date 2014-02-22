\alias{gMountUnmountWithOperation}
\name{gMountUnmountWithOperation}
\title{gMountUnmountWithOperation}
\description{Unmounts a mount. This is an asynchronous operation, and is
finished by calling \code{\link{gMountUnmountWithOperationFinish}} with the \code{mount} 
and \code{\link{GAsyncResult}} data returned in the \code{callback}.}
\usage{gMountUnmountWithOperation(object, flags, mount.operation, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GMount}}.}
\item{\verb{flags}}{flags affecting the operation}
\item{\verb{mount.operation}}{a \code{\link{GMountOperation}} or \code{NULL} to avoid user interaction.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}, or \code{NULL}.}
\item{\verb{user.data}}{user data passed to \code{callback}.}
}
\details{Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

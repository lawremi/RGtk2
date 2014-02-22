\alias{gMountRemount}
\name{gMountRemount}
\title{gMountRemount}
\description{Remounts a mount. This is an asynchronous operation, and is 
finished by calling \code{\link{gMountRemountFinish}} with the \code{mount} 
and \verb{GAsyncResults} data returned in the \code{callback}.}
\usage{gMountRemount(object, flags, mount.operation, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GMount}}.}
\item{\verb{flags}}{flags affecting the operation}
\item{\verb{mount.operation}}{a \code{\link{GMountOperation}} or \code{NULL} to avoid user interaction.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}, or \code{NULL}.}
\item{\verb{user.data}}{user data passed to \code{callback}.}
}
\details{Remounting is useful when some setting affecting the operation
of the volume has been changed, as these may need a remount to
take affect. While this is semantically equivalent with unmounting
and then remounting not all backends might need to actually be
unmounted.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

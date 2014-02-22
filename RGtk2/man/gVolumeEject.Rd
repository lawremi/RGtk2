\alias{gVolumeEject}
\name{gVolumeEject}
\title{gVolumeEject}
\description{
Ejects a volume. This is an asynchronous operation, and is
finished by calling \code{\link{gVolumeEjectFinish}} with the \code{volume}
and \code{\link{GAsyncResult}} returned in the \code{callback}.
\strong{WARNING: \code{g_volume_eject} has been deprecated since version 2.22 and should not be used in newly-written code. Use \code{\link{gVolumeEjectWithOperation}} instead.}
}
\usage{gVolumeEject(object, flags = "G_MOUNT_UNMOUNT_NONE", cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GVolume}}.}
\item{\verb{flags}}{flags affecting the unmount if required for eject}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}, or \code{NULL}.}
\item{\verb{user.data}}{user data that gets passed to \code{callback}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

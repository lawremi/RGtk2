\alias{gVolumeMount}
\name{gVolumeMount}
\title{gVolumeMount}
\description{Mounts a volume. This is an asynchronous operation, and is
finished by calling \code{\link{gVolumeMountFinish}} with the \code{volume}
and \code{\link{GAsyncResult}} returned in the \code{callback}.}
\usage{gVolumeMount(object, flags, mount.operation, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GVolume}}.}
\item{\verb{flags}}{flags affecting the operation}
\item{\verb{mount.operation}}{a \code{\link{GMountOperation}} or \code{NULL} to avoid user interaction.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}, or \code{NULL}.}
\item{\verb{user.data}}{user data that gets passed to \code{callback}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

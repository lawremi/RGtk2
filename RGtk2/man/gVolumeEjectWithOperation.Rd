\alias{gVolumeEjectWithOperation}
\name{gVolumeEjectWithOperation}
\title{gVolumeEjectWithOperation}
\description{Ejects a volume. This is an asynchronous operation, and is
finished by calling \code{\link{gVolumeEjectWithOperationFinish}} with the \code{volume}
and \code{\link{GAsyncResult}} data returned in the \code{callback}.}
\usage{gVolumeEjectWithOperation(object, flags, mount.operation, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GVolume}}.}
\item{\verb{flags}}{flags affecting the unmount if required for eject}
\item{\verb{mount.operation}}{a \code{\link{GMountOperation}} or \code{NULL} to avoid user interaction.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}, or \code{NULL}.}
\item{\verb{user.data}}{user data passed to \code{callback}.}
}
\details{Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

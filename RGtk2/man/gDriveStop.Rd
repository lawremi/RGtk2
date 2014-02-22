\alias{gDriveStop}
\name{gDriveStop}
\title{gDriveStop}
\description{Asynchronously stops a drive.}
\usage{gDriveStop(object, flags, mount.operation, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GDrive}}.}
\item{\verb{flags}}{flags affecting the unmount if required for stopping.}
\item{\verb{mount.operation}}{a \code{\link{GMountOperation}} or \code{NULL} to avoid user interaction.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}, or \code{NULL}.}
\item{\verb{user.data}}{user data to pass to \code{callback}}
}
\details{When the operation is finished, \code{callback} will be called.
You can then call \code{\link{gDriveStopFinish}} to obtain the
result of the operation.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gDriveStart}
\name{gDriveStart}
\title{gDriveStart}
\description{Asynchronously starts a drive.}
\usage{gDriveStart(object, flags, mount.operation, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GDrive}}.}
\item{\verb{flags}}{flags affecting the start operation.}
\item{\verb{mount.operation}}{a \code{\link{GMountOperation}} or \code{NULL} to avoid user interaction.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}, or \code{NULL}.}
\item{\verb{user.data}}{user data to pass to \code{callback}}
}
\details{When the operation is finished, \code{callback} will be called.
You can then call \code{\link{gDriveStartFinish}} to obtain the
result of the operation.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

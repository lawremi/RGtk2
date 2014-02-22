\alias{gDriveEject}
\name{gDriveEject}
\title{gDriveEject}
\description{
Asynchronously ejects a drive.
\strong{WARNING: \code{g_drive_eject} has been deprecated since version 2.22 and should not be used in newly-written code. Use \code{\link{gDriveEjectWithOperation}} instead.}
}
\usage{gDriveEject(object, flags = "G_MOUNT_UNMOUNT_NONE", cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GDrive}}.}
\item{\verb{flags}}{flags affecting the unmount if required for eject}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}, or \code{NULL}.}
\item{\verb{user.data}}{user data to pass to \code{callback}}
}
\details{When the operation is finished, \code{callback} will be called.
You can then call \code{\link{gDriveEjectFinish}} to obtain the
result of the operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

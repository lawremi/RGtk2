\alias{gDriveEjectFinish}
\name{gDriveEjectFinish}
\title{gDriveEjectFinish}
\description{
Finishes ejecting a drive.
\strong{WARNING: \code{g_drive_eject_finish} has been deprecated since version 2.22 and should not be used in newly-written code. Use \code{\link{gDriveEjectWithOperationFinish}} instead.}
}
\usage{gDriveEjectFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GDrive}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the drive has been ejected successfully,
\code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gVolumeEjectFinish}
\name{gVolumeEjectFinish}
\title{gVolumeEjectFinish}
\description{
Finishes ejecting a volume. If any errors occured during the operation,
\code{error} will be set to contain the errors and \code{FALSE} will be returned.
\strong{WARNING: \code{g_volume_eject_finish} has been deprecated since version 2.22 and should not be used in newly-written code. Use \code{\link{gVolumeEjectWithOperationFinish}} instead.}
}
\usage{gVolumeEjectFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{pointer to a \code{\link{GVolume}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, \code{FALSE} if operation failed.}
\item{\verb{error}}{a \code{\link{GError}} location to store an error, or \code{NULL} to ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

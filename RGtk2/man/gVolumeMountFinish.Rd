\alias{gVolumeMountFinish}
\name{gVolumeMountFinish}
\title{gVolumeMountFinish}
\description{Finishes mounting a volume. If any errors occured during the operation,
\code{error} will be set to contain the errors and \code{FALSE} will be returned.}
\usage{gVolumeMountFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GVolume}}}
\item{\verb{result}}{a \code{\link{GAsyncResult}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If the mount operation succeeded, \code{\link{gVolumeGetMount}} on \code{volume}
is guaranteed to return the mount right after calling this
function; there's no need to listen for the 'mount-added' signal on
\code{\link{GVolumeMonitor}}.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, \code{FALSE} if operation failed.}
\item{\verb{error}}{a \code{\link{GError}} location to store an error, or \code{NULL} to ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

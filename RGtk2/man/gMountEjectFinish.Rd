\alias{gMountEjectFinish}
\name{gMountEjectFinish}
\title{gMountEjectFinish}
\description{
Finishes ejecting a mount. If any errors occurred during the operation, 
\code{error} will be set to contain the errors and \code{FALSE} will be returned.
\strong{WARNING: \code{g_mount_eject_finish} has been deprecated since version 2.22 and should not be used in newly-written code. Use \code{\link{gMountEjectWithOperationFinish}} instead.}
}
\usage{gMountEjectFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GMount}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the mount was successfully ejected. \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

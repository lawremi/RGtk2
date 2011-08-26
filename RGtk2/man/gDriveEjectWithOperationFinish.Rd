\alias{gDriveEjectWithOperationFinish}
\name{gDriveEjectWithOperationFinish}
\title{gDriveEjectWithOperationFinish}
\description{Finishes ejecting a drive. If any errors occurred during the operation,
\code{error} will be set to contain the errors and \code{FALSE} will be returned.}
\usage{gDriveEjectWithOperationFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GDrive}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the drive was successfully ejected. \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

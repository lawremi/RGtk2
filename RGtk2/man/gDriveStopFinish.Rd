\alias{gDriveStopFinish}
\name{gDriveStopFinish}
\title{gDriveStopFinish}
\description{Finishes stopping a drive.}
\usage{gDriveStopFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GDrive}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the drive has been stopped successfully,
\code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

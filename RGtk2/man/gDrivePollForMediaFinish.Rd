\alias{gDrivePollForMediaFinish}
\name{gDrivePollForMediaFinish}
\title{gDrivePollForMediaFinish}
\description{Finishes an operation started with \code{\link{gDrivePollForMedia}} on a drive.}
\usage{gDrivePollForMediaFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GDrive}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the drive has been poll_for_mediaed successfully,
\code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

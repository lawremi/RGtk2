\alias{gFileMountEnclosingVolumeFinish}
\name{gFileMountEnclosingVolumeFinish}
\title{gFileMountEnclosingVolumeFinish}
\description{Finishes a mount operation started by \code{\link{gFileMountEnclosingVolume}}.}
\usage{gFileMountEnclosingVolumeFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if successful. If an error
has occurred, this function will return \code{FALSE} and set \code{error}
appropriately if present.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

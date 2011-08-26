\alias{gFileMountMountableFinish}
\name{gFileMountMountableFinish}
\title{gFileMountMountableFinish}
\description{Finishes a mount operation. See \code{\link{gFileMountMountable}} for details.}
\usage{gFileMountMountableFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Finish an asynchronous mount operation that was started 
with \code{\link{gFileMountMountable}}.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFile}}] a \code{\link{GFile}} or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

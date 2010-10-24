\alias{gFileStopMountableFinish}
\name{gFileStopMountableFinish}
\title{gFileStopMountableFinish}
\description{Finishes an stop operation, see \code{\link{gFileStopMountable}} for details.}
\usage{gFileStopMountableFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Finish an asynchronous stop operation that was started
with \code{\link{gFileStopMountable}}.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the operation finished successfully. \code{FALSE}
otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gFilePollMountableFinish}
\name{gFilePollMountableFinish}
\title{gFilePollMountableFinish}
\description{Finishes a poll operation. See \code{\link{gFilePollMountable}} for details.}
\usage{gFilePollMountableFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Finish an asynchronous poll operation that was polled
with \code{\link{gFilePollMountable}}.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the operation finished successfully. \code{FALSE}
otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

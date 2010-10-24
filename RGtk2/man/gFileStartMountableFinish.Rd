\alias{gFileStartMountableFinish}
\name{gFileStartMountableFinish}
\title{gFileStartMountableFinish}
\description{Finishes a start operation. See \code{\link{gFileStartMountable}} for details.}
\usage{gFileStartMountableFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Finish an asynchronous start operation that was started
with \code{\link{gFileStartMountable}}.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the operation finished successfully. \code{FALSE}
otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

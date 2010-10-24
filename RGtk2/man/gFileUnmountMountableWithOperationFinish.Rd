\alias{gFileUnmountMountableWithOperationFinish}
\name{gFileUnmountMountableWithOperationFinish}
\title{gFileUnmountMountableWithOperationFinish}
\description{Finishes an unmount operation, see \code{\link{gFileUnmountMountableWithOperation}} for details.}
\usage{gFileUnmountMountableWithOperationFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Finish an asynchronous unmount operation that was started
with \code{\link{gFileUnmountMountableWithOperation}}.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the operation finished successfully. \code{FALSE}
otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

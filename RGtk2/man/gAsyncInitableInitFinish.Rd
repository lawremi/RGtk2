\alias{gAsyncInitableInitFinish}
\name{gAsyncInitableInitFinish}
\title{gAsyncInitableInitFinish}
\description{Finishes asynchronous initialization and returns the result.
See \code{\link{gAsyncInitableInitAsync}}.}
\usage{gAsyncInitableInitFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GAsyncInitable}}.}
\item{\verb{res}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if successful. If an error has occurred, this function
will return \code{FALSE} and set \code{error} appropriately if present.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

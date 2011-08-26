\alias{gIOStreamCloseFinish}
\name{gIOStreamCloseFinish}
\title{gIOStreamCloseFinish}
\description{Closes a stream.}
\usage{gIOStreamCloseFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GIOStream}}}
\item{\verb{result}}{a \code{\link{GAsyncResult}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if stream was successfully closed, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

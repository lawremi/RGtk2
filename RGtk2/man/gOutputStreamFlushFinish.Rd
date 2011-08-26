\alias{gOutputStreamFlushFinish}
\name{gOutputStreamFlushFinish}
\title{gOutputStreamFlushFinish}
\description{Finishes flushing an output stream.}
\usage{gOutputStreamFlushFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GOutputStream}}.}
\item{\verb{result}}{a GAsyncResult.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if flush operation suceeded, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

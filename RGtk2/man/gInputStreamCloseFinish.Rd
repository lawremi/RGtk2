\alias{gInputStreamCloseFinish}
\name{gInputStreamCloseFinish}
\title{gInputStreamCloseFinish}
\description{Finishes closing a stream asynchronously, started from \code{\link{gInputStreamCloseAsync}}.}
\usage{gInputStreamCloseFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GInputStream}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the stream was closed successfully.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

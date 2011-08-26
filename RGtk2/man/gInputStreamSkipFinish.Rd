\alias{gInputStreamSkipFinish}
\name{gInputStreamSkipFinish}
\title{gInputStreamSkipFinish}
\description{Finishes a stream skip operation.}
\usage{gInputStreamSkipFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GInputStream}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[integer] the size of the bytes skipped, or \code{-1} on error.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

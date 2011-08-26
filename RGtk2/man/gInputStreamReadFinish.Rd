\alias{gInputStreamReadFinish}
\name{gInputStreamReadFinish}
\title{gInputStreamReadFinish}
\description{Finishes an asynchronous stream read operation.}
\usage{gInputStreamReadFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GInputStream}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[integer] number of bytes read in, or -1 on error.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gOutputStreamWriteFinish}
\name{gOutputStreamWriteFinish}
\title{gOutputStreamWriteFinish}
\description{Finishes a stream write operation.}
\usage{gOutputStreamWriteFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GOutputStream}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[integer] a \verb{integer} containing the number of bytes written to the stream.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

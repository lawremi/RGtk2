\alias{gBufferedInputStreamFillFinish}
\name{gBufferedInputStreamFillFinish}
\title{gBufferedInputStreamFillFinish}
\description{Finishes an asynchronous read.}
\usage{gBufferedInputStreamFillFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GBufferedInputStream}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[integer] a \verb{integer} of the read stream, or \code{-1} on an error.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

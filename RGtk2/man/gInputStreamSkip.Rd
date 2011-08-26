\alias{gInputStreamSkip}
\name{gInputStreamSkip}
\title{gInputStreamSkip}
\description{Tries to skip \code{count} bytes from the stream. Will block during the operation.}
\usage{gInputStreamSkip(object, count, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GInputStream}}.}
\item{\verb{count}}{the number of bytes that will be skipped from the stream}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This is identical to \code{\link{gInputStreamRead}}, from a behaviour standpoint,
but the bytes that are skipped are not returned to the user. Some
streams have an implementation that is more efficient than reading the data.
  
This function is optional for inherited classes, as the default implementation
emulates it using read.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. If an
operation was partially finished when the operation was cancelled the
partial result will be returned, without an error.}
\value{
A list containing the following elements:
\item{retval}{[integer] Number of bytes skipped, or -1 on error}
\item{\verb{error}}{location to store the error occuring, or \code{NULL} to ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

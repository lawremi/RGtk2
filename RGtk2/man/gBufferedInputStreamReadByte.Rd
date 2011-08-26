\alias{gBufferedInputStreamReadByte}
\name{gBufferedInputStreamReadByte}
\title{gBufferedInputStreamReadByte}
\description{Tries to read a single byte from the stream or the buffer. Will block
during this read.}
\usage{gBufferedInputStreamReadByte(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{\code{\link{GBufferedInputStream}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{On success, the byte read from the stream is returned. On end of stream
-1 is returned but it's not an exceptional error and \code{error} is not set.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. If an
operation was partially finished when the operation was cancelled the
partial result will be returned, without an error.
  
On error -1 is returned and \code{error} is set accordingly.}
\value{
A list containing the following elements:
\item{retval}{[integer] the byte read from the \code{stream}, or -1 on end of stream or error.}
\item{\verb{error}}{location to store the error occuring, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

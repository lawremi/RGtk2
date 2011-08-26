\alias{gBufferedInputStreamFill}
\name{gBufferedInputStreamFill}
\title{gBufferedInputStreamFill}
\description{Tries to read \code{count} bytes from the stream into the buffer. 
Will block during this read.}
\usage{gBufferedInputStreamFill(object, count, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{\code{\link{GBufferedInputStream}}.}
\item{\verb{count}}{the number of bytes that will be read from the stream.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{count} is zero, returns zero and does nothing. A value of \code{count}
larger than \code{G_MAXSSIZE} will cause a \code{G_IO_ERROR_INVALID_ARGUMENT} error.
  
On success, the number of bytes read into the buffer is returned.
It is not an error if this is not the same as the requested size, as it
can happen e.g. near the end of a file. Zero is returned on end of file
(or if \code{count} is zero),  but never otherwise.
  
If \code{count} is -1 then the attempted read size is equal to the number of
bytes that are required to fill the buffer.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. If an
operation was partially finished when the operation was cancelled the
partial result will be returned, without an error.
  
On error -1 is returned and \code{error} is set accordingly.
  
For the asynchronous, non-blocking, version of this function, see 
\code{\link{gBufferedInputStreamFillAsync}}.}
\value{
A list containing the following elements:
\item{retval}{[integer] the number of bytes read into \code{stream}'s buffer, up to \code{count},
or -1 on error.}
\item{\verb{error}}{location to store the error occuring, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

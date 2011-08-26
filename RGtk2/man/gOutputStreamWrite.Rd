\alias{gOutputStreamWrite}
\name{gOutputStreamWrite}
\title{gOutputStreamWrite}
\description{Tries to write \code{count} bytes from \code{buffer} into the stream. Will block
during the operation.}
\usage{gOutputStreamWrite(object, buffer, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GOutputStream}}.}
\item{\verb{buffer}}{the buffer containing the data to write.}
\item{\verb{cancellable}}{optional cancellable object}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If count is zero returns zero and does nothing. A value of \code{count}
larger than \code{G_MAXSSIZE} will cause a \code{G_IO_ERROR_INVALID_ARGUMENT} error.
  
On success, the number of bytes written to the stream is returned.
It is not an error if this is not the same as the requested size, as it
can happen e.g. on a partial i/o error, or if there is not enough
storage in the stream. All writes either block until at least one byte
is written, so zero is never returned (unless \code{count} is zero).
  
If \code{cancellable} is not NULL, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error G_IO_ERROR_CANCELLED will be returned. If an
operation was partially finished when the operation was cancelled the
partial result will be returned, without an error.
  
On error -1 is returned and \code{error} is set accordingly.}
\value{
A list containing the following elements:
\item{retval}{[integer] Number of bytes written, or -1 on error}
\item{\verb{error}}{location to store the error occuring, or \code{NULL} to ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

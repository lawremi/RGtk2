\alias{gDataInputStreamReadUint64}
\name{gDataInputStreamReadUint64}
\title{gDataInputStreamReadUint64}
\description{Reads an unsigned 64-bit/8-byte value from \code{stream}.}
\usage{gDataInputStreamReadUint64(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a given \code{\link{GDataInputStream}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{In order to get the correct byte order for this read operation, 
see \code{gDataStreamGetByteOrder()}.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[numeric] an unsigned 64-bit/8-byte read from \code{stream} or \code{0} if
an error occurred.}
\item{\verb{error}}{\code{\link{GError}} for error reporting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gDataInputStreamReadInt32}
\name{gDataInputStreamReadInt32}
\title{gDataInputStreamReadInt32}
\description{Reads a signed 32-bit/4-byte value from \code{stream}.}
\usage{gDataInputStreamReadInt32(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a given \code{\link{GDataInputStream}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{In order to get the correct byte order for this read operation, 
see \code{gDataStreamGetByteOrder()} and \code{gDataStreamSetByteOrder()}.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[integer] a signed 32-bit/4-byte value read from the \code{stream} or \code{0} if
an error occurred.}
\item{\verb{error}}{\code{\link{GError}} for error reporting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

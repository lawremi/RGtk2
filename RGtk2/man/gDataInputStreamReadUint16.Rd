\alias{gDataInputStreamReadUint16}
\name{gDataInputStreamReadUint16}
\title{gDataInputStreamReadUint16}
\description{Reads an unsigned 16-bit/2-byte value from \code{stream}.}
\usage{gDataInputStreamReadUint16(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a given \code{\link{GDataInputStream}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{In order to get the correct byte order for this read operation, 
see \code{gDataStreamGetByteOrder()} and \code{gDataStreamSetByteOrder()}.}
\value{
A list containing the following elements:
\item{retval}{[integer] an unsigned 16-bit/2-byte value read from the \code{stream} or \code{0} if
an error occurred.}
\item{\verb{error}}{\code{\link{GError}} for error reporting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

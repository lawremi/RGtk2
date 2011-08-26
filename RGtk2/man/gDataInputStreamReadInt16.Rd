\alias{gDataInputStreamReadInt16}
\name{gDataInputStreamReadInt16}
\title{gDataInputStreamReadInt16}
\description{Reads a 16-bit/2-byte value from \code{stream}.}
\usage{gDataInputStreamReadInt16(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a given \code{\link{GDataInputStream}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{In order to get the correct byte order for this read operation, 
see \code{gDataStreamGetByteOrder()} and \code{gDataStreamSetByteOrder()}.}
\value{
A list containing the following elements:
\item{retval}{[integer] a signed 16-bit/2-byte value read from \code{stream} or \code{0} if
an error occurred.}
\item{\verb{error}}{\code{\link{GError}} for error reporting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

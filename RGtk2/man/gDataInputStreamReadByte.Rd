\alias{gDataInputStreamReadByte}
\name{gDataInputStreamReadByte}
\title{gDataInputStreamReadByte}
\description{Reads an unsigned 8-bit/1-byte value from \code{stream}.}
\usage{gDataInputStreamReadByte(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a given \code{\link{GDataInputStream}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[raw] an unsigned 8-bit/1-byte value read from the \code{stream} or \code{0}
if an error occurred.}
\item{\verb{error}}{\code{\link{GError}} for error reporting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

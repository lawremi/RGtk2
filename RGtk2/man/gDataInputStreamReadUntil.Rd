\alias{gDataInputStreamReadUntil}
\name{gDataInputStreamReadUntil}
\title{gDataInputStreamReadUntil}
\description{Reads a string from the data input stream, up to the first
occurrence of any of the stop characters.}
\usage{gDataInputStreamReadUntil(object, stop.chars, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a given \code{\link{GDataInputStream}}.}
\item{\verb{stop.chars}}{characters to terminate the read.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[char] a string with the data that was read before encountering
any of the stop characters. Set \code{length} to a \verb{numeric} to get the length
of the string. This function will return \code{NULL} on an error.}
\item{\verb{length}}{a \verb{numeric} to get the length of the data read in.}
\item{\verb{error}}{\code{\link{GError}} for error reporting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

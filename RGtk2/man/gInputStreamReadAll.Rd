\alias{gInputStreamReadAll}
\name{gInputStreamReadAll}
\title{gInputStreamReadAll}
\description{Tries to read \code{count} bytes from the stream into the buffer starting at
\code{buffer}. Will block during this read.}
\usage{gInputStreamReadAll(object, count, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GInputStream}}.}
\item{\verb{count}}{the number of bytes that will be read from the stream}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This function is similar to \code{\link{gInputStreamRead}}, except it tries to
read as many bytes as requested, only stopping on an error or end of stream.
  
On a successful read of \code{count} bytes, or if we reached the end of the
stream,  \code{TRUE} is returned, and \code{bytes.read} is set to the number of bytes
read into \code{buffer}.
  
If there is an error during the operation \code{FALSE} is returned and \code{error}
is set to indicate the error status, \code{bytes.read} is updated to contain
the number of bytes read into \code{buffer} before the error occurred.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} if there was an error}
\item{\verb{buffer}}{a buffer to read data into (which should be at least count bytes long).}
\item{\verb{bytes.read}}{location to store the number of bytes that was read from the stream}
\item{\verb{error}}{location to store the error occuring, or \code{NULL} to ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

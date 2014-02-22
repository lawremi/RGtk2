\alias{gOutputStreamWriteAll}
\name{gOutputStreamWriteAll}
\title{gOutputStreamWriteAll}
\description{Tries to write \code{count} bytes from \code{buffer} into the stream. Will block
during the operation.}
\usage{gOutputStreamWriteAll(object, buffer, bytes.written, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GOutputStream}}.}
\item{\verb{buffer}}{the buffer containing the data to write.}
\item{\verb{bytes.written}}{location to store the number of bytes that was
written to the stream}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This function is similar to \code{\link{gOutputStreamWrite}}, except it tries to
write as many bytes as requested, only stopping on an error.
  
On a successful write of \code{count} bytes, \code{TRUE} is returned, and \code{bytes.written}
is set to \code{count}.
  
If there is an error during the operation FALSE is returned and \code{error}
is set to indicate the error status, \code{bytes.written} is updated to contain
the number of bytes written into the stream before the error occurred.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} if there was an error}
\item{\verb{error}}{location to store the error occuring, or \code{NULL} to ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

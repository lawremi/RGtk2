\alias{gOutputStreamClose}
\name{gOutputStreamClose}
\title{gOutputStreamClose}
\description{Closes the stream, releasing resources related to it.}
\usage{gOutputStreamClose(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{A \code{\link{GOutputStream}}.}
\item{\verb{cancellable}}{optional cancellable object}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Once the stream is closed, all other operations will return \code{G_IO_ERROR_CLOSED}.
Closing a stream multiple times will not return an error.
  
Closing a stream will automatically flush any outstanding buffers in the
stream.
  
Streams will be automatically closed when the last reference
is dropped, but you might want to call this function to make sure 
resources are released as early as possible.
  
Some streams might keep the backing store of the stream (e.g. a file descriptor)
open after the stream is closed. See the documentation for the individual
stream for details.
  
On failure the first error that happened will be reported, but the close
operation will finish as much as possible. A stream that failed to
close will still return \code{G_IO_ERROR_CLOSED} for all operations. Still, it
is important to check and report the error to the user, otherwise
there might be a loss of data as all data might not be written.
  
If \code{cancellable} is not NULL, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.
Cancelling a close will still leave the stream closed, but there some streams
can use a faster close that doesn't block to e.g. check errors. On
cancellation (as with any error) there is no guarantee that all written
data will reach the target.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on failure}
\item{\verb{error}}{location to store the error occuring, or \code{NULL} to ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

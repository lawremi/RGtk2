\alias{gOutputStreamFlush}
\name{gOutputStreamFlush}
\title{gOutputStreamFlush}
\description{Flushed any outstanding buffers in the stream. Will block during 
the operation. Closing the stream will implicitly cause a flush.}
\usage{gOutputStreamFlush(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GOutputStream}}.}
\item{\verb{cancellable}}{optional cancellable object}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This function is optional for inherited classes.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error}
\item{\verb{error}}{location to store the error occuring, or \code{NULL} to ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

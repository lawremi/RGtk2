\alias{gInitableInit}
\name{gInitableInit}
\title{gInitableInit}
\description{Initializes the object implementing the interface. This must be
done before any real use of the object after initial construction.}
\usage{gInitableInit(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GInitable}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Implementations may also support cancellation. If \code{cancellable} is not \code{NULL},
then initialization can be cancelled by triggering the cancellable object
from another thread. If the operation was cancelled, the error
\code{G_IO_ERROR_CANCELLED} will be returned. If \code{cancellable} is not \code{NULL} and
the object doesn't support cancellable initialization the error
\code{G_IO_ERROR_NOT_SUPPORTED} will be returned.
  
If this function is not called, or returns with an error then all
operations on the object should fail, generally returning the
error \code{G_IO_ERROR_NOT_INITIALIZED}.
  
Implementations of this method must be idempotent, i.e. multiple calls
to this function with the same argument should return the same results.
Only the first call initializes the object, further calls return the result
of the first call. This is so that its safe to implement the singleton
pattern in the GObject constructor function.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if successful. If an error has occurred, this function will
return \code{FALSE} and set \code{error} appropriately if present.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gSocketListenerAcceptSocket}
\name{gSocketListenerAcceptSocket}
\title{gSocketListenerAcceptSocket}
\description{Blocks waiting for a client to connect to any of the sockets added
to the listener. Returns the \code{\link{GSocket}} that was accepted.}
\usage{gSocketListenerAcceptSocket(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketListener}}}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If you want to accept the high-level \code{\link{GSocketConnection}}, not a \code{\link{GSocket}},
which is often the case, then you should use \code{\link{gSocketListenerAccept}}
instead.
  
If \code{source.object} is not \code{NULL} it will be filled out with the source
object specified when the corresponding socket or address was added
to the listener.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocket}}] a \code{\link{GSocket}} on success, \code{NULL} on error.}
\item{\verb{source.object}}{location where \code{\link{GObject}} pointer will be stored, or \code{NULL}}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

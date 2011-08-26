\alias{gSocketSend}
\name{gSocketSend}
\title{gSocketSend}
\description{Tries to send \code{size} bytes from \code{buffer} on the socket. This is
mainly used by connection-oriented sockets; it is identical to
\code{\link{gSocketSendTo}} with \code{address} set to \code{NULL}.}
\usage{gSocketSend(object, buffer, size, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{\verb{buffer}}{the buffer containing the data to send.}
\item{\verb{size}}{the number of bytes to send}
\item{\verb{cancellable}}{a \code{\link{GCancellable}} or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If the socket is in blocking mode the call will block until there is
space for the data in the socket queue. If there is no space available
and the socket is in non-blocking mode a \code{G_IO_ERROR_WOULD_BLOCK} error
will be returned. To be notified when space is available, wait for the
\code{G_IO_OUT} condition. Note though that you may still receive
\code{G_IO_ERROR_WOULD_BLOCK} from \code{\link{gSocketSend}} even if you were previously
notified of a \code{G_IO_OUT} condition. (On Windows in particular, this is
very common due to the way the underlying APIs work.)
  
On error -1 is returned and \code{error} is set accordingly.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[integer] Number of bytes written (which may be less than \code{size}), or -1
on error}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

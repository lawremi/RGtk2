\alias{gSocketReceive}
\name{gSocketReceive}
\title{gSocketReceive}
\description{Receive data (up to \code{size} bytes) from a socket. This is mainly used by
connection-oriented sockets; it is identical to \code{\link{gSocketReceiveFrom}}
with \code{address} set to \code{NULL}.}
\usage{gSocketReceive(object, size, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{\verb{size}}{the number of bytes you want to read from the socket}
\item{\verb{cancellable}}{a \code{\link{GCancellable}} or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{For \code{G_SOCKET_TYPE_DATAGRAM} and \code{G_SOCKET_TYPE_SEQPACKET} sockets,
\code{\link{gSocketReceive}} will always read either 0 or 1 complete messages from
the socket. If the received message is too large to fit in \code{buffer}, then
the data beyond \code{size} bytes will be discarded, without any explicit
indication that this has occurred.
  
For \code{G_SOCKET_TYPE_STREAM} sockets, \code{\link{gSocketReceive}} can return any
number of bytes, up to \code{size}. If more than \code{size} bytes have been
received, the additional data will be returned in future calls to
\code{\link{gSocketReceive}}.
  
If the socket is in blocking mode the call will block until there is
some data to receive or there is an error. If there is no data available
and the socket is in non-blocking mode, a \code{G_IO_ERROR_WOULD_BLOCK} error
will be returned. To be notified when data is available, wait for the
\code{G_IO_IN} condition.
  
On error -1 is returned and \code{error} is set accordingly.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[integer] Number of bytes read, or -1 on error}
\item{\verb{buffer}}{a buffer to read data into (which should be at least \code{size}
bytes long).}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

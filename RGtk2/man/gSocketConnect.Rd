\alias{gSocketConnect}
\name{gSocketConnect}
\title{gSocketConnect}
\description{Connect the socket to the specified remote address.}
\usage{gSocketConnect(object, address, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}.}
\item{\verb{address}}{a \code{\link{GSocketAddress}} specifying the remote address.}
\item{\verb{cancellable}}{a \code{\link{GCancellable}} or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{For connection oriented socket this generally means we attempt to make
a connection to the \code{address}. For a connection-less socket it sets
the default address for \code{\link{gSocketSend}} and discards all incoming datagrams
from other sources.
  
Generally connection oriented sockets can only connect once, but
connection-less sockets can connect multiple times to change the
default address.
  
If the connect call needs to do network I/O it will block, unless
non-blocking I/O is enabled. Then \code{G_IO_ERROR_PENDING} is returned
and the user can be notified of the connection finishing by waiting
for the G_IO_OUT condition. The result of the connection can then be
checked with \code{\link{gSocketCheckConnectResult}}.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if connected, \code{FALSE} on error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

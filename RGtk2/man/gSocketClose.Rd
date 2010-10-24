\alias{gSocketClose}
\name{gSocketClose}
\title{gSocketClose}
\description{Closes the socket, shutting down any active connection.}
\usage{gSocketClose(object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Closing a socket does not wait for all outstanding I/O operations
to finish, so the caller should not rely on them to be guaranteed
to complete even if the close returns with no error.
  
Once the socket is closed, all other operations will return
\code{G_IO_ERROR_CLOSED}. Closing a socket multiple times will not
return an error.
  
Sockets will be automatically closed when the last reference
is dropped, but you might want to call this function to make sure
resources are released as early as possible.
  
Beware that due to the way that TCP works, it is possible for
recently-sent data to be lost if either you close a socket while the
\code{G_IO_IN} condition is set, or else if the remote connection tries to
send something to you after you close the socket but before it has
finished reading all of the data you sent. There is no easy generic
way to avoid this problem; the easiest fix is to design the network
protocol such that the client will never send data "out of turn".
Another solution is for the server to half-close the connection by
calling \code{\link{gSocketShutdown}} with only the \code{shutdown.write} flag set,
and then wait for the client to notice this and close its side of the
connection, after which the server can safely call \code{\link{gSocketClose}}.
(This is what \code{\link{GTcpConnection}} does if you call
\code{\link{gTcpConnectionSetGracefulDisconnect}}. But of course, this
only works if the client will close its connection after the server
does.)
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

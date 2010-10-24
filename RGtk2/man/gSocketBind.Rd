\alias{gSocketBind}
\name{gSocketBind}
\title{gSocketBind}
\description{When a socket is created it is attached to an address family, but it
doesn't have an address in this family. \code{\link{gSocketBind}} assigns the
address (sometimes called name) of the socket.}
\usage{gSocketBind(object, address, allow.reuse, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}.}
\item{\verb{address}}{a \code{\link{GSocketAddress}} specifying the local address.}
\item{\verb{allow.reuse}}{whether to allow reusing this address}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{It is generally required to bind to a local address before you can
receive connections. (See \code{\link{gSocketListen}} and \code{\link{gSocketAccept}} ).
In certain situations, you may also want to bind a socket that will be
used to initiate connections, though this is not normally required.
  \code{allow.reuse} should be \code{TRUE} for server sockets (sockets that you will
eventually call \code{\link{gSocketAccept}} on), and \code{FALSE} for client sockets.
(Specifically, if it is \code{TRUE}, then \code{\link{gSocketBind}} will set the
\code{SO_REUSEADDR} flag on the socket, allowing it to bind \code{address} even if
that address was previously used by another socket that has not yet been
fully cleaned-up by the kernel. Failing to set this flag on a server
socket may cause the bind call to return \code{G_IO_ERROR_ADDRESS_IN_USE} if
the server program is stopped and then immediately restarted.)
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gSocketClientConnect}
\name{gSocketClientConnect}
\title{gSocketClientConnect}
\description{Tries to resolve the \code{connectable} and make a network connection to it..}
\usage{gSocketClientConnect(object, connectable, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketClient}}.}
\item{\verb{connectable}}{a \code{\link{GSocketConnectable}} specifying the remote address.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Upon a successful connection, a new \code{\link{GSocketConnection}} is constructed
and returned.  The caller owns this new object and must drop their
reference to it when finished with it.
  
The type of the \code{\link{GSocketConnection}} object returned depends on the type of
the underlying socket that is used. For instance, for a TCP/IP connection
it will be a \code{\link{GTcpConnection}}.
  
The socket created will be the same family as the the address that the
\code{connectable} resolves to, unless family is set with \code{\link{gSocketClientSetFamily}}
or indirectly via \code{\link{gSocketClientSetLocalAddress}}. The socket type
defaults to \code{G_SOCKET_TYPE_STREAM} but can be set with
\code{\link{gSocketClientSetSocketType}}.
  
If a local address is specified with \code{\link{gSocketClientSetLocalAddress}} the
socket will be bound to this address before connecting.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocketConnection}}] a \code{\link{GSocketConnection}} on success, \code{NULL} on error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

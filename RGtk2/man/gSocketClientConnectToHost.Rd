\alias{gSocketClientConnectToHost}
\name{gSocketClientConnectToHost}
\title{gSocketClientConnectToHost}
\description{This is a helper function for \code{\link{gSocketClientConnect}}.}
\usage{gSocketClientConnectToHost(object, host.and.port, default.port, 
    cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \verb{SocketClient}}
\item{\verb{host.and.port}}{the name and optionally port of the host to connect to}
\item{\verb{default.port}}{the default port to connect to}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Attempts to create a TCP connection to the named host.
  \code{host.and.port} may be in any of a number of recognised formats: an IPv6
address, an IPv4 address, or a domain name (in which case a DNS
lookup is performed).  Quoting with [] is supported for all address
types.  A port override may be specified in the usual way with a
colon.  Ports may be given as decimal numbers or symbolic names (in
which case an /etc/services lookup is performed).
  
If no port override is given in \code{host.and.port} then \code{default.port} will be
used as the port number to connect to.
  
In general, \code{host.and.port} is expected to be provided by the user (allowing
them to give the hostname, and a port overide if necessary) and
\code{default.port} is expected to be provided by the application.
  
In the case that an IP address is given, a single connection
attempt is made.  In the case that a name is given, multiple
connection attempts may be made, in turn and according to the
number of address records in DNS, until a connection succeeds.
  
Upon a successful connection, a new \code{\link{GSocketConnection}} is constructed
and returned.  The caller owns this new object and must drop their
reference to it when finished with it.
  
In the event of any failure (DNS error, service not found, no hosts
connectable) \code{NULL} is returned and \code{error} (if non-\code{NULL}) is set
accordingly.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocketConnection}}] a \code{\link{GSocketConnection}} on success, \code{NULL} on error.}
\item{\verb{error}}{a pointer to a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

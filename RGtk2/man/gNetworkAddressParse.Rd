\alias{gNetworkAddressParse}
\name{gNetworkAddressParse}
\title{gNetworkAddressParse}
\description{Creates a new \code{\link{GSocketConnectable}} for connecting to the given
\code{hostname} and \code{port}. May fail and return \code{NULL} in case
parsing \code{host.and.port} fails.}
\usage{gNetworkAddressParse(host.and.port, default.port, .errwarn = TRUE)}
\arguments{
\item{\verb{host.and.port}}{the hostname and optionally a port}
\item{\verb{default.port}}{the default port if not in \code{host.and.port}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{\code{host.and.port} may be in any of a number of recognised formats: an IPv6
address, an IPv4 address, or a domain name (in which case a DNS
lookup is performed). Quoting with [] is supported for all address
types. A port override may be specified in the usual way with a
colon. Ports may be given as decimal numbers or symbolic names (in
which case an /etc/services lookup is performed).
  
If no port is specified in \code{host.and.port} then \code{default.port} will be
used as the port number to connect to.
  
In general, \code{host.and.port} is expected to be provided by the user
(allowing them to give the hostname, and a port overide if necessary)
and \code{default.port} is expected to be provided by the application.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocketConnectable}}] the new \code{\link{GNetworkAddress}}, or \code{NULL} on error}
\item{\verb{error}}{a pointer to a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

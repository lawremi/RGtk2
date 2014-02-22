\alias{gSocketClientConnectToService}
\name{gSocketClientConnectToService}
\title{gSocketClientConnectToService}
\description{Attempts to create a TCP connection to a service.}
\usage{gSocketClientConnectToService(object, domain, service, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketConnection}}}
\item{\verb{domain}}{a domain name}
\item{\verb{service}}{the name of the service to connect to}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This call looks up the SRV record for \code{service} at \code{domain} for the
"tcp" protocol.  It then attempts to connect, in turn, to each of
the hosts providing the service until either a connection succeeds
or there are no hosts remaining.
  
Upon a successful connection, a new \code{\link{GSocketConnection}} is constructed
and returned.  The caller owns this new object and must drop their
reference to it when finished with it.
  
In the event of any failure (DNS error, service not found, no hosts
connectable) \code{NULL} is returned and \code{error} (if non-\code{NULL}) is set
accordingly.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocketConnection}}] a \code{\link{GSocketConnection}} if successful, or \code{NULL} on error}
\item{\verb{error}}{a pointer to a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

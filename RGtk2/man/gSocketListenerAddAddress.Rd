\alias{gSocketListenerAddAddress}
\name{gSocketListenerAddAddress}
\title{gSocketListenerAddAddress}
\description{Creates a socket of type \code{type} and protocol \code{protocol}, binds
it to \code{address} and adds it to the set of sockets we're accepting
sockets from.}
\usage{gSocketListenerAddAddress(object, address, type, protocol, source.object = NULL,
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketListener}}}
\item{\verb{address}}{a \code{\link{GSocketAddress}}}
\item{\verb{type}}{a \code{\link{GSocketType}}}
\item{\verb{protocol}}{a \code{\link{GSocketProtocol}}}
\item{\verb{source.object}}{Optional \code{\link{GObject}} identifying this source}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Note that adding an IPv6 address, depending on the platform,
may or may not result in a listener that also accepts IPv4
connections.  For more determinstic behaviour, see
\code{\link{gSocketListenerAddInetPort}}.
  \code{source.object} will be passed out in the various calls
to accept to identify this particular source, which is
useful if you're listening on multiple addresses and do
different things depending on what address is connected to.
  
If successful and \code{effective.address} is non-\code{NULL} then it will
be set to the address that the binding actually occured at.  This
is helpful for determining the port number that was used for when
requesting a binding to port 0 (ie: "any port").  This address, if
requested, belongs to the caller and must be freed.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error.}
\item{\verb{effective.address}}{location to store the address that was bound to, or \code{NULL}.}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

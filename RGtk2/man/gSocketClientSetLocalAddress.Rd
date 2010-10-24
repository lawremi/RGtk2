\alias{gSocketClientSetLocalAddress}
\name{gSocketClientSetLocalAddress}
\title{gSocketClientSetLocalAddress}
\description{Sets the local the socket client.
The sockets created by this object will bound to the
specified address (if not \code{NULL}) before connecting.}
\usage{gSocketClientSetLocalAddress(object, address)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketClient}}.}
\item{\verb{address}}{a \code{\link{GSocketAddress}}, or \code{NULL}}
}
\details{This is useful if you want to ensure the the local
side of the connection is on a specific port, or on
a specific interface.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

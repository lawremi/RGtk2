\alias{gSocketClientSetFamily}
\name{gSocketClientSetFamily}
\title{gSocketClientSetFamily}
\description{Sets the socket family of the socket client.
If this is set to something other than \code{G_SOCKET_FAMILY_INVALID}
then the sockets created by this object will be of the specified
family.}
\usage{gSocketClientSetFamily(object, family)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketClient}}.}
\item{\verb{family}}{a \code{\link{GSocketFamily}}}
}
\details{This might be useful for instance if you want to force the local
connection to be an ipv4 socket, even though the address might
be an ipv6 mapped to ipv4 address.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

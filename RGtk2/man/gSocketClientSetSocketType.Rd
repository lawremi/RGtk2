\alias{gSocketClientSetSocketType}
\name{gSocketClientSetSocketType}
\title{gSocketClientSetSocketType}
\description{Sets the socket type of the socket client.
The sockets created by this object will be of the specified
type.}
\usage{gSocketClientSetSocketType(object, type)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketClient}}.}
\item{\verb{type}}{a \code{\link{GSocketType}}}
}
\details{It doesn't make sense to specify a type of \code{G_SOCKET_TYPE_DATAGRAM},
as GSocketClient is used for connection oriented services.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gSocketClientSetProtocol}
\name{gSocketClientSetProtocol}
\title{gSocketClientSetProtocol}
\description{Sets the protocol of the socket client.
The sockets created by this object will use of the specified
protocol.}
\usage{gSocketClientSetProtocol(object, protocol)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketClient}}.}
\item{\verb{protocol}}{a \code{\link{GSocketProtocol}}}
}
\details{If \code{protocol} is \code{0} that means to use the default
protocol for the socket family and type.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

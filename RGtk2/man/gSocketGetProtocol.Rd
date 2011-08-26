\alias{gSocketGetProtocol}
\name{gSocketGetProtocol}
\title{gSocketGetProtocol}
\description{Gets the socket protocol id the socket was created with.
In case the protocol is unknown, -1 is returned.}
\usage{gSocketGetProtocol(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSocket}}.}}
\details{Since 2.22}
\value{[\code{\link{GSocketProtocol}}] a protocol id, or -1 if unknown}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

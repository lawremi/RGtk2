\alias{gInetAddressNewFromString}
\name{gInetAddressNewFromString}
\title{gInetAddressNewFromString}
\description{Parses \code{string} as an IP address and creates a new \code{\link{GInetAddress}}.}
\usage{gInetAddressNewFromString(string)}
\arguments{\item{\verb{string}}{a string representation of an IP address}}
\details{Since 2.22}
\value{[\code{\link{GInetAddress}}] a new \code{\link{GInetAddress}} corresponding to \code{string}, or \code{NULL} if
\code{string} could not be parsed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

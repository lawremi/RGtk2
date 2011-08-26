\alias{gInetAddressNewFromBytes}
\name{gInetAddressNewFromBytes}
\title{gInetAddressNewFromBytes}
\description{Creates a new \code{\link{GInetAddress}} from the given \code{family} and \code{bytes}.
\code{bytes} should be 4 bytes for \code{G_INET_ADDRESS_IPV4} and 16 bytes for
\code{G_INET_ADDRESS_IPV6}.}
\usage{gInetAddressNewFromBytes(bytes, family)}
\arguments{
\item{\verb{bytes}}{raw address data}
\item{\verb{family}}{the address family of \code{bytes}}
}
\details{Since 2.22}
\value{[\code{\link{GInetAddress}}] a new \code{\link{GInetAddress}} corresponding to \code{family} and \code{bytes}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

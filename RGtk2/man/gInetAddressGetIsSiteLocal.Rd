\alias{gInetAddressGetIsSiteLocal}
\name{gInetAddressGetIsSiteLocal}
\title{gInetAddressGetIsSiteLocal}
\description{Tests whether \code{address} is a site-local address such as 10.0.0.1
(that is, the address identifies a host on a local network that can
not be reached directly from the Internet, but which may have
outgoing Internet connectivity via a NAT or firewall).}
\usage{gInetAddressGetIsSiteLocal(object)}
\arguments{\item{\verb{object}}{a \code{\link{GInetAddress}}}}
\details{Since 2.22}
\value{[logical] \code{TRUE} if \code{address} is a site-local address.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gSocketSpeaksIpv4}
\name{gSocketSpeaksIpv4}
\title{gSocketSpeaksIpv4}
\description{Checks if a socket is capable of speaking IPv4.}
\usage{gSocketSpeaksIpv4(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSocket}}}}
\details{IPv4 sockets are capable of speaking IPv4.  On some operating systems
and under some combinations of circumstances IPv6 sockets are also
capable of speaking IPv4.  See RFC 3493 section 3.7 for more
information.
  
No other types of sockets are currently considered as being capable
of speaking IPv4.
  Since 2.22.}
\value{[logical] \code{TRUE} if this socket can be used with IPv4.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

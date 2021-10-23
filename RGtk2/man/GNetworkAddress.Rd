\alias{GNetworkAddress}
\alias{gNetworkAddress}
\name{GNetworkAddress}
\title{GNetworkAddress}
\description{A GSocketConnectable for resolving hostnames}
\section{Methods and Functions}{
\code{\link{gNetworkAddressNew}(hostname, port)}\cr
\code{\link{gNetworkAddressGetHostname}(object)}\cr
\code{\link{gNetworkAddressGetPort}(object)}\cr
\code{\link{gNetworkAddressParse}(host.and.port, default.port, .errwarn = TRUE)}\cr
\code{gNetworkAddress(hostname, port)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GNetworkAddress}}
\section{Interfaces}{GNetworkAddress implements
 \code{\link{GSocketConnectable}}.}
\section{Detailed Description}{\code{\link{GNetworkAddress}} provides an easy way to resolve a hostname and
then attempt to connect to that host, handling the possibility of
multiple IP addresses and multiple address families.
  
See \code{\link{GSocketConnectable}} for and example of using the connectable
interface.}
\section{Structures}{\describe{\item{\verb{GNetworkAddress}}{
A \code{\link{GSocketConnectable}} for resolving a hostname and connecting to
that host.

}}}
\section{Convenient Construction}{\code{gNetworkAddress} is the equivalent of \code{\link{gNetworkAddressNew}}.}
\section{Properties}{\describe{
\item{\verb{hostname} [character : *                : Read / Write / Construct Only]}{

Hostname to resolve.  Default value: NULL

}
\item{\verb{port} [numeric : Read / Write / Construct Only]}{

Network port.  Allowed values: <= 65535  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GNetworkAddress.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

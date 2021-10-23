\alias{GNetworkService}
\alias{gNetworkService}
\name{GNetworkService}
\title{GNetworkService}
\description{A GSocketConnectable for resolving SRV records}
\section{Methods and Functions}{
\code{\link{gNetworkServiceNew}(service, protocol, domain)}\cr
\code{\link{gNetworkServiceGetService}(object)}\cr
\code{\link{gNetworkServiceGetProtocol}(object)}\cr
\code{\link{gNetworkServiceGetDomain}(object)}\cr
\code{gNetworkService(service, protocol, domain)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GNetworkService}}
\section{Interfaces}{GNetworkService implements
 \code{\link{GSocketConnectable}}.}
\section{Detailed Description}{Like \code{\link{GNetworkAddress}} does with hostnames, \code{\link{GNetworkService}}
provides an easy way to resolve a SRV record, and then attempt to
connect to one of the hosts that implements that service, handling
service priority/weighting, multiple IP addresses, and multiple
address families.
  
See \code{\link{GSrvTarget}} for more information about SRV records, and see
\code{\link{GSocketConnectable}} for and example of using the connectable
interface.}
\section{Structures}{\describe{\item{\verb{GNetworkService}}{
A \code{\link{GSocketConnectable}} for resolving a SRV record and connecting to
that service.

}}}
\section{Convenient Construction}{\code{gNetworkService} is the equivalent of \code{\link{gNetworkServiceNew}}.}
\section{Properties}{\describe{
\item{\verb{domain} [character : *                : Read / Write / Construct Only]}{

Network domain, eg, "example.com".  Default value: NULL

}
\item{\verb{protocol} [character : *                : Read / Write / Construct Only]}{

Network protocol, eg "tcp".  Default value: NULL

}
\item{\verb{service} [character : *                : Read / Write / Construct Only]}{

Service name, eg "ldap".  Default value: NULL

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GNetworkService.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{GSrvTarget}
\name{GSrvTarget}
\title{GSrvTarget}
\description{DNS SRV record target}
\section{Methods and Functions}{
\code{\link{gSrvTargetNew}(hostname, port, priority, weight)}\cr
\code{\link{gSrvTargetCopy}(object)}\cr
\code{\link{gSrvTargetFree}(object)}\cr
\code{\link{gSrvTargetGetHostname}(object)}\cr
\code{\link{gSrvTargetGetPort}(object)}\cr
\code{\link{gSrvTargetGetPriority}(object)}\cr
\code{\link{gSrvTargetGetWeight}(object)}\cr
\code{\link{gSrvTargetListSort}(targets)}\cr
}
\section{Hierarchy}{\preformatted{GBoxed
   +----GSrvTarget}}
\section{Detailed Description}{SRV (service) records are used by some network protocols to provide
service-specific aliasing and load-balancing. For example, XMPP
(Jabber) uses SRV records to locate the XMPP server for a domain;
rather than connecting directly to "example.com" or assuming a
specific server hostname like "xmpp.example.com", an XMPP client
would look up the "xmpp-client" SRV record for "example.com", and
then connect to whatever host was pointed to by that record.
  
You can use \code{\link{gResolverLookupService}} or
\code{\link{gResolverLookupServiceAsync}} to find the \code{\link{GSrvTarget}}s
for a given service. However, if you are simply planning to connect
to the remote service, you can use \code{\link{GNetworkService}}'s
\code{\link{GSocketConnectable}} interface and not need to worry about
\code{\link{GSrvTarget}} at all.}
\section{Structures}{\describe{\item{\verb{GSrvTarget}}{
A single target host/port that a network service is running on.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSrvTarget.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

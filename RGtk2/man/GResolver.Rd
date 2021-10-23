\alias{GResolver}
\name{GResolver}
\title{GResolver}
\description{Asynchronous and cancellable DNS resolver}
\section{Methods and Functions}{
\code{\link{gResolverGetDefault}()}\cr
\code{\link{gResolverSetDefault}(object)}\cr
\code{\link{gResolverLookupByName}(object, hostname, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gResolverLookupByNameAsync}(object, hostname, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gResolverLookupByNameFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gResolverFreeAddresses}(addresses)}\cr
\code{\link{gResolverLookupByAddress}(object, address, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gResolverLookupByAddressAsync}(object, address, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gResolverLookupByAddressFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gResolverLookupService}(object, service, protocol, domain, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gResolverLookupServiceAsync}(object, service, protocol, domain, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gResolverLookupServiceFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gResolverFreeTargets}(targets)}\cr

}
\section{Hierarchy}{\preformatted{
GObject
   +----GResolver
GEnum
   +----GResolverError
}}
\section{Detailed Description}{\code{\link{GResolver}} provides cancellable synchronous and asynchronous DNS
resolution, for hostnames (\code{\link{gResolverLookupByAddress}},
\code{\link{gResolverLookupByName}} and their async variants) and SRV
(service) records (\code{\link{gResolverLookupService}}).
  \code{\link{GNetworkAddress}} and \code{\link{GNetworkService}} provide wrappers around
\code{\link{GResolver}} functionality that also implement \code{\link{GSocketConnectable}},
making it easy to connect to a remote host/service.}
\section{Structures}{\describe{\item{\verb{GResolver}}{
The object that handles DNS resolution. Use \code{\link{gResolverGetDefault}}
to get the default resolver.

}}}
\section{Signals}{\describe{\item{\code{reload(resolver, user.data)}}{
Emitted when the resolver notices that the system resolver
configuration has changed.

\describe{
\item{\code{resolver}}{a \code{\link{GResolver}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GResolver.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

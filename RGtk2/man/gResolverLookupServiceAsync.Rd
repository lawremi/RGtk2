\alias{gResolverLookupServiceAsync}
\name{gResolverLookupServiceAsync}
\title{gResolverLookupServiceAsync}
\description{Begins asynchronously performing a DNS SRV lookup for the given
\code{service} and \code{protocol} in the given \code{domain}, and eventually calls
\code{callback}, which must call \code{\link{gResolverLookupServiceFinish}} to
get the final result. See \code{\link{gResolverLookupService}} for more
details.}
\usage{gResolverLookupServiceAsync(object, service, protocol, domain, 
    cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GResolver}}}
\item{\verb{service}}{the service type to look up (eg, "ldap")}
\item{\verb{protocol}}{the networking protocol to use for \code{service} (eg, "tcp")}
\item{\verb{domain}}{the DNS domain to look up the service in}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{\verb{callback}}{callback to call after resolution completes}
\item{\verb{user.data}}{data for \code{callback}}
}
\details{Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gNetworkServiceNew}
\name{gNetworkServiceNew}
\title{gNetworkServiceNew}
\description{Creates a new \code{\link{GNetworkService}} representing the given \code{service},
\code{protocol}, and \code{domain}. This will initially be unresolved; use the
\code{\link{GSocketConnectable}} interface to resolve it.}
\usage{gNetworkServiceNew(service, protocol, domain)}
\arguments{
\item{\verb{service}}{the service type to look up (eg, "ldap")}
\item{\verb{protocol}}{the networking protocol to use for \code{service} (eg, "tcp")}
\item{\verb{domain}}{the DNS domain to look up the service in}
}
\details{Since 2.22}
\value{[\code{\link{GSocketConnectable}}] a new \code{\link{GNetworkService}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

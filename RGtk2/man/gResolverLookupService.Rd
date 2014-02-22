\alias{gResolverLookupService}
\name{gResolverLookupService}
\title{gResolverLookupService}
\description{Synchronously performs a DNS SRV lookup for the given \code{service} and
\code{protocol} in the given \code{domain} and returns a list of \code{\link{GSrvTarget}}.
\code{domain} may be an ASCII-only or UTF-8 hostname. Note also that the
\code{service} and \code{protocol} arguments \emph{do not}
include the leading underscore that appears in the actual DNS
entry.}
\usage{gResolverLookupService(object, service, protocol, domain, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GResolver}}}
\item{\verb{service}}{the service type to look up (eg, "ldap")}
\item{\verb{protocol}}{the networking protocol to use for \code{service} (eg, "tcp")}
\item{\verb{domain}}{the DNS domain to look up the service in}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{On success, \code{\link{gResolverLookupService}} will return a \verb{list} of
\code{\link{GSrvTarget}}, sorted in order of preference. (That is, you should
attempt to connect to the first target first, then the second if
the first fails, etc.)
  
If the DNS resolution fails, \code{error} (if non-\code{NULL}) will be set to
a value from \verb{GResolverError}.
  
If \code{cancellable} is non-\code{NULL}, it can be used to cancel the
operation, in which case \code{error} (if non-\code{NULL}) will be set to
\code{G_IO_ERROR_CANCELLED}.
  
If you are planning to connect to the service, it is usually easier
to create a \code{\link{GNetworkService}} and use its \code{\link{GSocketConnectable}}
interface.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[list] a \verb{list} of \code{\link{GSrvTarget}}, or \code{NULL} on error. You must
free each of the targets and the list when you are done with it.
(You can use \code{\link{gResolverFreeTargets}} to do this.)}
\item{\verb{error}}{return location for a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

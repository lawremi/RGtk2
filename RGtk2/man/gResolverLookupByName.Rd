\alias{gResolverLookupByName}
\name{gResolverLookupByName}
\title{gResolverLookupByName}
\description{Synchronously resolves \code{hostname} to determine its associated IP
address(es). \code{hostname} may be an ASCII-only or UTF-8 hostname, or
the textual form of an IP address (in which case this just becomes
a wrapper around \code{\link{gInetAddressNewFromString}}).}
\usage{gResolverLookupByName(object, hostname, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GResolver}}}
\item{\verb{hostname}}{the hostname to look up}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{On success, \code{\link{gResolverLookupByName}} will return a \verb{list} of
\code{\link{GInetAddress}}, sorted in order of preference. (That is, you should
attempt to connect to the first address first, then the second if
the first fails, etc.)
  
If the DNS resolution fails, \code{error} (if non-\code{NULL}) will be set to a
value from \verb{GResolverError}.
  
If \code{cancellable} is non-\code{NULL}, it can be used to cancel the
operation, in which case \code{error} (if non-\code{NULL}) will be set to
\code{G_IO_ERROR_CANCELLED}.
  
If you are planning to connect to a socket on the resolved IP
address, it may be easier to create a \code{\link{GNetworkAddress}} and use its
\code{\link{GSocketConnectable}} interface.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[list] a \verb{list} of \code{\link{GInetAddress}}, or \code{NULL} on error. You
must unref each of the addresses and free the list when you are
done with it. (You can use \code{\link{gResolverFreeAddresses}} to do this.)}
\item{\verb{error}}{return location for a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gResolverLookupByAddress}
\name{gResolverLookupByAddress}
\title{gResolverLookupByAddress}
\description{Synchronously reverse-resolves \code{address} to determine its
associated hostname.}
\usage{gResolverLookupByAddress(object, address, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GResolver}}}
\item{\verb{address}}{the address to reverse-resolve}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If the DNS resolution fails, \code{error} (if non-\code{NULL}) will be set to
a value from \verb{GResolverError}.
  
If \code{cancellable} is non-\code{NULL}, it can be used to cancel the
operation, in which case \code{error} (if non-\code{NULL}) will be set to
\code{G_IO_ERROR_CANCELLED}.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[character] a hostname (either ASCII-only, or in ASCII-encoded
form), or \code{NULL} on error.}
\item{\verb{error}}{return location for a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

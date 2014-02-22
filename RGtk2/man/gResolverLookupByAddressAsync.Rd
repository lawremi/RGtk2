\alias{gResolverLookupByAddressAsync}
\name{gResolverLookupByAddressAsync}
\title{gResolverLookupByAddressAsync}
\description{Begins asynchronously reverse-resolving \code{address} to determine its
associated hostname, and eventually calls \code{callback}, which must
call \code{\link{gResolverLookupByAddressFinish}} to get the final result.}
\usage{gResolverLookupByAddressAsync(object, address, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GResolver}}}
\item{\verb{address}}{the address to reverse-resolve}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{\verb{callback}}{callback to call after resolution completes}
\item{\verb{user.data}}{data for \code{callback}}
}
\details{Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

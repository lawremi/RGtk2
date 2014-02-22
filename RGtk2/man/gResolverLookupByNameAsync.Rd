\alias{gResolverLookupByNameAsync}
\name{gResolverLookupByNameAsync}
\title{gResolverLookupByNameAsync}
\description{Begins asynchronously resolving \code{hostname} to determine its
associated IP address(es), and eventually calls \code{callback}, which
must call \code{\link{gResolverLookupByNameFinish}} to get the result.
See \code{\link{gResolverLookupByName}} for more details.}
\usage{gResolverLookupByNameAsync(object, hostname, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GResolver}}}
\item{\verb{hostname}}{the hostname to look up the address of}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{\verb{callback}}{callback to call after resolution completes}
\item{\verb{user.data}}{data for \code{callback}}
}
\details{Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

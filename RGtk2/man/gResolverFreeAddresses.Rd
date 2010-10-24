\alias{gResolverFreeAddresses}
\name{gResolverFreeAddresses}
\title{gResolverFreeAddresses}
\description{Frees \code{addresses} (which should be the return value from
\code{\link{gResolverLookupByName}} or \code{\link{gResolverLookupByNameFinish}}).
(This is a convenience method; you can also simply free the results
by hand.)}
\usage{gResolverFreeAddresses(addresses)}
\arguments{\item{\verb{addresses}}{a \verb{list} of \code{\link{GInetAddress}}}}
\details{Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gResolverSetDefault}
\name{gResolverSetDefault}
\title{gResolverSetDefault}
\description{Sets \code{resolver} to be the application's default resolver (reffing
\code{resolver}, and unreffing the previous default resolver, if any).
Future calls to \code{\link{gResolverGetDefault}} will return this resolver.}
\usage{gResolverSetDefault(object)}
\arguments{\item{\verb{object}}{the new default \code{\link{GResolver}}}}
\details{This can be used if an application wants to perform any sort of DNS
caching or "pinning"; it can implement its own \code{\link{GResolver}} that
calls the original default resolver for DNS operations, and
implements its own cache policies on top of that, and then set
itself as the default resolver for all later code to use.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

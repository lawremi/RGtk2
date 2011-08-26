\alias{gResolverGetDefault}
\name{gResolverGetDefault}
\title{gResolverGetDefault}
\description{Gets the default \code{\link{GResolver}}. You should unref it when you are done
with it. \code{\link{GResolver}} may use its reference count as a hint about how
many threads/processes, etc it should allocate for concurrent DNS
resolutions.}
\usage{gResolverGetDefault()}
\details{Since 2.22}
\value{[\code{\link{GResolver}}] the default \code{\link{GResolver}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

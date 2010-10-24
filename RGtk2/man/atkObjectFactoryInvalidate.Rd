\alias{atkObjectFactoryInvalidate}
\name{atkObjectFactoryInvalidate}
\title{atkObjectFactoryInvalidate}
\description{Inform \code{factory} that it is no longer being used to create
accessibles. When called, \code{factory} may need to inform
\verb{AtkObjects} which it has created that they need to be re-instantiated.
Note: primarily used for runtime replacement of \verb{AtkObjectFactorys}
in object registries.}
\usage{atkObjectFactoryInvalidate(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkObjectFactory}}]  an \code{\link{AtkObjectFactory}} to invalidate}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

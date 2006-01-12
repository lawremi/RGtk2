\alias{atkGetDefaultRegistry}
\name{atkGetDefaultRegistry}
\title{atkGetDefaultRegistry}
\description{Gets a default implementation of the \code{\link{AtkObjectFactory}}/type
registry.
Note: For most toolkit maintainers, this will be the correct
registry for registering new \code{\link{AtkObject}} factories. Following
a call to this function, maintainers may call \code{\link{atkRegistrySetFactoryType}}
to associate an \code{\link{AtkObjectFactory}} subclass with the GType of objects
for whom accessibility information will be provided.}
\usage{atkGetDefaultRegistry()}
\value{[\code{\link{AtkRegistry}}]  a default implementation of the \code{\link{AtkObjectFactory}}/type
registry}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

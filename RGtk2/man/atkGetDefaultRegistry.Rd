\alias{atkGetDefaultRegistry}
\name{atkGetDefaultRegistry}
\title{atkGetDefaultRegistry}
\description{Gets a default implementation of the \verb{\link{AtkObjectFactory}}/type
registry.
Note: For most toolkit maintainers, this will be the correct
registry for registering new \verb{\link{AtkObject}} factories. Following
a call to this function, maintainers may call \code{\link{atkRegistrySetFactoryType}}
to associate an \verb{\link{AtkObjectFactory}} subclass with the GType of objects
for whom accessibility information will be provided.}
\usage{atkGetDefaultRegistry()}
\value{[\verb{\link{AtkRegistry}}]  a default implementation of the \verb{\link{AtkObjectFactory}}/type
registry}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{atkRegistryGetFactory}
\name{atkRegistryGetFactory}
\title{atkRegistryGetFactory}
\description{Gets an \code{\link{AtkObjectFactory}} appropriate for creating \verb{AtkObjects}
appropriate for \code{type}.}
\usage{atkRegistryGetFactory(object, type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkRegistry}}]  an \code{\link{AtkRegistry}}}
\item{\verb{type}}{[\code{\link{GType}}]  a \code{\link{GType}} with which to look up the associated \code{\link{AtkObjectFactory}}}
}
\value{[\code{\link{AtkObjectFactory}}]  an \code{\link{AtkObjectFactory}} appropriate for creating \verb{AtkObjects}
appropriate for \code{type}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

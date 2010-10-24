\alias{atkRegistryGetFactoryType}
\name{atkRegistryGetFactoryType}
\title{atkRegistryGetFactoryType}
\description{Provides a \code{\link{GType}} indicating the \code{\link{AtkObjectFactory}} subclass
associated with \code{type}.}
\usage{atkRegistryGetFactoryType(object, type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkRegistry}}]  an \code{\link{AtkRegistry}}}
\item{\verb{type}}{[\code{\link{GType}}]  a \code{\link{GType}} with which to look up the associated \code{\link{AtkObjectFactory}}
subclass}
}
\value{[\code{\link{GType}}]  a \code{\link{GType}} associated with type \code{type}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

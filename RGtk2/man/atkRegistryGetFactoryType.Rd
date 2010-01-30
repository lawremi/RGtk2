\alias{atkRegistryGetFactoryType}
\name{atkRegistryGetFactoryType}
\title{atkRegistryGetFactoryType}
\description{Provides a \verb{\link{GType}} indicating the \verb{\link{AtkObjectFactory}} subclass
associated with \code{type}.}
\usage{atkRegistryGetFactoryType(object, type)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkRegistry}}]  an \verb{\link{AtkRegistry}}}
\item{\verb{type}}{[\verb{\link{GType}}]  a \verb{\link{GType}} with which to look up the associated \verb{\link{AtkObjectFactory}}
subclass}
}
\value{[\verb{\link{GType}}]  a \verb{\link{GType}} associated with type \code{type}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

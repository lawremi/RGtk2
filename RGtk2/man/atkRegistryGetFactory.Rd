\alias{atkRegistryGetFactory}
\name{atkRegistryGetFactory}
\title{atkRegistryGetFactory}
\description{Gets an \verb{\link{AtkObjectFactory}} appropriate for creating \verb{AtkObjects}
appropriate for \code{type}.}
\usage{atkRegistryGetFactory(object, type)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkRegistry}}]  an \verb{\link{AtkRegistry}}}
\item{\verb{type}}{[\verb{\link{GType}}]  a \verb{\link{GType}} with which to look up the associated \verb{\link{AtkObjectFactory}}}
}
\value{[\verb{\link{AtkObjectFactory}}]  an \verb{\link{AtkObjectFactory}} appropriate for creating \verb{AtkObjects}
appropriate for \code{type}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

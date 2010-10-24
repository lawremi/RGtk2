\alias{atkRegistrySetFactoryType}
\name{atkRegistrySetFactoryType}
\title{atkRegistrySetFactoryType}
\description{Associate an \code{\link{AtkObjectFactory}} subclass with a \code{\link{GType}}. Note:
The associated \code{factory.type} will thereafter be responsible for
the creation of new \code{\link{AtkObject}} implementations for instances
appropriate for \code{type}.}
\usage{atkRegistrySetFactoryType(object, type, factory.type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkRegistry}}]  the \code{\link{AtkRegistry}} in which to register the type association}
\item{\verb{type}}{[\code{\link{GType}}]  an \code{\link{AtkObject}} type }
\item{\verb{factory.type}}{[\code{\link{GType}}]  an \code{\link{AtkObjectFactory}} type to associate with \code{type}.  Must
implement AtkObject appropriate for \code{type}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

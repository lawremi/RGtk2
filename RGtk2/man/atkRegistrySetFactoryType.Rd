\alias{atkRegistrySetFactoryType}
\name{atkRegistrySetFactoryType}
\title{atkRegistrySetFactoryType}
\description{Associate an \verb{\link{AtkObjectFactory}} subclass with a \verb{\link{GType}}. Note:
The associated \code{factory.type} will thereafter be responsible for
the creation of new \verb{\link{AtkObject}} implementations for instances
appropriate for \code{type}.}
\usage{atkRegistrySetFactoryType(object, type, factory.type)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkRegistry}}]  the \verb{\link{AtkRegistry}} in which to register the type association}
\item{\verb{type}}{[\verb{\link{GType}}]  an \verb{\link{AtkObject}} type }
\item{\verb{factory.type}}{[\verb{\link{GType}}]  an \verb{\link{AtkObjectFactory}} type to associate with \code{type}.  Must
implement AtkObject appropriate for \code{type}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gtkContainerClassFindChildProperty}
\name{gtkContainerClassFindChildProperty}
\title{gtkContainerClassFindChildProperty}
\description{Finds a child property of a container class by name.}
\usage{gtkContainerClassFindChildProperty(cclass, property.name)}
\arguments{
\item{\verb{cclass}}{[GObjectClass]  a \verb{\link{GtkContainerClass}}}
\item{\verb{property.name}}{[character]  the name of the child property to find}
}
\value{[\verb{\link{GParamSpec}}]  the \verb{\link{GParamSpec}} of the child property or \code{NULL} if \code{class} has no
  child property with that name.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

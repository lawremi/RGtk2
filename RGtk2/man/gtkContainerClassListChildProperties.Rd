\alias{gtkContainerClassListChildProperties}
\name{gtkContainerClassListChildProperties}
\title{gtkContainerClassListChildProperties}
\description{Returns all child properties of a container class.}
\usage{gtkContainerClassListChildProperties(cclass)}
\arguments{\item{\code{cclass}}{[GObjectClass]  a \code{\link{GtkContainerClass}}}}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GParamSpec}}]  a newly allocated list of \code{\link{GParamSpec}}*.}
\item{\code{n.properties}}{[numeric]  location to return the number of child properties found}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

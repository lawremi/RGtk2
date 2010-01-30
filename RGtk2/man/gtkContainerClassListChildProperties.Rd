\alias{gtkContainerClassListChildProperties}
\name{gtkContainerClassListChildProperties}
\title{gtkContainerClassListChildProperties}
\description{Returns all child properties of a container class.}
\usage{gtkContainerClassListChildProperties(cclass)}
\arguments{\item{\verb{cclass}}{[GObjectClass]  a \verb{\link{GtkContainerClass}}}}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GParamSpec}}]  a newly allocated list of \verb{\link{GParamSpec}}*.}
\item{\verb{n.properties}}{[numeric]  location to return the number of child properties found}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

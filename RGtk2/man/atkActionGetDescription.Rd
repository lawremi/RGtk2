\alias{atkActionGetDescription}
\name{atkActionGetDescription}
\title{atkActionGetDescription}
\description{Returns a description of the specified action of the object.}
\usage{atkActionGetDescription(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkAction}}]  a \code{\link{GObject}} instance that implements AtkActionIface}
\item{\verb{i}}{[integer]  the action index corresponding to the action to be performed }
}
\value{[character] a description string, or \code{NULL}
if \code{action} does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

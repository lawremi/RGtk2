\alias{atkActionGetName}
\name{atkActionGetName}
\title{atkActionGetName}
\description{Returns the name of the specified action of the object.}
\usage{atkActionGetName(object, i)}
\arguments{
\item{\code{object}}{[\code{\link{AtkAction}}]  a \code{\link{GObject}} instance that implements AtkActionIface}
\item{\code{i}}{[integer]  the action index corresponding to the action to be performed }
}
\value{[character] a name string, or \code{NULL}
if \code{action} does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{atkActionGetLocalizedName}
\name{atkActionGetLocalizedName}
\title{atkActionGetLocalizedName}
\description{Returns the localized name of the specified action of the object.}
\usage{atkActionGetLocalizedName(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkAction}}]  a \code{\link{GObject}} instance that implements AtkActionIface}
\item{\verb{i}}{[integer]  the action index corresponding to the action to be performed }
}
\value{[character] a name string, or \code{NULL}
if \code{action} does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

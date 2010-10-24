\alias{atkActionGetNActions}
\name{atkActionGetNActions}
\title{atkActionGetNActions}
\description{Gets the number of accessible actions available on the object.
If there are more than one, the first one is considered the
"default" action of the object.}
\usage{atkActionGetNActions(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkAction}}]  a \code{\link{GObject}} instance that implements AtkActionIface}}
\value{[integer]  a the number of actions, or 0 if \code{action} does not
implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

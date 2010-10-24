\alias{atkComponentSetPosition}
\name{atkComponentSetPosition}
\title{atkComponentSetPosition}
\description{Sets the postition of \code{component}.}
\usage{atkComponentSetPosition(object, x, y, coord.type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkComponent}}]  an \code{\link{AtkComponent}}}
\item{\verb{x}}{[integer]  x coordinate}
\item{\verb{y}}{[integer]  y coordinate}
\item{\verb{coord.type}}{[\code{\link{AtkCoordType}}]  specifies whether the coordinates are relative to the screen
or to the components top level window}
}
\value{[logical] \code{TRUE} or \code{FALSE} whether or not the position was set or not}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

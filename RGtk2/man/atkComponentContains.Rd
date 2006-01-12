\alias{atkComponentContains}
\name{atkComponentContains}
\title{atkComponentContains}
\description{Checks whether the specified point is within the extent of the \code{component}.}
\usage{atkComponentContains(object, x, y, coord.type)}
\arguments{
\item{\code{object}}{[\code{\link{AtkComponent}}]  the \code{\link{AtkComponent}}}
\item{\code{x}}{[integer]  x coordinate}
\item{\code{y}}{[integer]  y coordinate}
\item{\code{coord.type}}{[\code{\link{AtkCoordType}}]  specifies whether the coordinates are relative to the screen
or to the components top level window}
}
\value{[logical]  \code{TRUE} or \code{FALSE} indicating whether the specified point is within
the extent of the \code{component} or not}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

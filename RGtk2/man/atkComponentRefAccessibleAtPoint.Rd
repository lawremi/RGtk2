\alias{atkComponentRefAccessibleAtPoint}
\name{atkComponentRefAccessibleAtPoint}
\title{atkComponentRefAccessibleAtPoint}
\description{Gets a reference to the accessible child, if one exists, at the
coordinate point specified by \code{x} and \code{y}.}
\usage{atkComponentRefAccessibleAtPoint(object, x, y, coord.type)}
\arguments{
\item{\code{object}}{[\code{\link{AtkComponent}}]  the \code{\link{AtkComponent}}}
\item{\code{x}}{[integer]  x coordinate}
\item{\code{y}}{[integer]  y coordinate}
\item{\code{coord.type}}{[\code{\link{AtkCoordType}}]  specifies whether the coordinates are relative to the screen
or to the components top level window}
}
\value{[\code{\link{AtkObject}}]  a reference to the accessible child, if one exists}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

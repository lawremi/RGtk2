\alias{atkComponentSetExtents}
\name{atkComponentSetExtents}
\title{atkComponentSetExtents}
\description{Sets the extents of \code{component}.}
\usage{atkComponentSetExtents(object, x, y, width, height, coord.type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkComponent}}]  an \code{\link{AtkComponent}}}
\item{\verb{x}}{[integer]  x coordinate}
\item{\verb{y}}{[integer]  y coordinate}
\item{\verb{width}}{[integer]  width to set for \code{component}}
\item{\verb{height}}{[integer]  height to set for \code{component}}
\item{\verb{coord.type}}{[\code{\link{AtkCoordType}}]  specifies whether the coordinates are relative to the screen
or to the components top level window}
}
\value{[logical] \code{TRUE} or \code{FALSE} whether the extents were set or not}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

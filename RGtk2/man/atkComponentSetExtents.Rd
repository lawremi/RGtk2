\alias{atkComponentSetExtents}
\name{atkComponentSetExtents}
\title{atkComponentSetExtents}
\description{Sets the extents of \code{component}.}
\usage{atkComponentSetExtents(object, x, y, width, height, coord.type)}
\arguments{
\item{\code{object}}{[\code{\link{AtkComponent}}]  an \code{\link{AtkComponent}}}
\item{\code{x}}{[integer]  x coordinate}
\item{\code{y}}{[integer]  y coordinate}
\item{\code{width}}{[integer]  width to set for \code{component}}
\item{\code{height}}{[integer]  height to set for \code{component}}
\item{\code{coord.type}}{[\code{\link{AtkCoordType}}]  specifies whether the coordinates are relative to the screen
or to the components top level window}
}
\value{[logical]  \code{TRUE} or \code{FALSE} whether the extents were set or not}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{atkComponentGetExtents}
\name{atkComponentGetExtents}
\title{atkComponentGetExtents}
\description{Gets the rectangle which gives the extent of the \code{component}.}
\usage{atkComponentGetExtents(object, coord.type)}
\arguments{
\item{\code{object}}{[\code{\link{AtkComponent}}]  an \code{\link{AtkComponent}}}
\item{\code{coord.type}}{[\code{\link{AtkCoordType}}]  specifies whether the coordinates are relative to the screen
or to the components top level window}
}
\value{
A list containing the following elements:
\item{\code{x}}{[integer]  \code{integer} to put x coordinate}
\item{\code{y}}{[integer]  \code{integer} to put y coordinate}
\item{\code{width}}{[integer]  \code{integer} to put width}
\item{\code{height}}{[integer]  \code{integer} to put height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{atkComponentGetExtents}
\name{atkComponentGetExtents}
\title{atkComponentGetExtents}
\description{Gets the rectangle which gives the extent of the \code{component}.}
\usage{atkComponentGetExtents(object, coord.type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkComponent}}]  an \code{\link{AtkComponent}}}
\item{\verb{coord.type}}{[\code{\link{AtkCoordType}}]  specifies whether the coordinates are relative to the screen
or to the components top level window}
}
\value{
A list containing the following elements:
\item{\verb{x}}{[integer]  \verb{integer} to put x coordinate}
\item{\verb{y}}{[integer]  \verb{integer} to put y coordinate}
\item{\verb{width}}{[integer]  \verb{integer} to put width}
\item{\verb{height}}{[integer]  \verb{integer} to put height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

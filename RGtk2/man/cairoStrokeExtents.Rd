\alias{cairoStrokeExtents}
\name{cairoStrokeExtents}
\title{cairoStrokeExtents}
\description{Computes a bounding box in user coordinates covering the area that
would be affected by a \code{\link{cairoStroke}} operation operation given the
current path and stroke parameters. If the current path is empty,}
\usage{cairoStrokeExtents(cr)}
\arguments{\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\value{
A list containing the following elements:
\item{\code{x1}}{[numeric]  left of the resulting extents}
\item{\code{y1}}{[numeric]  top of the resulting extents}
\item{\code{x2}}{[numeric]  right of the resulting extents}
\item{\code{y2}}{[numeric]  bottom of the resulting extents}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gdkRegionPolygon}
\name{gdkRegionPolygon}
\title{gdkRegionPolygon}
\description{Creates a new \code{\link{GdkRegion}} using the polygon defined by a 
number of points.}
\usage{gdkRegionPolygon(points, fill.rule)}
\arguments{
\item{\verb{points}}{a list of \code{\link{GdkPoint}} structs}
\item{\verb{fill.rule}}{specifies which pixels are included in the region when the
polygon overlaps itself.}
}
\value{[\code{\link{GdkRegion}}] a new \code{\link{GdkRegion}} based on the given polygon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

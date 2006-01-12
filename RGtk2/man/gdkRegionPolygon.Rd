\alias{gdkRegionPolygon}
\name{gdkRegionPolygon}
\title{gdkRegionPolygon}
\description{Creates a new \code{\link{GdkRegion}} using the polygon defined by a number of points.}
\usage{gdkRegionPolygon(points, fill.rule)}
\arguments{
\item{\code{points}}{[\code{\link{GdkPoint}}] a list of \code{\link{GdkPoint}} structs.}
\item{\code{fill.rule}}{[\code{\link{GdkFillRule}}] specifies which pixels are included in the region when the polygon
overlaps itself.}
}
\value{[\code{\link{GdkRegion}}] a new \code{\link{GdkRegion}} based on the given polygon.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

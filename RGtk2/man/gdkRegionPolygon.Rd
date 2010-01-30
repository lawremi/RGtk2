\alias{gdkRegionPolygon}
\name{gdkRegionPolygon}
\title{gdkRegionPolygon}
\description{Creates a new \verb{\link{GdkRegion}} using the polygon defined by a 
number of points.}
\usage{gdkRegionPolygon(points, fill.rule)}
\arguments{
\item{\verb{points}}{[\verb{\link{GdkPoint}}]  a list of \verb{\link{GdkPoint}} structs}
\item{\verb{fill.rule}}{[\code{\link{GdkFillRule}}]  specifies which pixels are included in the region when the 
    polygon overlaps itself.}
}
\value{[\verb{\link{GdkRegion}}]  a new \verb{\link{GdkRegion}} based on the given polygon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

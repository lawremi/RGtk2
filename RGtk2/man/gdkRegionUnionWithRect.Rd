\alias{gdkRegionUnionWithRect}
\name{gdkRegionUnionWithRect}
\title{gdkRegionUnionWithRect}
\description{Sets the area of \code{region} to the union of the areas of \code{region} and
\code{rect}. The resulting area is the set of pixels contained in
either \code{region} or \code{rect}.}
\usage{gdkRegionUnionWithRect(object, rect)}
\arguments{
\item{\code{object}}{[\code{\link{GdkRegion}}]  a \code{\link{GdkRegion}}.}
\item{\code{rect}}{[\code{\link{GdkRectangle}}]  a \code{\link{GdkRectangle}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

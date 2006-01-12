\alias{gdkRegionGetRectangles}
\name{gdkRegionGetRectangles}
\title{gdkRegionGetRectangles}
\description{Obtains the area covered by the region as a list of rectangles.}
\usage{gdkRegionGetRectangles(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkRegion}}]  a \code{\link{GdkRegion}}}}
\value{
A list containing the following elements:
\item{\code{rectangles}}{[\code{\link{GdkRectangle}}]  return location for a list of rectangles}
\item{\code{n.rectangles}}{[integer]  length of returned list}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gdkRegionGetRectangles}
\name{gdkRegionGetRectangles}
\title{gdkRegionGetRectangles}
\description{Obtains the area covered by the region as a list of rectangles.}
\usage{gdkRegionGetRectangles(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GdkRegion}}]  a \verb{\link{GdkRegion}}}}
\value{
A list containing the following elements:
\item{\verb{rectangles}}{[\verb{\link{GdkRectangle}}]  return location for a list of rectangles}
\item{\verb{n.rectangles}}{[integer]  length of returned list}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

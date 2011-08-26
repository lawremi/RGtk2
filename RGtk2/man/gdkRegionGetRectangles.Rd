\alias{gdkRegionGetRectangles}
\name{gdkRegionGetRectangles}
\title{gdkRegionGetRectangles}
\description{Obtains the area covered by the region as a list of rectangles.}
\usage{gdkRegionGetRectangles(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkRegion}}}}
\value{
A list containing the following elements:
\item{\verb{rectangles}}{return location for a list of rectangles. \emph{[  \acronym{array}   length=n_rectangles][  \acronym{transfer container}  ]}}
\item{\verb{n.rectangles}}{length of returned list}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

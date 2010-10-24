\alias{cairoClipExtents}
\name{cairoClipExtents}
\title{cairoClipExtents}
\description{Computes a bounding box in user coordinates covering the area inside the
current clip.}
\usage{cairoClipExtents(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{  Since 1.4}
\value{
A list containing the following elements:
\item{\verb{x1}}{[numeric]  left of the resulting extents}
\item{\verb{y1}}{[numeric]  top of the resulting extents}
\item{\verb{x2}}{[numeric]  right of the resulting extents}
\item{\verb{y2}}{[numeric]  bottom of the resulting extents}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

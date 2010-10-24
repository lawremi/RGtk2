\alias{cairoPathExtents}
\name{cairoPathExtents}
\title{cairoPathExtents}
\description{Computes a bounding box in user-space coordinates covering the
points on the current path. If the current path is empty, returns
an empty rectangle ((0,0), (0,0)). Stroke parameters, fill rule,
surface dimensions and clipping are not taken into account.}
\usage{cairoPathExtents(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{Contrast with \code{\link{cairoFillExtents}} and \code{\link{cairoStrokeExtents}} which
return the extents of only the area that would be "inked" by
the corresponding drawing operations.
  
The result of \code{\link{cairoPathExtents}} is defined as equivalent to the
limit of \code{\link{cairoStrokeExtents}} with \code{CAIRO_LINE_CAP_ROUND} as the
line width approaches 0.0, (but never reaching the empty-rectangle
returned by \code{\link{cairoStrokeExtents}} for a line width of 0.0).
  
Specifically, this means that zero-area sub-paths such as
\code{\link{cairoMoveTo}};\code{\link{cairoLineTo}} segments, (even degenerate cases
where the coordinates to both calls are identical), will be
considered as contributing to the extents. However, a lone
\code{\link{cairoMoveTo}} will not contribute to the results of
\code{\link{cairoPathExtents}}.  
  Since 1.6}
\value{
A list containing the following elements:
\item{\verb{x1}}{[numeric]  left of the resulting extents}
\item{\verb{y1}}{[numeric]  top of the resulting extents}
\item{\verb{x2}}{[numeric]  right of the resulting extents}
\item{\verb{y2}}{[numeric]  bottom of the resulting extents}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{cairoStrokeExtents}
\name{cairoStrokeExtents}
\title{cairoStrokeExtents}
\description{Computes a bounding box in user coordinates covering the area that
would be affected, (the "inked" area), by a \code{\link{cairoStroke}}
operation given the current path and stroke parameters.
If the current path is empty, returns an empty rectangle ((0,0), (0,0)).
Surface dimensions and clipping are not taken into account.}
\usage{cairoStrokeExtents(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{Note that if the line width is set to exactly zero, then
\code{\link{cairoStrokeExtents}} will return an empty rectangle. Contrast with
\code{\link{cairoPathExtents}} which can be used to compute the non-empty
bounds as the line width approaches zero.
  
Note that \code{\link{cairoStrokeExtents}} must necessarily do more work to
compute the precise inked areas in light of the stroke parameters,
so \code{\link{cairoPathExtents}} may be more desirable for sake of
performance if non-inked path extents are desired.
  
See \code{\link{cairoStroke}}, \code{\link{cairoSetLineWidth}}, \code{\link{cairoSetLineJoin}},
\code{\link{cairoSetLineCap}}, \code{\link{cairoSetDash}}, and
\code{\link{cairoStrokePreserve}}.  }
\value{
A list containing the following elements:
\item{\verb{x1}}{[numeric]  left of the resulting extents}
\item{\verb{y1}}{[numeric]  top of the resulting extents}
\item{\verb{x2}}{[numeric]  right of the resulting extents}
\item{\verb{y2}}{[numeric]  bottom of the resulting extents}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

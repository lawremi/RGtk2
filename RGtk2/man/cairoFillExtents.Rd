\alias{cairoFillExtents}
\name{cairoFillExtents}
\title{cairoFillExtents}
\description{Computes a bounding box in user coordinates covering the area that
would be affected, (the "inked" area), by a \code{\link{cairoFill}} operation
given the current path and fill parameters. If the current path is
empty, returns an empty rectangle ((0,0), (0,0)). Surface
dimensions and clipping are not taken into account.}
\usage{cairoFillExtents(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{Contrast with \code{\link{cairoPathExtents}}, which is similar, but returns
non-zero extents for some paths with no inked area, (such as a
simple line segment).
  
Note that \code{\link{cairoFillExtents}} must necessarily do more work to
compute the precise inked areas in light of the fill rule, so
\code{\link{cairoPathExtents}} may be more desirable for sake of performance
if the non-inked path extents are desired.
  
See \code{\link{cairoFill}}, \code{\link{cairoSetFillRule}} and \code{\link{cairoFillPreserve}}.  }
\value{
A list containing the following elements:
\item{\verb{x1}}{[numeric]  left of the resulting extents}
\item{\verb{y1}}{[numeric]  top of the resulting extents}
\item{\verb{x2}}{[numeric]  right of the resulting extents}
\item{\verb{y2}}{[numeric]  bottom of the resulting extents}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

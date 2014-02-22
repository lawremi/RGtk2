\alias{pangoLayoutLineGetPixelExtents}
\name{pangoLayoutLineGetPixelExtents}
\title{pangoLayoutLineGetPixelExtents}
\description{Computes the logical and ink extents of \code{layout.line} in device units.
This function just calls \code{\link{pangoLayoutLineGetExtents}} followed by
two \code{\link{pangoExtentsToPixels}} calls, rounding \code{ink.rect} and \code{logical.rect}
such that the rounded rectangles fully contain the unrounded one (that is,
passes them as first argument to \code{\link{pangoExtentsToPixels}}).}
\usage{pangoLayoutLineGetPixelExtents(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayoutLine}}]  a \code{\link{PangoLayoutLine}}}}
\value{
A list containing the following elements:
\item{\verb{ink.rect}}{[\code{\link{PangoRectangle}}]     rectangle used to store the extents of the glyph string
              as drawn, or \code{NULL}}
\item{\verb{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the glyph
              string, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

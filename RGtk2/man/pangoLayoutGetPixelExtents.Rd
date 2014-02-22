\alias{pangoLayoutGetPixelExtents}
\name{pangoLayoutGetPixelExtents}
\title{pangoLayoutGetPixelExtents}
\description{Computes the logical and ink extents of \code{layout} in device units.
This function just calls \code{\link{pangoLayoutGetExtents}} followed by
two \code{\link{pangoExtentsToPixels}} calls, rounding \code{ink.rect} and \code{logical.rect}
such that the rounded rectangles fully contain the unrounded one (that is,
passes them as first argument to \code{\link{pangoExtentsToPixels}}).}
\usage{pangoLayoutGetPixelExtents(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]    a \code{\link{PangoLayout}}}}
\value{
A list containing the following elements:
\item{\verb{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the extents of the layout as drawn
           or \code{NULL} to indicate that the result is not needed.}
\item{\verb{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the
             layout or \code{NULL} to indicate that the result is not needed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

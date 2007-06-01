\alias{cairoFillExtents}
\name{cairoFillExtents}
\title{cairoFillExtents}
\description{Computes a bounding box in user coordinates covering the area that
would be affected by a \code{\link{cairoFill}} operation given the current path
and fill parameters. If the current path is empty, returns an empty
rectangle (0,0, 0,0). Surface dimensions and clipping are not taken
into account.}
\usage{cairoFillExtents(cr)}
\arguments{\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{See \code{\link{cairoFill}}, \code{\link{cairoSetFillRule}} and \code{\link{cairoFillPreserve}}.  }
\value{
A list containing the following elements:
\item{\code{x1}}{[numeric]  left of the resulting extents}
\item{\code{y1}}{[numeric]  top of the resulting extents}
\item{\code{x2}}{[numeric]  right of the resulting extents}
\item{\code{y2}}{[numeric]  bottom of the resulting extents}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

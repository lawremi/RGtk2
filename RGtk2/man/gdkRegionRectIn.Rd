\alias{gdkRegionRectIn}
\name{gdkRegionRectIn}
\title{gdkRegionRectIn}
\description{Tests whether a rectangle is within a region.}
\usage{gdkRegionRectIn(object, rect)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkRegion}}]  a \verb{\link{GdkRegion}}.}
\item{\verb{rect}}{[\verb{\link{GdkRectangle}}]  a \verb{\link{GdkRectangle}}.}
}
\value{[\code{\link{GdkOverlapType}}] \code{GDK_OVERLAP_RECTANGLE_IN}, \code{GDK_OVERLAP_RECTANGLE_OUT}, or
  \code{GDK_OVERLAP_RECTANGLE_PART}, depending on whether the rectangle is inside,
  outside, or partly inside the \verb{\link{GdkRegion}}, respectively.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gdkRegionRectIn}
\name{gdkRegionRectIn}
\title{gdkRegionRectIn}
\description{Tests whether a rectangle is within a region.}
\usage{gdkRegionRectIn(object, rect)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkRegion}}.}
\item{\verb{rect}}{a \code{\link{GdkRectangle}}.}
}
\value{[\code{\link{GdkOverlapType}}] \code{GDK_OVERLAP_RECTANGLE_IN}, \code{GDK_OVERLAP_RECTANGLE_OUT}, or
\code{GDK_OVERLAP_RECTANGLE_PART}, depending on whether the rectangle is inside,
outside, or partly inside the \code{\link{GdkRegion}}, respectively.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

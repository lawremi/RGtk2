\alias{gdkRectangleUnion}
\name{gdkRectangleUnion}
\title{gdkRectangleUnion}
\description{Calculates the union of two rectangles.
The union of rectangles \code{src1} and \code{src2} is the smallest rectangle which
includes both \code{src1} and \code{src2} within it.
It is allowed for \code{dest} to be the same as either \code{src1} or \code{src2}.}
\usage{gdkRectangleUnion(src1, src2)}
\arguments{
\item{\code{src1}}{[\code{\link{GdkRectangle}}]  a \code{\link{GdkRectangle}}}
\item{\code{src2}}{[\code{\link{GdkRectangle}}]  a \code{\link{GdkRectangle}}}
}
\value{
A list containing the following elements:
\item{\code{dest}}{[\code{\link{GdkRectangle}}]  return location for the union of \code{src1} and \code{src2}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

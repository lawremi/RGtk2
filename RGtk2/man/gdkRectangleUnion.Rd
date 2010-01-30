\alias{gdkRectangleUnion}
\name{gdkRectangleUnion}
\title{gdkRectangleUnion}
\description{Calculates the union of two rectangles.
The union of rectangles \code{src1} and \code{src2} is the smallest rectangle which
includes both \code{src1} and \code{src2} within it.
It is allowed for \code{dest} to be the same as either \code{src1} or \code{src2}.}
\usage{gdkRectangleUnion(src1, src2)}
\arguments{
\item{\verb{src1}}{[\verb{\link{GdkRectangle}}]  a \verb{\link{GdkRectangle}}}
\item{\verb{src2}}{[\verb{\link{GdkRectangle}}]  a \verb{\link{GdkRectangle}}}
}
\value{
A list containing the following elements:
\item{\verb{dest}}{[\verb{\link{GdkRectangle}}]  return location for the union of \code{src1} and \code{src2}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

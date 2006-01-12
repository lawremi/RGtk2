\alias{gdkRectangleUnion}
\name{gdkRectangleUnion}
\title{gdkRectangleUnion}
\description{Calculates the union of two rectangles.
The union of rectangles \code{src1} and \code{src2} is the smallest rectangle which
includes both \code{src1} and \code{src2} within it.}
\usage{gdkRectangleUnion(src1, src2)}
\arguments{
\item{\code{src1}}{[\code{\link{GdkRectangle}}] a \code{\link{GdkRectangle}}.}
\item{\code{src2}}{[\code{\link{GdkRectangle}}] a \code{\link{GdkRectangle}}.}
}
\value{
A list containing the following elements:
\item{\code{dest}}{[\code{\link{GdkRectangle}}] the union of \code{src1} and \code{src2}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

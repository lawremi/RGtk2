\alias{gdkRectangleIntersect}
\name{gdkRectangleIntersect}
\title{gdkRectangleIntersect}
\description{Calculates the intersection of two rectangles.}
\usage{gdkRectangleIntersect(src1, src2)}
\arguments{
\item{\code{src1}}{[\code{\link{GdkRectangle}}] a \code{\link{GdkRectangle}}.}
\item{\code{src2}}{[\code{\link{GdkRectangle}}] a \code{\link{GdkRectangle}}.}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the rectangles intersect.}
\item{\code{dest}}{[\code{\link{GdkRectangle}}] the intersection of \code{src1} and \code{src2}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

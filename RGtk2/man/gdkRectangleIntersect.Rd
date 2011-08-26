\alias{gdkRectangleIntersect}
\name{gdkRectangleIntersect}
\title{gdkRectangleIntersect}
\description{Calculates the intersection of two rectangles. It is allowed for
\code{dest} to be the same as either \code{src1} or \code{src2}. If the rectangles 
do not intersect, \code{dest}'s width and height is set to 0 and its x 
and y values are undefined. If you are only interested in whether
the rectangles intersect, but not in the intersecting area itself,
pass \code{NULL} for \code{dest}.}
\usage{gdkRectangleIntersect(src1, src2)}
\arguments{
\item{\verb{src1}}{a \code{\link{GdkRectangle}}}
\item{\verb{src2}}{a \code{\link{GdkRectangle}}}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the rectangles intersect.}
\item{\verb{dest}}{return location for the intersection of \code{src1} and \code{src2}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

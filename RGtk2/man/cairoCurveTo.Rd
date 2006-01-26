\alias{cairoCurveTo}
\name{cairoCurveTo}
\title{cairoCurveTo}
\description{Adds a cubic Bézier spline to the path from the current point to
position (\code{x3}, \code{y3}) in user-space coordinates, using (\code{x1}, \code{y1}) and
(\code{x2}, \code{y2}) as the control points. After this call the current point
will be (\code{x3}, \code{y3}).}
\usage{cairoCurveTo(cr, x1, y1, x2, y2, x3, y3)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{x1}}{[numeric]  the X coordinate of the first control point}
\item{\code{y1}}{[numeric]  the Y coordinate of the first control point}
\item{\code{x2}}{[numeric]  the X coordinate of the second control point}
\item{\code{y2}}{[numeric]  the Y coordinate of the second control point}
\item{\code{x3}}{[numeric]  the X coordinate of the end of the curve}
\item{\code{y3}}{[numeric]  the Y coordinate of the end of the curve}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

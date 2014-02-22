\alias{cairoCurveTo}
\name{cairoCurveTo}
\title{cairoCurveTo}
\description{Adds a cubic B<U+00E9>zier spline to the path from the current point to
position (\code{x3}, \code{y3}) in user-space coordinates, using (\code{x1}, \code{y1}) and
(\code{x2}, \code{y2}) as the control points. After this call the current point
will be (\code{x3}, \code{y3}).}
\usage{cairoCurveTo(cr, x1, y1, x2, y2, x3, y3)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{x1}}{[numeric]  the X coordinate of the first control point}
\item{\verb{y1}}{[numeric]  the Y coordinate of the first control point}
\item{\verb{x2}}{[numeric]  the X coordinate of the second control point}
\item{\verb{y2}}{[numeric]  the Y coordinate of the second control point}
\item{\verb{x3}}{[numeric]  the X coordinate of the end of the curve}
\item{\verb{y3}}{[numeric]  the Y coordinate of the end of the curve}
}
\details{If there is no current point before the call to \code{\link{cairoCurveTo}}
this function will behave as if preceded by a call to
cairo_move_to(\code{cr}, \code{x1}, \code{y1}).  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

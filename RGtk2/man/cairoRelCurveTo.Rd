\alias{cairoRelCurveTo}
\name{cairoRelCurveTo}
\title{cairoRelCurveTo}
\description{Relative-coordinate version of \code{\link{cairoCurveTo}}. All offsets are
relative to the current point. Adds a cubic B<U+00E9>zier spline to the
path from the current point to a point offset from the current
point by (\code{dx3}, \code{dy3}), using points offset by (\code{dx1}, \code{dy1}) and
(\code{dx2}, \code{dy2}) as the control points. After this call the current
point will be offset by (\code{dx3}, \code{dy3}).}
\usage{cairoRelCurveTo(cr, dx1, dy1, dx2, dy2, dx3, dy3)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{dx1}}{[numeric]  the X offset to the first control point}
\item{\verb{dy1}}{[numeric]  the Y offset to the first control point}
\item{\verb{dx2}}{[numeric]  the X offset to the second control point}
\item{\verb{dy2}}{[numeric]  the Y offset to the second control point}
\item{\verb{dx3}}{[numeric]  the X offset to the end of the curve}
\item{\verb{dy3}}{[numeric]  the Y offset to the end of the curve}
}
\details{Given a current point of (x, y), cairo_rel_curve_to(\code{cr}, \code{dx1},
\code{dy1}, \code{dx2}, \code{dy2}, \code{dx3}, \code{dy3}) is logically equivalent to
cairo_curve_to(\code{cr}, x+\code{dx1}, y+\code{dy1}, x+\code{dx2}, y+\code{dy2}, x+\code{dx3}, y+\code{dy3}).
  
It is an error to call this function with no current point. Doing
so will cause \code{cr} to shutdown with a status of
\code{CAIRO_STATUS_NO_CURRENT_POINT}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

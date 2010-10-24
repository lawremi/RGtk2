\alias{cairoPatternGetLinearPoints}
\name{cairoPatternGetLinearPoints}
\title{cairoPatternGetLinearPoints}
\description{Gets the gradient endpoints for a linear gradient.}
\usage{cairoPatternGetLinearPoints(pattern)}
\arguments{\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}}
\details{  Since 1.4}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS}, or
\code{CAIRO_STATUS_PATTERN_TYPE_MISMATCH} if \code{pattern} is not a linear
gradient pattern.}
\item{\verb{x0}}{[numeric]  return value for the x coordinate of the first point, or \code{NULL}}
\item{\verb{y0}}{[numeric]  return value for the y coordinate of the first point, or \code{NULL}}
\item{\verb{x1}}{[numeric]  return value for the x coordinate of the second point, or \code{NULL}}
\item{\verb{y1}}{[numeric]  return value for the y coordinate of the second point, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

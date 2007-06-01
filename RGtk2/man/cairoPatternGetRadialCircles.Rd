\alias{cairoPatternGetRadialCircles}
\name{cairoPatternGetRadialCircles}
\title{cairoPatternGetRadialCircles}
\description{Gets the gradient endpoint circles for a radial gradient, each
specified as a center coordinate and a radius.}
\usage{cairoPatternGetRadialCircles(pattern)}
\arguments{\item{\code{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}}
\details{  Since  1.4}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{CairoStatus}}]  \code{CAIRO_STATUS_SUCCESS}, or
\code{CAIRO_STATUS_PATTERN_TYPE_MISMATCH} if \code{pattern} is not a radial
gradient pattern.}
\item{\code{x0}}{[numeric]  return value for the x coordinate of the center of the first circle, or \code{NULL}}
\item{\code{y0}}{[numeric]  return value for the y coordinate of the center of the first circle, or \code{NULL}}
\item{\code{r0}}{[numeric]  return value for the radius of the first circle, or \code{NULL}}
\item{\code{x1}}{[numeric]  return value for the x coordinate of the center of the second circle, or \code{NULL}}
\item{\code{y1}}{[numeric]  return value for the y coordinate of the center of the second circle, or \code{NULL}}
\item{\code{r1}}{[numeric]  return value for the radius of the second circle, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

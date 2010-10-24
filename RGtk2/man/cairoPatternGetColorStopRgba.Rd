\alias{cairoPatternGetColorStopRgba}
\name{cairoPatternGetColorStopRgba}
\title{cairoPatternGetColorStopRgba}
\description{Gets the color and offset information at the given \code{index} for a
gradient pattern.  Values of \code{index} are 0 to 1 less than the number
returned by \code{\link{cairoPatternGetColorStopCount}}.}
\usage{cairoPatternGetColorStopRgba(pattern, index)}
\arguments{
\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}
\item{\verb{index}}{[integer]  index of the stop to return data for}
}
\details{  Since 1.4}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS}, or \code{CAIRO_STATUS_INVALID_INDEX}
if \code{index} is not valid for the given pattern.  If the pattern is
not a gradient pattern, \code{CAIRO_STATUS_PATTERN_TYPE_MISMATCH} is
returned.}
\item{\verb{offset}}{[numeric]  return value for the offset of the stop, or \code{NULL}}
\item{\verb{red}}{[numeric]  return value for red component of color, or \code{NULL}}
\item{\verb{green}}{[numeric]  return value for green component of color, or \code{NULL}}
\item{\verb{blue}}{[numeric]  return value for blue component of color, or \code{NULL}}
\item{\verb{alpha}}{[numeric]  return value for alpha component of color, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

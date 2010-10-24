\alias{cairoPatternGetRgba}
\name{cairoPatternGetRgba}
\title{cairoPatternGetRgba}
\description{Gets the solid color for a solid color pattern.}
\usage{cairoPatternGetRgba(pattern)}
\arguments{\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}}
\details{  Since 1.4}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS}, or
\code{CAIRO_STATUS_PATTERN_TYPE_MISMATCH} if the pattern is not a solid
color pattern.}
\item{\verb{red}}{[numeric]  return value for red component of color, or \code{NULL}}
\item{\verb{green}}{[numeric]  return value for green component of color, or \code{NULL}}
\item{\verb{blue}}{[numeric]  return value for blue component of color, or \code{NULL}}
\item{\verb{alpha}}{[numeric]  return value for alpha component of color, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

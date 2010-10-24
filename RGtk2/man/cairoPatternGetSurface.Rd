\alias{cairoPatternGetSurface}
\name{cairoPatternGetSurface}
\title{cairoPatternGetSurface}
\description{Gets the surface of a surface pattern.}
\usage{cairoPatternGetSurface(pattern)}
\arguments{\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}}
\details{  Since 1.4}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS}, or
\code{CAIRO_STATUS_PATTERN_TYPE_MISMATCH} if the pattern is not a surface
pattern.}
\item{\verb{surface}}{[\code{\link{CairoSurface}}]  return value for surface of pattern, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

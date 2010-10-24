\alias{cairoPatternGetColorStopCount}
\name{cairoPatternGetColorStopCount}
\title{cairoPatternGetColorStopCount}
\description{Gets the number of color stops specified in the given gradient
pattern.}
\usage{cairoPatternGetColorStopCount(pattern)}
\arguments{\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}}
\details{  Since 1.4}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS}, or
\code{CAIRO_STATUS_PATTERN_TYPE_MISMATCH} if \code{pattern} is not a gradient
pattern.}
\item{\verb{count}}{[integer]  return value for the number of color stops, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

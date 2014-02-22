\alias{cairoPatternCreateRgb}
\name{cairoPatternCreateRgb}
\title{cairoPatternCreateRgb}
\description{Creates a new \code{\link{CairoPattern}} corresponding to an opaque color.  The
color components are floating point numbers in the range 0 to 1.
If the values passed in are outside that range, they will be
clamped.}
\usage{cairoPatternCreateRgb(red, green, blue)}
\arguments{
\item{\verb{red}}{[numeric]  red component of the color}
\item{\verb{green}}{[numeric]  green component of the color}
\item{\verb{blue}}{[numeric]  blue component of the color}
}
\value{[\code{\link{CairoPattern}}]  the newly created \code{\link{CairoPattern}} if successful, or
an error pattern in case of no memory.
This function will always return a valid pointer, but if an error
occurred the pattern status will be set to an error.  To inspect
the status of a pattern use \code{\link{cairoPatternStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{cairoPatternCreateRgba}
\name{cairoPatternCreateRgba}
\title{cairoPatternCreateRgba}
\description{Creates a new cairo_pattern_t corresponding to a translucent color.
The color components are floating point numbers in the range 0 to
1.  If the values passed in are outside that range, they will be
clamped.}
\usage{cairoPatternCreateRgba(red, green, blue, alpha)}
\arguments{
\item{\code{red}}{[numeric]  red component of the color}
\item{\code{green}}{[numeric]  green component of the color}
\item{\code{blue}}{[numeric]  blue component of the color}
\item{\code{alpha}}{[numeric]  alpha component of the color}
}
\value{[\code{\link{cairo_pattern_t}}]  the newly created \code{\link{cairo_pattern_t}} if succesful, or
an error pattern in case of no memory.

This function will always return a valid pointer, but if an error
occurred the pattern status will be set to an error.  To inspect
the status of a pattern use \code{\link{cairoPatternStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

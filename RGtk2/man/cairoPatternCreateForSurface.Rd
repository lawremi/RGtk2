\alias{cairoPatternCreateForSurface}
\name{cairoPatternCreateForSurface}
\title{cairoPatternCreateForSurface}
\description{Create a new cairo_pattern_t for the given surface.}
\usage{cairoPatternCreateForSurface(surface)}
\arguments{\item{\code{surface}}{[\code{\link{cairo_surface_t}}]  the surface }}
\value{[\code{\link{cairo_pattern_t}}]  the newly created \code{\link{cairo_pattern_t}} if succesful, or
an error pattern in case of no memory.

This function will always return a valid pointer, but if an error
occurred the pattern status will be set to an error.  To inspect
the status of a pattern use \code{\link{cairoPatternStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

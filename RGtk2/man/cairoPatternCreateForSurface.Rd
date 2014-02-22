\alias{cairoPatternCreateForSurface}
\name{cairoPatternCreateForSurface}
\title{cairoPatternCreateForSurface}
\description{Create a new \code{\link{CairoPattern}} for the given surface.}
\usage{cairoPatternCreateForSurface(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  the surface}}
\value{[\code{\link{CairoPattern}}]  the newly created \code{\link{CairoPattern}} if successful, or
an error pattern in case of no memory.
This function will always return a valid pointer, but if an error
occurred the pattern status will be set to an error.  To inspect
the status of a pattern use \code{\link{cairoPatternStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

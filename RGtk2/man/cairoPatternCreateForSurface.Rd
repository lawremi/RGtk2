\alias{cairoPatternCreateForSurface}
\name{cairoPatternCreateForSurface}
\title{cairoPatternCreateForSurface}
\description{Create a new \verb{\link{CairoPattern}} for the given surface.}
\usage{cairoPatternCreateForSurface(surface)}
\arguments{\item{\verb{surface}}{[\verb{\link{CairoSurface}}]  the surface}}
\value{[\verb{\link{CairoPattern}}]  the newly created \verb{\link{CairoPattern}} if successful, or
an error pattern in case of no memory.

This function will always return a valid pointer, but if an error
occurred the pattern status will be set to an error.  To inspect
the status of a pattern use \code{\link{cairoPatternStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

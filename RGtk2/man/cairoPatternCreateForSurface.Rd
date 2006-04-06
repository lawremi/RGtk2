\alias{cairoPatternCreateForSurface}
\name{cairoPatternCreateForSurface}
\title{cairoPatternCreateForSurface}
\description{Create a new cairo\_pattern\_t for the given surface.}
\usage{cairoPatternCreateForSurface(surface)}
\arguments{\item{\code{surface}}{[\code{\link{CairoSurface}}]  the surface }}
\value{[\code{\link{CairoPattern}}]  the newly created \code{\link{CairoPattern}} if succesful, or
an error pattern in case of no memory.  The caller owns the
returned object and should call \code{cairo\Pattern\Destroy()} when
finished with it.

This function will always return a valid pointer, but if an error
occurred the pattern status will be set to an error.  To inspect
the status of a pattern use \code{\link{cairoPatternStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

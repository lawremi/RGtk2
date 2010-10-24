\alias{cairoSurfaceGetFallbackResolution}
\name{cairoSurfaceGetFallbackResolution}
\title{cairoSurfaceGetFallbackResolution}
\description{This function returns the previous fallback resolution set by
\code{\link{cairoSurfaceSetFallbackResolution}}, or default fallback
resolution if never set.}
\usage{cairoSurfaceGetFallbackResolution(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}}
\details{  Since 1.8}
\value{
A list containing the following elements:
\item{\verb{x.pixels.per.inch}}{[numeric]  horizontal pixels per inch}
\item{\verb{y.pixels.per.inch}}{[numeric]  vertical pixels per inch}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

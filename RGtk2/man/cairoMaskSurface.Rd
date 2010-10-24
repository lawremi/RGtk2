\alias{cairoMaskSurface}
\name{cairoMaskSurface}
\title{cairoMaskSurface}
\description{A drawing operator that paints the current source
using the alpha channel of \code{surface} as a mask. (Opaque
areas of \code{surface} are painted with the source, transparent
areas are not painted.)}
\usage{cairoMaskSurface(cr, surface, surface.x, surface.y)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}
\item{\verb{surface.x}}{[numeric]  X coordinate at which to place the origin of \code{surface}}
\item{\verb{surface.y}}{[numeric]  Y coordinate at which to place the origin of \code{surface}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

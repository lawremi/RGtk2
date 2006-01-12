\alias{cairoMaskSurface}
\name{cairoMaskSurface}
\title{cairoMaskSurface}
\description{A drawing operator that paints the current source
using the alpha channel of \code{surface} as a mask. (Opaque
areas of \code{surface} are painted with the source, transparent
areas are not painted.)}
\usage{cairoMaskSurface(cr, surface, surface.x, surface.y)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a cairo context}
\item{\code{surface}}{[\code{\link{cairo_surface_t}}]  a \code{\link{cairo_surface_t}}}
\item{\code{surface.x}}{[numeric]  X coordinate at which to place the origin of \code{surface}}
\item{\code{surface.y}}{[numeric]  Y coordinate at which to place the origin of \code{surface}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

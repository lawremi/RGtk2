\alias{cairoSurfaceFlush}
\name{cairoSurfaceFlush}
\title{cairoSurfaceFlush}
\description{Do any pending drawing for the surface and also restore any
temporary modification's cairo has made to the surface's
state. This function must be called before switching from
drawing on the surface with cairo to drawing on it directly
with native APIs. If the surface doesn't support direct access,
then this function does nothing.}
\usage{cairoSurfaceFlush(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

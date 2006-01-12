\alias{cairoSurfaceMarkDirtyRectangle}
\name{cairoSurfaceMarkDirtyRectangle}
\title{cairoSurfaceMarkDirtyRectangle}
\description{Like \code{\link{cairoSurfaceMarkDirty}}, but drawing has been done only to
the specified rectangle, so that cairo can retain cached contents
for other parts of the surface.}
\usage{cairoSurfaceMarkDirtyRectangle(surface, x, y, width, height)}
\arguments{
\item{\code{surface}}{[\code{\link{cairo_surface_t}}]  a \code{\link{cairo_surface_t}}}
\item{\code{x}}{[integer]  X coordinate of dirty rectangle}
\item{\code{y}}{[integer]  Y coordinate of dirty rectangle}
\item{\code{width}}{[integer]  width of dirty rectangle}
\item{\code{height}}{[integer]  height of dirty rectangle}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

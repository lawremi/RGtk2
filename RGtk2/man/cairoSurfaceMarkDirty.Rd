\alias{cairoSurfaceMarkDirty}
\name{cairoSurfaceMarkDirty}
\title{cairoSurfaceMarkDirty}
\description{Tells cairo that drawing has been done to surface using means other
than cairo, and that cairo should reread any cached areas. Note
that you must call \code{\link{cairoSurfaceFlush}} before doing such drawing.}
\usage{cairoSurfaceMarkDirty(surface)}
\arguments{\item{\code{surface}}{[\code{\link{cairo_surface_t}}]  a \code{\link{cairo_surface_t}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

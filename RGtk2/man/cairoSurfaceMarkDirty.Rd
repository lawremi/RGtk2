\alias{cairoSurfaceMarkDirty}
\name{cairoSurfaceMarkDirty}
\title{cairoSurfaceMarkDirty}
\description{Tells cairo that drawing has been done to surface using means other
than cairo, and that cairo should reread any cached areas. Note
that you must call \code{\link{cairoSurfaceFlush}} before doing such drawing.}
\usage{cairoSurfaceMarkDirty(surface)}
\arguments{\item{\verb{surface}}{[\verb{\link{CairoSurface}}]  a \verb{\link{CairoSurface}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

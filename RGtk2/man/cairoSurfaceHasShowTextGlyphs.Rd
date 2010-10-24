\alias{cairoSurfaceHasShowTextGlyphs}
\name{cairoSurfaceHasShowTextGlyphs}
\title{cairoSurfaceHasShowTextGlyphs}
\description{Returns whether the surface supports
sophisticated \code{\link{cairoShowTextGlyphs}} operations.  That is,
whether it actually uses the provided text and cluster data
to a \code{\link{cairoShowTextGlyphs}} call.}
\usage{cairoSurfaceHasShowTextGlyphs(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}}
\details{Note: Even if this function returns \code{FALSE}, a
\code{\link{cairoShowTextGlyphs}} operation targeted at \code{surface} will
still succeed.  It just will
act like a \code{\link{cairoShowGlyphs}} operation.  Users can use this
function to avoid computing UTF-8 text and cluster mapping if the
target surface does not use it.  
  Since 1.8}
\value{[logical] \code{TRUE} if \code{surface} supports
              \code{\link{cairoShowTextGlyphs}}, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{cairoSurfaceShowPage}
\name{cairoSurfaceShowPage}
\title{cairoSurfaceShowPage}
\description{Emits and clears the current page for backends that support multiple
pages.  Use \code{\link{cairoSurfaceCopyPage}} if you don't want to clear the page.}
\usage{cairoSurfaceShowPage(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \verb{cairo_Surface_t}}}
\details{There is a convenience function for this that takes a \code{\link{Cairo}},
namely \code{\link{cairoShowPage}}.  
  Since 1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

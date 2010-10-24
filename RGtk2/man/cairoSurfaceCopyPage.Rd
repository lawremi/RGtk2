\alias{cairoSurfaceCopyPage}
\name{cairoSurfaceCopyPage}
\title{cairoSurfaceCopyPage}
\description{Emits the current page for backends that support multiple pages,
but doesn't clear it, so that the contents of the current page will
be retained for the next page.  Use \code{\link{cairoSurfaceShowPage}} if you
want to get an empty page after the emission.}
\usage{cairoSurfaceCopyPage(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}}
\details{There is a convenience function for this that takes a \code{\link{Cairo}},
namely \code{\link{cairoCopyPage}}.  
  Since 1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

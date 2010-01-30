\alias{cairoSurfaceCopyPage}
\name{cairoSurfaceCopyPage}
\title{cairoSurfaceCopyPage}
\description{Emits the current page for backends that support multiple pages,
but doesn't clear it, so that the contents of the current page will
be retained for the next page.  Use \code{\link{cairoSurfaceShowPage}} if you
want to get an empty page after the emission.}
\usage{cairoSurfaceCopyPage(surface)}
\arguments{\item{\verb{surface}}{[\verb{\link{CairoSurface}}]  a \verb{\link{CairoSurface}}}}
\details{  Since  1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

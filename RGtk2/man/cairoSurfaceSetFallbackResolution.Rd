\alias{cairoSurfaceSetFallbackResolution}
\name{cairoSurfaceSetFallbackResolution}
\title{cairoSurfaceSetFallbackResolution}
\description{Set the horizontal and vertical resolution for image fallbacks.}
\usage{cairoSurfaceSetFallbackResolution(surface, x.pixels.per.inch, 
    y.pixels.per.inch)}
\arguments{
\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}
\item{\verb{x.pixels.per.inch}}{[numeric]  horizontal setting for pixels per inch}
\item{\verb{y.pixels.per.inch}}{[numeric]  vertical setting for pixels per inch}
}
\details{When certain operations aren't supported natively by a backend,
cairo will fallback by rendering operations to an image and then
overlaying that image onto the output. For backends that are
natively vector-oriented, this function can be used to set the
resolution used for these image fallbacks, (larger values will
result in more detailed images, but also larger file sizes).
  
Some examples of natively vector-oriented backends are the ps, pdf,
and svg backends.
  
For backends that are natively raster-oriented, image fallbacks are
still possible, but they are always performed at the native
device resolution. So this function has no effect on those
backends.
  
Note: The fallback resolution only takes effect at the time of
completing a page (with \code{\link{cairoShowPage}} or \code{\link{cairoCopyPage}}) so
there is currently no way to have more than one fallback resolution
in effect on a single page.
  
The default fallback resoultion is 300 pixels per inch in both
dimensions.  
  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

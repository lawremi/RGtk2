\alias{cairoImageSurfaceGetData}
\name{cairoImageSurfaceGetData}
\title{cairoImageSurfaceGetData}
\description{Get a pointer to the data of the image surface, for direct
inspection or modification.}
\usage{cairoImageSurfaceGetData(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \verb{cairo_image_surface_t}}}
\details{  Since 1.2}
\value{[char]  a pointer to the image data of this surface or \code{NULL}
if \code{surface} is not an image surface, or if \code{\link{cairoSurfaceFinish}}
has been called.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

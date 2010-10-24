\alias{cairoImageSurfaceGetStride}
\name{cairoImageSurfaceGetStride}
\title{cairoImageSurfaceGetStride}
\description{Get the stride of the image surface in bytes}
\usage{cairoImageSurfaceGetStride(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \verb{cairo_image_surface_t}}}
\details{  Since 1.2}
\value{[integer]  the stride of the image surface in bytes (or 0 if
\code{surface} is not an image surface). The stride is the distance in
bytes from the beginning of one row of the image data to the
beginning of the next row.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

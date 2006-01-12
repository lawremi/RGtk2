\alias{cairoImageSurfaceCreateFromPngStream}
\name{cairoImageSurfaceCreateFromPngStream}
\title{cairoImageSurfaceCreateFromPngStream}
\description{Creates a new image surface from PNG data read incrementally
via the \code{read.func} function.}
\usage{cairoImageSurfaceCreateFromPngStream(con)}
\value{[\code{\link{cairo_surface_t}}]  a new \code{\link{cairo_surface_t}} initialized with the contents
of the PNG file or \code{NULL} if the data read is not a valid PNG image or
memory could not be allocated for the operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

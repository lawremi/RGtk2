\alias{cairoImageSurfaceCreateFromPngStream}
\name{cairoImageSurfaceCreateFromPngStream}
\title{cairoImageSurfaceCreateFromPngStream}
\description{Creates a new image surface from PNG data read incrementally
via the \code{read.func} function.}
\usage{cairoImageSurfaceCreateFromPngStream(con)}
\value{[\code{\link{CairoSurface}}]  a new \code{\link{CairoSurface}} initialized with the contents
of the PNG file or a "nil" surface if the data read is not a valid PNG image
or memory could not be allocated for the operation.  A nil
surface can be checked for with cairo_surface_status(surface) which
may return one of the following values:
\code{CAIRO_STATUS_NO_MEMORY}
\code{CAIRO_STATUS_READ_ERROR}
Alternatively, you can allow errors to propagate through the drawing
operations and check the status on the context upon completion
using \code{\link{cairoStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

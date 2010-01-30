\alias{cairoImageSurfaceCreateFromPng}
\name{cairoImageSurfaceCreateFromPng}
\title{cairoImageSurfaceCreateFromPng}
\description{Creates a new image surface and initializes the contents to the
given PNG file.}
\usage{cairoImageSurfaceCreateFromPng(filename)}
\arguments{\item{\verb{filename}}{[char]  name of PNG file to load}}
\value{[\verb{\link{CairoSurface}}]  a new \verb{\link{CairoSurface}} initialized with the contents
of the PNG file, or a "nil" surface if any error occurred. A nil
surface can be checked for with cairo_surface_status(surface) which
may return one of the following values:

CAIRO_STATUS_NO_MEMORY
CAIRO_STATUS_FILE_NOT_FOUND
CAIRO_STATUS_READ_ERROR}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

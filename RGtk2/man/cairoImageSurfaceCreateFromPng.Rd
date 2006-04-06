\alias{cairoImageSurfaceCreateFromPng}
\name{cairoImageSurfaceCreateFromPng}
\title{cairoImageSurfaceCreateFromPng}
\description{Creates a new image surface and initializes the contents to the
given PNG file.}
\usage{cairoImageSurfaceCreateFromPng(filename)}
\arguments{\item{\code{filename}}{[char]  name of PNG file to load }}
\value{[\code{\link{CairoSurface}}]  a new \code{\link{CairoSurface}} initialized with the contents
of the PNG file, or a "nil" surface if any error occurred. A nil
surface can be checked for with cairo\_surface\_status(surface) which
may return one of the following values: 

CAIRO\_STATUS\_NO\_MEMORY
CAIRO\_STATUS\_FILE\_NOT\_FOUND
CAIRO\_STATUS\_READ\_ERROR}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

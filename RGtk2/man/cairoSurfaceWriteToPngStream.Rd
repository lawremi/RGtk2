\alias{cairoSurfaceWriteToPngStream}
\name{cairoSurfaceWriteToPngStream}
\title{cairoSurfaceWriteToPngStream}
\description{Writes the image surface to the write function.}
\usage{cairoSurfaceWriteToPngStream(surface, con)}
\arguments{\item{\code{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}} with pixel contents}}
\value{[\code{\link{CairoStatus}}]  CAIRO\_STATUS\_SUCCESS if the PNG file was written
successfully.  Otherwise, CAIRO\_STATUS\_NO\_MEMORY is returned if
memory could not be allocated for the operation,
CAIRO\_STATUS\_SURFACE\_TYPE\_MISMATCH if the surface does not have
pixel contents.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

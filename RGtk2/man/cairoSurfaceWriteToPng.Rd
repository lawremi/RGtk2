\alias{cairoSurfaceWriteToPng}
\name{cairoSurfaceWriteToPng}
\title{cairoSurfaceWriteToPng}
\description{Writes the contents of \code{surface} to a new file \code{filename} as a PNG
image.}
\usage{cairoSurfaceWriteToPng(surface, filename)}
\arguments{
\item{\code{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}} with pixel contents}
\item{\code{filename}}{[char]  the name of a file to write to}
}
\value{[\code{\link{CairoStatus}}]  CAIRO_STATUS_SUCCESS if the PNG file was written
successfully. Otherwise, CAIRO_STATUS_NO_MEMORY if memory could not
be allocated for the operation or
CAIRO_STATUS_SURFACE_TYPE_MISMATCH if the surface does not have
pixel contents, or CAIRO_STATUS_WRITE_ERROR if an I/O error occurs
while attempting to write the file.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

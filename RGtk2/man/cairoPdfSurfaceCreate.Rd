\alias{cairoPdfSurfaceCreate}
\name{cairoPdfSurfaceCreate}
\title{cairoPdfSurfaceCreate}
\description{Creates a PDF surface of the specified size in points to be written
to \code{filename}.}
\usage{cairoPdfSurfaceCreate(filename, width.in.points, height.in.points)}
\arguments{
\item{\verb{filename}}{[char]  a filename for the PDF output (must be writable), \code{NULL} may be
           used to specify no output. This will generate a PDF surface that
           may be queried and used as a source, without generating a
           temporary file.}
\item{\verb{width.in.points}}{[numeric]  width of the surface, in points (1 point == 1/72.0 inch)}
\item{\verb{height.in.points}}{[numeric]  height of the surface, in points (1 point == 1/72.0 inch)}
}
\details{  Since 1.2}
\value{[\code{\link{CairoSurface}}]  a pointer to the newly created surface. The caller
owns the surface and should call \code{\link{cairoSurfaceDestroy}} when done
with it.
This function always returns a valid pointer, but it will return a
pointer to a "nil" surface if an error such as out of memory
occurs. You can use \code{\link{cairoSurfaceStatus}} to check for this.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

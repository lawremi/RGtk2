\alias{cairoPdfSurfaceCreateForStream}
\name{cairoPdfSurfaceCreateForStream}
\title{cairoPdfSurfaceCreateForStream}
\description{Creates a PDF surface of the specified size in points to be written
incrementally to the stream represented by \code{write.func} and \code{closure}.}
\usage{cairoPdfSurfaceCreateForStream(write.func, closure, width.in.points, 
    height.in.points)}
\arguments{
\item{\verb{write.func}}{[\code{\link{CairoWriteFunc}}]  a \code{\link{CairoWriteFunc}} to accept the output data, may be \code{NULL}
             to indicate a no-op \code{write.func}. With a no-op \code{write.func},
             the surface may be queried or used as a source without
             generating any temporary files.}
\item{\verb{closure}}{[R object]  the closure argument for \code{write.func}}
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

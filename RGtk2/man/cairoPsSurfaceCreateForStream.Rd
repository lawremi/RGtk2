\alias{cairoPsSurfaceCreateForStream}
\name{cairoPsSurfaceCreateForStream}
\title{cairoPsSurfaceCreateForStream}
\description{Creates a PostScript surface of the specified size in points to be
written incrementally to the stream represented by \code{write.func} and
\code{closure}. See \code{\link{cairoPsSurfaceCreate}} for a more convenient way
to simply direct the PostScript output to a named file.}
\usage{cairoPsSurfaceCreateForStream(write.func, closure, width.in.points, height.in.points)}
\arguments{
\item{\code{write.func}}{[\code{\link{CairoWriteFunc}}]  a \code{\link{CairoWriteFunc}} to accept the output data}
\item{\code{closure}}{[R object]  the closure argument for \code{write.func}}
\item{\code{width.in.points}}{[numeric]  width of the surface, in points (1 point == 1/72.0 inch)}
\item{\code{height.in.points}}{[numeric]  height of the surface, in points (1 point == 1/72.0 inch)}
}
\details{Note that the size of individual pages of the PostScript
output can vary. See \code{\link{cairoPsSurfaceSetSize}}.  

  Since  1.2}
\value{[\code{\link{CairoSurface}}]  a pointer to the newly created surface. The caller
owns the surface and should call \code{\link{cairoSurfaceDestroy}} when done
with it.

This function always returns a valid pointer, but it will return a
pointer to a "nil" surface if an error such as out of memory
occurs. You can use \code{\link{cairoSurfaceStatus}} to check for this.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

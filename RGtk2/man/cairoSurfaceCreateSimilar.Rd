\alias{cairoSurfaceCreateSimilar}
\name{cairoSurfaceCreateSimilar}
\title{cairoSurfaceCreateSimilar}
\description{Create a new surface that is as compatible as possible with an
existing surface. For example the new surface will have the same
fallback resolution and font options as \code{other}. Generally, the new
surface will also use the same backend as \code{other}, unless that is
not possible for some reason. The type of the returned surface may
be examined with \code{\link{cairoSurfaceGetType}}.}
\usage{cairoSurfaceCreateSimilar(other, content, width, height)}
\arguments{
\item{\verb{other}}{[\code{\link{CairoSurface}}]  an existing surface used to select the backend of the new surface}
\item{\verb{content}}{[\code{\link{CairoContent}}]  the content for the new surface}
\item{\verb{width}}{[integer]  width of the new surface, (in device-space units)}
\item{\verb{height}}{[integer]  height of the new surface (in device-space units)}
}
\details{Initially the surface contents are all 0 (transparent if contents
have transparency, black otherwise.)  }
\value{[\code{\link{CairoSurface}}]  a pointer to the newly allocated surface. The caller
owns the surface and should call \code{\link{cairoSurfaceDestroy}} when done
with it.
This function always returns a valid pointer, but it will return a
pointer to a "nil" surface if \code{other} is already in an error state
or any other error occurs.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

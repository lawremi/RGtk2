\alias{cairoSurfaceFinish}
\name{cairoSurfaceFinish}
\title{cairoSurfaceFinish}
\description{This function finishes the surface and drops all references to
external resources.
After calling \code{\link{cairoSurfaceFinish}} the only valid operations on a
surface are getting and setting user data and referencing and
destroying it.  Further drawing to the surface will not affect the
surface but will instead trigger a CAIRO\_STATUS\_SURFACE\_FINISHED
error.}
\usage{cairoSurfaceFinish(surface)}
\arguments{\item{\code{surface}}{[\code{\link{CairoSurface}}]  the \code{\link{CairoSurface}} to finish}}
\details{When the last call to \code{\link{cairoSurfaceDestroy}} decreases the
reference count to zero, cairo will call \code{\link{cairoSurfaceFinish}} if
it hasn't been called already, before freeing the resources
associated with the surface.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

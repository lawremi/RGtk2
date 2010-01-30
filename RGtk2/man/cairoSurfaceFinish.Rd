\alias{cairoSurfaceFinish}
\name{cairoSurfaceFinish}
\title{cairoSurfaceFinish}
\description{This function finishes the surface and drops all references to
external resources.  For example, for the Xlib backend it means
that cairo will no longer access the drawable.
After calling \code{\link{cairoSurfaceFinish}} the only valid operations on a
surface are getting and setting user data and referencing and
destroying it.  Further drawing to the surface will not affect the
surface but will instead trigger a CAIRO_STATUS_SURFACE_FINISHED
error.}
\usage{cairoSurfaceFinish(surface)}
\arguments{\item{\verb{surface}}{[\verb{\link{CairoSurface}}]  the \verb{\link{CairoSurface}} to finish}}
\details{When the last call to \code{\link{cairoSurfaceDestroy}} decreases the
reference count to zero, cairo will call \code{\link{cairoSurfaceFinish}} if
it hasn't been called already, before freeing the resources
associated with the surface.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

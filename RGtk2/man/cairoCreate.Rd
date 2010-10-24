\alias{cairoCreate}
\name{cairoCreate}
\title{cairoCreate}
\description{Creates a new \code{\link{Cairo}} with all graphics state parameters set to
default values and with \code{target} as a target surface. The target
surface should be constructed with a backend-specific function such
as \code{\link{cairoImageSurfaceCreate}} (or any other
cairo_\emph{backend}\code{surfaceCreate()} variant).}
\usage{cairoCreate(target)}
\arguments{\item{\verb{target}}{[\code{\link{CairoSurface}}]  target surface for the context}}
\details{This function references \code{target}, so you can immediately
call \code{\link{cairoSurfaceDestroy}} on it if you don't need to
maintain a separate reference to it.  }
\value{[\code{\link{Cairo}}]  a newly allocated \code{\link{Cairo}} with a reference
 count of 1.
 This function never returns \code{NULL}. If memory cannot be
 allocated, a special \code{\link{Cairo}} object will be returned on
 which \code{\link{cairoStatus}} returns \code{CAIRO_STATUS_NO_MEMORY}.
 You can use this object normally, but no drawing will
 be done.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

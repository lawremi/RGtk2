\alias{cairoCreate}
\name{cairoCreate}
\title{cairoCreate}
\description{Creates a new \code{\link{cairo_t}} with all graphics state parameters set to
default values and with \code{target} as a target surface. The target
surface should be constructed with a backend-specific function such
as \code{\link{cairoImageSurfaceCreate}} (or any other
\code{cairo_<backend>_surface_create} variant).}
\usage{cairoCreate(target)}
\arguments{\item{\code{target}}{[\code{\link{cairo_surface_t}}]  target surface for the context}}
\details{This function references \code{target}, so you can immediately
call \code{\link{cairoSurfaceDestroy}} on it if you don't need to
maintain a separate reference to it.  }
\value{[\code{\link{cairo_t}}]  a newly allocated \code{\link{cairo_t}} with a reference
 count of 1.
 This function never returns \code{NULL}. If memory cannot be
 allocated, a special \code{\link{cairo_t}} object will be returned on
 which \code{\link{cairoStatus}} returns \code{CAIRO_STATUS_NO_MEMORY}.
 You can use this object normally, but no drawing will
 be done.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

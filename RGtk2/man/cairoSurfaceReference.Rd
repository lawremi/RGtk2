\alias{cairoSurfaceReference}
\name{cairoSurfaceReference}
\title{cairoSurfaceReference}
\description{Increases the reference count on \code{surface} by one. This prevents
\code{surface} from being destroyed until a matching call to
\code{\link{cairoSurfaceDestroy}} is made.}
\usage{cairoSurfaceReference(surface)}
\arguments{\item{\code{surface}}{[\code{\link{cairo_surface_t}}]  a \code{\link{cairo_surface_t}}}}
\value{[\code{\link{cairo_surface_t}}]  the referenced \code{\link{cairo_surface_t}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

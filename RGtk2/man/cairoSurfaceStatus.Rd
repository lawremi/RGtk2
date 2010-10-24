\alias{cairoSurfaceStatus}
\name{cairoSurfaceStatus}
\title{cairoSurfaceStatus}
\description{Checks whether an error has previously occurred for this
surface.}
\usage{cairoSurfaceStatus(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}}
\value{[\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS}, \code{CAIRO_STATUS_NULL_POINTER},
\code{CAIRO_STATUS_NO_MEMORY}, \code{CAIRO_STATUS_READ_ERROR},
\code{CAIRO_STATUS_INVALID_CONTENT}, \code{CAIRO_STATUS_INVALID_FORMAT}, or
\code{CAIRO_STATUS_INVALID_VISUAL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

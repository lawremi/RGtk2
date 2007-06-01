\alias{cairoSurfaceReference}
\name{cairoSurfaceReference}
\title{cairoSurfaceReference}
\description{Increases the reference count on \code{surface} by one. This prevents
\code{surface} from being destroyed until a matching call to
\code{\link{cairoSurfaceDestroy}} is made.}
\usage{cairoSurfaceReference(surface)}
\arguments{\item{\code{surface}}{[\code{\link{CairoSurface}}]  a \code{\link{CairoSurface}}}}
\details{.  }
\value{[\code{\link{CairoSurface}}]  the referenced \code{\link{CairoSurface}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

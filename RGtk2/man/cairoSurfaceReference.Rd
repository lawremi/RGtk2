\alias{cairoSurfaceReference}
\name{cairoSurfaceReference}
\title{cairoSurfaceReference}
\description{Increases the reference count on \code{surface} by one. This prevents
\code{surface} from being destroyed until a matching call to
\code{\link{cairoSurfaceDestroy}} is made.}
\usage{cairoSurfaceReference(surface)}
\arguments{\item{\verb{surface}}{[\verb{\link{CairoSurface}}]  a \verb{\link{CairoSurface}}}}
\details{.  }
\value{[\verb{\link{CairoSurface}}]  the referenced \verb{\link{CairoSurface}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

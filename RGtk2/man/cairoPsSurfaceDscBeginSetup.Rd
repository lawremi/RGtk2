\alias{cairoPsSurfaceDscBeginSetup}
\name{cairoPsSurfaceDscBeginSetup}
\title{cairoPsSurfaceDscBeginSetup}
\description{This function indicates that subsequent calls to
\code{\link{cairoPsSurfaceDscComment}} should direct comments to the Setup
section of the PostScript output.}
\usage{cairoPsSurfaceDscBeginSetup(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a PostScript \code{\link{CairoSurface}}}}
\details{This function should be called at most once per surface, and must
be called before any call to \code{\link{cairoPsSurfaceDscBeginPageSetup}}
and before any drawing is performed to the surface.
  
See \code{\link{cairoPsSurfaceDscComment}} for more details.  
  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

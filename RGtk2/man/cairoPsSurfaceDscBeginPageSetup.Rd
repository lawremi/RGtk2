\alias{cairoPsSurfaceDscBeginPageSetup}
\name{cairoPsSurfaceDscBeginPageSetup}
\title{cairoPsSurfaceDscBeginPageSetup}
\description{This function indicates that subsequent calls to
\code{\link{cairoPsSurfaceDscComment}} should direct comments to the
PageSetup section of the PostScript output.}
\usage{cairoPsSurfaceDscBeginPageSetup(surface)}
\arguments{\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a PostScript \code{\link{CairoSurface}}}}
\details{This function call is only needed for the first page of a
surface. It should be called after any call to
\code{\link{cairoPsSurfaceDscBeginSetup}} and before any drawing is
performed to the surface.
  
See \code{\link{cairoPsSurfaceDscComment}} for more details.  
  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

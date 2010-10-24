\alias{cairoSvgSurfaceRestrictToVersion}
\name{cairoSvgSurfaceRestrictToVersion}
\title{cairoSvgSurfaceRestrictToVersion}
\description{Restricts the generated SVG file to \code{version}. See \code{\link{cairoSvgGetVersions}}
for a list of available version values that can be used here.}
\usage{cairoSvgSurfaceRestrictToVersion(surface, version)}
\arguments{
\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a SVG \code{\link{CairoSurface}}}
\item{\verb{version}}{[\code{\link{CairoSvgVersion}}]  SVG version}
}
\details{This function should only be called before any drawing operations
have been performed on the given surface. The simplest way to do
this is to call this function immediately after creating the
surface.  
  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

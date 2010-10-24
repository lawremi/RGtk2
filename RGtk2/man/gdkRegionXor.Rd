\alias{gdkRegionXor}
\name{gdkRegionXor}
\title{gdkRegionXor}
\description{Sets the area of \code{source1} to the exclusive-OR of the areas of \code{source1}
and \code{source2}. The resulting area is the set of pixels contained in one
or the other of the two sources but not in both.}
\usage{gdkRegionXor(object, source2)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkRegion}}}
\item{\verb{source2}}{another \code{\link{GdkRegion}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

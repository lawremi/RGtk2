\alias{gdkGCSetExposures}
\name{gdkGCSetExposures}
\title{gdkGCSetExposures}
\description{Sets whether copying non-visible portions of a drawable
using this graphics context generate exposure events
for the corresponding regions of the destination
drawable. (See \code{\link{gdkDrawDrawable}}).}
\usage{gdkGCSetExposures(object, exposures)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkGC}}.}
\item{\verb{exposures}}{if \code{TRUE}, exposure events will be generated.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

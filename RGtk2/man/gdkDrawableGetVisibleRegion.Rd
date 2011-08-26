\alias{gdkDrawableGetVisibleRegion}
\name{gdkDrawableGetVisibleRegion}
\title{gdkDrawableGetVisibleRegion}
\description{Computes the region of a drawable that is potentially visible.
This does not necessarily take into account if the window is
obscured by other windows, but no area outside of this region
is visible.}
\usage{gdkDrawableGetVisibleRegion(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDrawable}}}}
\value{[\code{\link{GdkRegion}}] a \code{\link{GdkRegion}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

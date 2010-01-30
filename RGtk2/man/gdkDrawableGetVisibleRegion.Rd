\alias{gdkDrawableGetVisibleRegion}
\name{gdkDrawableGetVisibleRegion}
\title{gdkDrawableGetVisibleRegion}
\description{Computes the region of a drawable that is potentially visible.
This does not necessarily take into account if the window is
obscured by other windows, but no area outside of this region
is visible.}
\usage{gdkDrawableGetVisibleRegion(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}}}}
\value{[\verb{\link{GdkRegion}}]  a \verb{\link{GdkRegion}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

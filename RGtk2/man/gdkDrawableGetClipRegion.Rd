\alias{gdkDrawableGetClipRegion}
\name{gdkDrawableGetClipRegion}
\title{gdkDrawableGetClipRegion}
\description{Computes the region of a drawable that potentially can be written
to by drawing primitives. This region will not take into account
the clip region for the GC, and may also not take into account
other factors such as if the window is obscured by other windows,
but no area outside of this region will be affected by drawing
primitives.}
\usage{gdkDrawableGetClipRegion(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDrawable}}}}
\value{[\code{\link{GdkRegion}}] a \code{\link{GdkRegion}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

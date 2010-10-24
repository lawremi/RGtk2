\alias{gdkDrawableSetColormap}
\name{gdkDrawableSetColormap}
\title{gdkDrawableSetColormap}
\description{Sets the colormap associated with \code{drawable}. Normally this will
happen automatically when the drawable is created; you only need to
use this function if the drawable-creating function did not have a
way to determine the colormap, and you then use drawable operations
that require a colormap. The colormap for all drawables and
graphics contexts you intend to use together should match. i.e.
when using a \code{\link{GdkGC}} to draw to a drawable, or copying one drawable
to another, the colormaps should match.}
\usage{gdkDrawableSetColormap(object, colormap)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}}}
\item{\verb{colormap}}{a \code{\link{GdkColormap}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

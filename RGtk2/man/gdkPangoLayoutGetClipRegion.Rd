\alias{gdkPangoLayoutGetClipRegion}
\name{gdkPangoLayoutGetClipRegion}
\title{gdkPangoLayoutGetClipRegion}
\description{Obtains a clip region which contains the areas where the given ranges
of text would be drawn. \code{x.origin} and \code{y.origin} are the same position
you would pass to \code{\link{gdkDrawLayoutLine}}. \code{index.ranges} should contain
ranges of bytes in the layout's text.}
\usage{gdkPangoLayoutGetClipRegion(layout, x.origin, index.ranges)}
\arguments{
\item{\code{layout}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}} }
\item{\code{x.origin}}{[integer]  X pixel where you intend to draw the layout with this clip}
\item{\code{index.ranges}}{[integer]  list of byte indexes into the layout, where even members of list are start indexes and odd elements are end indexes}
}
\value{[\code{\link{GdkRegion}}]  a clip region containing the given ranges}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gdkPangoLayoutLineGetClipRegion}
\name{gdkPangoLayoutLineGetClipRegion}
\title{gdkPangoLayoutLineGetClipRegion}
\description{Obtains a clip region which contains the areas where the given
ranges of text would be drawn. \code{x.origin} and \code{y.origin} are the same
position you would pass to \code{\link{gdkDrawLayoutLine}}. \code{index.ranges}
should contain ranges of bytes in the layout's text. The clip
region will include space to the left or right of the line (to the
layout bounding box) if you have indexes above or below the indexes
contained inside the line. This is to draw the selection all the way
to the side of the layout. However, the clip region is in line coordinates,
not layout coordinates.}
\usage{gdkPangoLayoutLineGetClipRegion(line, x.origin, index.ranges)}
\arguments{
\item{\verb{line}}{a \code{\link{PangoLayoutLine}}}
\item{\verb{x.origin}}{X pixel where you intend to draw the layout line with this clip}
\item{\verb{index.ranges}}{array of byte indexes into the layout, where even members of list are start indexes and odd elements are end indexes}
}
\details{Note that the regions returned correspond to logical extents of the text
ranges, not ink extents. So the drawn line may in fact touch areas out of
the clip region.  The clip region is mainly useful for highlightling parts
of text, such as when text is selected.}
\value{[\code{\link{GdkRegion}}] a clip region containing the given ranges}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

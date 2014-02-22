\alias{pangoGlyphItemIterNextCluster}
\name{pangoGlyphItemIterNextCluster}
\title{pangoGlyphItemIterNextCluster}
\description{Advances the iterator to the next cluster in the glyph item.
See \code{\link{PangoGlyphItemIter}} for details of cluster orders.}
\usage{pangoGlyphItemIterNextCluster(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoGlyphItemIter}}]  a \code{\link{PangoGlyphItemIter}}}}
\details{  Since 1.22}
\value{[logical] \code{TRUE} if the iterator was advanced, \code{FALSE} if we were already on the
 last cluster.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{pangoGlyphItemIterPrevCluster}
\name{pangoGlyphItemIterPrevCluster}
\title{pangoGlyphItemIterPrevCluster}
\description{Moves the iterator to the preceding cluster in the glyph item.
See \code{\link{PangoGlyphItemIter}} for details of cluster orders.}
\usage{pangoGlyphItemIterPrevCluster(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoGlyphItemIter}}]  a \code{\link{PangoGlyphItemIter}}}}
\details{  Since 1.22}
\value{[logical] \code{TRUE} if the iterator was moved, \code{FALSE} if we were already on the
 first cluster.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{pangoGlyphItemIterInitEnd}
\name{pangoGlyphItemIterInitEnd}
\title{pangoGlyphItemIterInitEnd}
\description{Initializes a \code{\link{PangoGlyphItemIter}} structure to point to the
last cluster in a glyph item.
See \code{\link{PangoGlyphItemIter}} for details of cluster orders.}
\usage{pangoGlyphItemIterInitEnd(object, glyph.item, text)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoGlyphItemIter}}]  a \code{\link{PangoGlyphItemIter}}}
\item{\verb{glyph.item}}{[\code{\link{PangoGlyphItem}}]  the glyph item to iterate over}
\item{\verb{text}}{[char]  text corresponding to the glyph item}
}
\details{  Since 1.22}
\value{[logical] \code{FALSE} if there are no clusters in the glyph item}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

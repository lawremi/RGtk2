\alias{pangoGlyphStringGetWidth}
\name{pangoGlyphStringGetWidth}
\title{pangoGlyphStringGetWidth}
\description{Computes the logical width of the glyph string as can also be computed
using \code{\link{pangoGlyphStringExtents}}.  However, since this only computes the
width, it's much faster.  This is in fact only a convenience function that
computes the sum of geometry.width for each glyph in the \code{glyphs}.}
\usage{pangoGlyphStringGetWidth(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoGlyphString}}]    a \code{\link{PangoGlyphString}}}}
\details{  Since 1.14}
\value{[integer]  the logical width of the glyph string.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{cairoGlyphExtents}
\name{cairoGlyphExtents}
\title{cairoGlyphExtents}
\description{Gets the extents for a list of glyphs. The extents describe a
user-space rectangle that encloses the "inked" portion of the
glyphs, (as they would be drawn by \code{\link{cairoShowGlyphs}}).
Additionally, the x_advance and y_advance values indicate the
amount by which the current point would be advanced by
\code{\link{cairoShowGlyphs}}.}
\usage{cairoGlyphExtents(cr, glyphs)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{glyphs}}{[\code{\link{CairoGlyph}}]  a list of \code{\link{CairoGlyph}} objects}
}
\details{Note that whitespace glyphs do not contribute to the size of the
rectangle (extents.width and extents.height).  }
\value{
A list containing the following elements:
\item{\verb{extents}}{[\code{\link{CairoTextExtents}}]  a \code{\link{CairoTextExtents}} object into which the results
will be stored}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

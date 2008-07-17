\alias{cairoScaledFontGlyphExtents}
\name{cairoScaledFontGlyphExtents}
\title{cairoScaledFontGlyphExtents}
\description{Gets the extents for a list of glyphs. The extents describe a
user-space rectangle that encloses the "inked" portion of the
glyphs, (as they would be drawn by \code{\link{cairoShowGlyphs}} if the cairo
graphics state were set to the same font\_face, font\_matrix, ctm,
and font\_options as \code{scaled.font}).  Additionally, the x\_advance and
y\_advance values indicate the amount by which the current point
would be advanced by \code{\link{cairoShowGlyphs}}.}
\usage{cairoScaledFontGlyphExtents(scaled.font, glyphs, num.glyphs)}
\arguments{
\item{\code{scaled.font}}{[\code{\link{CairoScaledFont}}]  a \code{\link{CairoScaledFont}}}
\item{\code{glyphs}}{[\code{\link{CairoGlyph}}]  a list of glyph IDs with X and Y offsets.}
\item{\code{num.glyphs}}{[integer]  the number of glyphs in the \code{glyphs} list}
}
\details{Note that whitespace glyphs do not contribute to the size of the
rectangle (extents.width and extents.height).  }
\value{
A list containing the following elements:
\item{\code{extents}}{[\code{\link{CairoTextExtents}}]  a \code{\link{CairoTextExtents}} which to store the retrieved extents.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

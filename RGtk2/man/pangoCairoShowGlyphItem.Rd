\alias{pangoCairoShowGlyphItem}
\name{pangoCairoShowGlyphItem}
\title{pangoCairoShowGlyphItem}
\description{Draws the glyphs in \code{glyph.item} in the specified cairo context,
embedding the text associated with the glyphs in the output if the
output format supports it (PDF for example), otherwise it acts
similar to \code{\link{pangoCairoShowGlyphString}}.}
\usage{pangoCairoShowGlyphItem(cr, text, glyph.item)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a Cairo context}
\item{\verb{text}}{[char]  the UTF-8 text that \code{glyph.item} refers to}
\item{\verb{glyph.item}}{[\code{\link{PangoGlyphItem}}]  a \code{\link{PangoGlyphItem}}}
}
\details{The origin of the glyphs (the left edge of the baseline) will
be drawn at the current point of the cairo context.
  
Note that \code{text} is the start of the text for layout, which is then
indexed by \code{glyph_item->item->offset}.  
  Since 1.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

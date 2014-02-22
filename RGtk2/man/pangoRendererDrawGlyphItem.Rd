\alias{pangoRendererDrawGlyphItem}
\name{pangoRendererDrawGlyphItem}
\title{pangoRendererDrawGlyphItem}
\description{Draws the glyphs in \code{glyph.item} with the specified \code{\link{PangoRenderer}},
embedding the text associated with the glyphs in the output if the
output format supports it (PDF for example).}
\usage{pangoRendererDrawGlyphItem(object, text, glyph.item, x, y)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}
\item{\verb{text}}{[char]  the UTF-8 text that \code{glyph.item} refers to, or \code{NULL}}
\item{\verb{glyph.item}}{[\code{\link{PangoGlyphItem}}]  a \code{\link{PangoGlyphItem}}}
\item{\verb{x}}{[integer]  X position of left edge of baseline, in user space coordinates
  in Pango units.}
\item{\verb{y}}{[integer]  Y position of left edge of baseline, in user space coordinates
   in Pango units.}
}
\details{Note that \code{text} is the start of the text for layout, which is then
indexed by \code{glyph_item->item->offset}.
  
If \code{text} is \code{NULL}, this simply calls \code{\link{pangoRendererDrawGlyphs}}.
  
The default implementation of this method simply falls back to
\code{\link{pangoRendererDrawGlyphs}}.  
  Since 1.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

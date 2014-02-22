\alias{pangoGlyphItemLetterSpace}
\name{pangoGlyphItemLetterSpace}
\title{pangoGlyphItemLetterSpace}
\description{Adds spacing between the graphemes of \code{glyph.item} to
give the effect of typographic letter spacing.}
\usage{pangoGlyphItemLetterSpace(glyph.item, text, log.attrs)}
\arguments{
\item{\verb{glyph.item}}{[\code{\link{PangoGlyphItem}}]  a \code{\link{PangoGlyphItem}}}
\item{\verb{text}}{[char]  text that \code{glyph.item} corresponds to
  (glyph_item->item->offset is an offset from the
   start of \code{text})}
\item{\verb{log.attrs}}{[\code{\link{PangoLogAttr}}]  logical attributes for the item (the
  first logical attribute refers to the position
  before the first character in the item)}
}
\details{  Since 1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

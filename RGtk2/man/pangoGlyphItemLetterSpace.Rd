\alias{pangoGlyphItemLetterSpace}
\name{pangoGlyphItemLetterSpace}
\title{pangoGlyphItemLetterSpace}
\description{Adds spacing between the graphemes of \code{glyph.item} to
give the effect of typographic letter spacing.b}
\usage{pangoGlyphItemLetterSpace(glyph.item, text, log.attrs, letter.spacing)}
\arguments{
\item{\code{glyph.item}}{[\code{\link{PangoGlyphItem}}]  a \code{\link{PangoGlyphItem}}}
\item{\code{text}}{[char]  text that \code{glyph.item} corresponds to
  (glyph\_item->item->offset is an offset from the
   start of \code{text})}
\item{\code{log.attrs}}{[\code{\link{PangoLogAttr}}]  logical attributes for the item (the
  first logical attribute refers to the position
  before the first character in the item)}
\item{\code{letter.spacing}}{[integer]  amount of letter spacing to add
  in Pango units. May be negative, though too large
  negative values will give ugly results.}
}
\details{  Since  1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

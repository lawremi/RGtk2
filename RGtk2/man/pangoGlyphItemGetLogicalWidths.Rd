\alias{pangoGlyphItemGetLogicalWidths}
\name{pangoGlyphItemGetLogicalWidths}
\title{pangoGlyphItemGetLogicalWidths}
\description{Given a \code{\link{PangoGlyphItem}} and the corresponding
text, determine the screen width corresponding to each character. When
multiple characters compose a single cluster, the width of the entire
cluster is divided equally among the characters.}
\usage{pangoGlyphItemGetLogicalWidths(glyph.item, text)}
\arguments{
\item{\verb{glyph.item}}{[\code{\link{PangoGlyphItem}}]  a \code{\link{PangoGlyphItem}}}
\item{\verb{text}}{[char]  text that \code{glyph.item} corresponds to
  (glyph_item->item->offset is an offset from the
   start of \code{text})}
}
\details{See also \code{\link{pangoGlyphStringGetLogicalWidths}}.  
  Since 1.26}
\value{
A list containing the following elements:
\item{\verb{logical.widths}}{[integer]  a list whose length is the number of characters in
                 glyph_item (equal to glyph_item->item->num_chars)
                 to be filled in with the resulting character widths.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

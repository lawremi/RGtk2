\alias{pangoGlyphStringXToIndex}
\name{pangoGlyphStringXToIndex}
\title{pangoGlyphStringXToIndex}
\description{Convert from x offset to character position. Character positions
are computed by dividing up each cluster into equal portions.
In scripts where positioning within a cluster is not allowed
(such as Thai), the returned value may not be a valid cursor
position; the caller must combine the result with the logical
attributes for the text to compute the valid cursor position.}
\usage{pangoGlyphStringXToIndex(object, text, analysis, x.pos)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoGlyphString}}]     the glyphs returned from \code{\link{pangoShape}}}
\item{\verb{text}}{[char]       the text for the run}
\item{\verb{analysis}}{[\code{\link{PangoAnalysis}}]   the analysis information return from \code{\link{pangoItemize}}}
\item{\verb{x.pos}}{[integer]      the x offset (in Pango units)}
}
\value{
A list containing the following elements:
\item{\verb{index}}{[integer]     location to store calculated byte index within \code{text}}
\item{\verb{trailing}}{[integer]   location to store a boolean indicating
            whether the user clicked on the leading or trailing
            edge of the character.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

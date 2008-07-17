\alias{pangoGlyphStringIndexToX}
\name{pangoGlyphStringIndexToX}
\title{pangoGlyphStringIndexToX}
\description{Converts from character position to x position. (X position
is measured from the left edge of the run). Character positions
are computed by dividing up each cluster into equal portions.}
\usage{pangoGlyphStringIndexToX(object, text, analysis, index, trailing)}
\arguments{
\item{\code{object}}{[\code{\link{PangoGlyphString}}]     the glyphs return from \code{\link{pangoShape}}}
\item{\code{text}}{[char]       the text for the run}
\item{\code{analysis}}{[\code{\link{PangoAnalysis}}]   the analysis information return from \code{\link{pangoItemize}}}
\item{\code{index}}{[integer]     the byte index within \code{text}}
\item{\code{trailing}}{[logical]   whether we should compute the result for the beginning (\code{FALSE})
            or end (\code{TRUE}) of the character.}
}
\value{
A list containing the following elements:
\item{\code{x.pos}}{[integer]      location to store result}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

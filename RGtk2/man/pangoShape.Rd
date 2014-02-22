\alias{pangoShape}
\name{pangoShape}
\title{pangoShape}
\description{Given a segment of text and the corresponding
\code{\link{PangoAnalysis}} structure returned from \code{\link{pangoItemize}},
convert the characters into glyphs. You may also pass
in only a substring of the item from \code{\link{pangoItemize}}.}
\usage{pangoShape(text, analysis, glyphs)}
\arguments{
\item{\verb{text}}{[character]       the text to process}
\item{\verb{analysis}}{[\code{\link{PangoAnalysis}}] \code{\link{PangoAnalysis}} structure from \code{\link{pangoItemize}}}
\item{\verb{glyphs}}{[\code{\link{PangoGlyphString}}]     glyph string in which to store results}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

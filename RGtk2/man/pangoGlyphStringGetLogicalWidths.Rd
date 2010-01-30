\alias{pangoGlyphStringGetLogicalWidths}
\name{pangoGlyphStringGetLogicalWidths}
\title{pangoGlyphStringGetLogicalWidths}
\description{Given a \verb{\link{PangoGlyphString}} resulting from \code{\link{pangoShape}} and the corresponding
text, determine the screen width corresponding to each character. When
multiple characters compose a single cluster, the width of the entire
cluster is divided equally among the characters.}
\usage{pangoGlyphStringGetLogicalWidths(object, text, embedding.level)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoGlyphString}}]  a \verb{\link{PangoGlyphString}}}
\item{\verb{text}}{[char]  the text corresponding to the glyphs}
\item{\verb{embedding.level}}{[integer]  the embedding level of the string}
}
\value{
A list containing the following elements:
\item{\verb{logical.widths}}{[integer]  a list whose length is g_utf8_strlen (text, length)
                 to be filled in with the resulting character widths.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{pangoGlyphStringGetLogicalWidths}
\name{pangoGlyphStringGetLogicalWidths}
\title{pangoGlyphStringGetLogicalWidths}
\description{Given a \code{\link{PangoGlyphString}} resulting from \code{\link{pangoShape}} and the corresponding
text, determine the screen width corresponding to each character. When
multiple characters compose a single cluster, the width of the entire
cluster is divided equally among the characters.}
\usage{pangoGlyphStringGetLogicalWidths(object, text, embedding.level)}
\arguments{
\item{\code{object}}{[\code{\link{PangoGlyphString}}]  a \code{\link{PangoGlyphString}}}
\item{\code{text}}{[char]  the text corresponding to the glyphs}
\item{\code{embedding.level}}{[integer]  the embedding level of the string}
}
\value{
A list containing the following elements:
\item{\code{logical.widths}}{[integer]  a list whose length is g\_utf8\_strlen (text, length)
                 to be filled in with the resulting character widths.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

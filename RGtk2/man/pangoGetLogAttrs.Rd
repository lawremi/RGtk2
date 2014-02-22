\alias{pangoGetLogAttrs}
\name{pangoGetLogAttrs}
\title{pangoGetLogAttrs}
\description{Computes a \code{\link{PangoLogAttr}} for each character in \code{text}. The \code{log.attrs}
array must have one \code{\link{PangoLogAttr}} for each position in \code{text}; if
\code{text} contains N characters, it has N+1 positions, including the
last position at the end of the text. \code{text} should be an entire
paragraph; logical attributes can't be computed without context
(for example you need to see spaces on either side of a word to know
the word is a word).}
\usage{pangoGetLogAttrs(text, level, language)}
\arguments{
\item{\verb{text}}{[char]  text to process}
\item{\verb{level}}{[integer]  embedding level, or -1 if unknown}
\item{\verb{language}}{[\code{\link{PangoLanguage}}]  language tag}
}
\value{
A list containing the following elements:
\item{\verb{log.attrs}}{[\code{\link{PangoLogAttr}}]  list with one \code{\link{PangoLogAttr}} per character in \code{text}, plus one extra, to be filled in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

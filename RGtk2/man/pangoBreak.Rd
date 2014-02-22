\alias{pangoBreak}
\name{pangoBreak}
\title{pangoBreak}
\description{Determines possible line, word, and character breaks
for a string of Unicode text with a single analysis.  For most
purposes you may want to use \code{\link{pangoGetLogAttrs}}.}
\usage{pangoBreak(text, analysis)}
\arguments{
\item{\verb{text}}{[character]       the text to process}
\item{\verb{analysis}}{[\code{\link{PangoAnalysis}}] \code{\link{PangoAnalysis}} structure from \code{\link{pangoItemize}}}
}
\value{
A list containing the following elements:
\item{\verb{attrs}}{[\code{\link{PangoLogAttr}}]      a list to store character information in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

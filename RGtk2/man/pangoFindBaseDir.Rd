\alias{pangoFindBaseDir}
\name{pangoFindBaseDir}
\title{pangoFindBaseDir}
\description{Searches a string the first character that has a strong 
direction, according to the Unicode bidirectional algorithm.}
\usage{pangoFindBaseDir(text, length = -1)}
\arguments{
\item{\code{text}}{[character]    the text to process}
\item{\code{length}}{[integer]  length of \code{text} in bytes (may be -1 if \code{text} is nul-terminated)}
}
\value{[\code{\link{PangoDirection}}]  The direction corresponding to the first strong character.
If no such character is found, then \code{PANGO_DIRECTION_NEUTRAL} is returned.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{pango-Coverage-Maps}
\alias{PangoCoverage}
\alias{PangoCoverageLevel}
\name{pango-Coverage-Maps}
\title{Coverage Maps}
\description{Unicode character range coverage storage}
\section{Methods and Functions}{
\code{\link{pangoCoverageNew}()}\cr
\code{\link{pangoCoverageCopy}(object)}\cr
\code{\link{pangoCoverageGet}(object, index)}\cr
\code{\link{pangoCoverageMax}(object, other)}\cr
\code{\link{pangoCoverageSet}(object, index, level)}\cr
\code{\link{pangoCoverageToBytes}(object)}\cr
\code{\link{pangoCoverageFromBytes}(bytes)}\cr
}
\section{Detailed Description}{It is often necessary in Pango to determine if a particular font can
represent a particular character, and also how well it can represent
that character. The \code{\link{PangoCoverage}} is a data structure that is used
to represent that information.}
\section{Structures}{\describe{\item{\verb{PangoCoverage}}{
The \code{\link{PangoCoverage}} structure represents a map from Unicode characters
to \code{\link{PangoCoverageLevel}}. It is an opaque structure with no public fields.

}}}
\section{Enums and Flags}{\describe{\item{\verb{PangoCoverageLevel}}{
Used to indicate how well a font can represent a particular Unicode
character point for a particular script.

\describe{
\item{\verb{none}}{The character is not representable with the font.}
\item{\verb{fallback}}{The character is represented in a way that may be
                          comprehensible but is not the correct graphical form.
                          For instance, a Hangul character represented as a
                          a sequence of Jamos, or a Latin transliteration of
                          a Cyrillic word.}
\item{\verb{approximate}}{The character is represented as basically the correct
                             graphical form, but with a stylistic variant inappropriate for
                             the current script.}
\item{\verb{exact}}{The character is represented as the correct graphical form.}
}

}}}
\references{\url{https://docs.gtk.org/Pango/}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

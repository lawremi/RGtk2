\alias{pango-Coverage-Maps}
\alias{PangoCoverage}
\alias{PangoCoverageLevel}
\name{pango-Coverage-Maps}
\title{Coverage Maps}
\description{Unicode character range coverage storage}
\usage{
\link{pangoCoverageNew}()
\link{pangoCoverageCopy}(object)
\link{pangoCoverageGet}(object, index)
\link{pangoCoverageMax}(object, other)
\link{pangoCoverageSet}(object, index, level)
\link{pangoCoverageToBytes}(object)
\link{pangoCoverageFromBytes}(bytes)
}
\details{It is often necessary in Pango to determine if a particular font can
represent a particular character, and also how well it can represent
that character. The \code{\link{PangoCoverage}} is a data structure that is used
to represent that information.}
\section{Structures}{\describe{\item{\code{PangoCoverage}}{
The \code{\link{PangoCoverage}} structure represents a map from ISO-10646 character
point to \code{\link{PangoCoverageLevel}}. It is an opaque structure with no public fields.

}}}
\section{Enums and Flags}{\describe{\item{\code{enum PangoCoverageLevel}}{
Used to indicate how well a font can represent a particular ISO 10646
character point for a particular script.

\describe{
\item{\code{PANGO_COVERAGE_NONE (none)}}{The character is not representable with the font.}
\item{\code{PANGO_COVERAGE_FALLBACK (fallback)}}{The character is represented in a way that may be
                          comprehensible but is not the correct graphical form.
                          For instance, a Hangul character represented as a
                          a sequence of Jamos, or a Latin transliteration of
                          a Cyrillic word.}
\item{\code{PANGO_COVERAGE_APPROXIMATE (approximate)}}{The character is represented as basically the correct
                             graphical form, but with a stylistic variant inappropriate for
                             the current script.}
\item{\code{PANGO_COVERAGE_EXACT (exact)}}{The character is represented as the correct graphical form.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Coverage-Maps.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

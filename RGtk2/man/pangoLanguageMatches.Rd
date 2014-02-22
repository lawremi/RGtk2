\alias{pangoLanguageMatches}
\name{pangoLanguageMatches}
\title{pangoLanguageMatches}
\description{Checks if a language tag matches one of the elements in a list of
language ranges. A language tag is considered to match a range
in the list if the range is '*', the range is exactly the tag,
or the range is a prefix of the tag, and the character after it
in the tag is '-'.}
\usage{pangoLanguageMatches(object, range.list)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLanguage}}]  a language tag (see \code{\link{pangoLanguageFromString}}),
           \code{NULL} is allowed and matches nothing but '*'}
\item{\verb{range.list}}{[char]  a list of language ranges, separated by ';', ':',
  ',', or space characters.
  Each element must either be '*', or a RFC 3066 language range
  canonicalized as by \code{\link{pangoLanguageFromString}}}
}
\value{[logical] \code{TRUE} if a match was found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

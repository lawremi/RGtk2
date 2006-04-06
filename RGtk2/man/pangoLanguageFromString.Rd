\alias{pangoLanguageFromString}
\name{pangoLanguageFromString}
\title{pangoLanguageFromString}
\description{Take a RFC-3066 format language tag as a string and convert it to a
\code{\link{PangoLanguage}} pointer that can be efficiently copied (copy the
pointer) and compared with other language tags (compare the
pointer.)}
\usage{pangoLanguageFromString(language)}
\arguments{\item{\code{language}}{[char]  a string representing a language tag}}
\details{This function first canonicalizes the string by converting it to
lowercase, mapping '\_' to '-', and stripping all characters other
than letters and '-'.  }
\value{[\code{\link{PangoLanguage}}]  an opaque pointer to a \code{\link{PangoLanguage}} structure.
              this will be valid forever after.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

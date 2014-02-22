\alias{pangoLanguageFromString}
\name{pangoLanguageFromString}
\title{pangoLanguageFromString}
\description{Take a RFC-3066 format language tag as a string and convert it to a
\code{\link{PangoLanguage}} pointer that can be efficiently copied (copy the
pointer) and compared with other language tags (compare the
pointer.)}
\usage{pangoLanguageFromString(language)}
\arguments{\item{\verb{language}}{[char]  a string representing a language tag, or \code{NULL}}}
\details{This function first canonicalizes the string by converting it to
lowercase, mapping '_' to '-', and stripping all characters other
than letters and '-'.
  
Use \code{\link{pangoLanguageGetDefault}} if you want to get the \code{\link{PangoLanguage}} for
the current locale of the process.  }
\value{[\code{\link{PangoLanguage}}]  an opaque pointer to a \code{\link{PangoLanguage}} structure, or \code{NULL}
              if \code{language} was \code{NULL}.  The returned pointer will be valid
              forever after, and should not be freed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

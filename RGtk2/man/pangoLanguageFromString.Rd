\alias{pangoLanguageFromString}
\name{pangoLanguageFromString}
\title{pangoLanguageFromString}
\description{Take a RFC-3066 format language tag as a string and convert it to a
\verb{\link{PangoLanguage}} pointer that can be efficiently copied (copy the
pointer) and compared with other language tags (compare the
pointer.)}
\usage{pangoLanguageFromString(language)}
\arguments{\item{\verb{language}}{[char]  a string representing a language tag}}
\details{This function first canonicalizes the string by converting it to
lowercase, mapping '_' to '-', and stripping all characters other
than letters and '-'.
  
Use \code{pangoLanguageGetDefault()} if you want to get the \verb{\link{PangoLanguage}} for
the current locale of the process.  }
\value{[\verb{\link{PangoLanguage}}]  an opaque pointer to a \verb{\link{PangoLanguage}} structure.
              this will be valid forever after.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

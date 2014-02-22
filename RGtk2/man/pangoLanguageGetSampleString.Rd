\alias{pangoLanguageGetSampleString}
\name{pangoLanguageGetSampleString}
\title{pangoLanguageGetSampleString}
\description{Get a string that is representative of the characters needed to
render a particular language.}
\usage{pangoLanguageGetSampleString(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLanguage}}]  a \code{\link{PangoLanguage}}, or \code{NULL}}}
\details{The sample text may be a pangram, but is not necessarily.  It is chosen to
be demonstrative of normal text in the language, as well as exposing font
feature requirements unique to the language.  It is suitable for use
as sample text in a font selection dialog.
  
If \code{language} is \code{NULL}, the default language as found by
\code{\link{pangoLanguageGetDefault}} is used.
  
If Pango does not have a sample string for \code{language}, the classic
"The quick brown fox..." is returned.  This can be detected by
comparing the returned pointer value to that returned for (non-existent)
language code "xx".  That is, compare to:
\preformatted{
pangoLanguageFromString("xx")$getSampleString()

}  }
\value{[char]  the sample string.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

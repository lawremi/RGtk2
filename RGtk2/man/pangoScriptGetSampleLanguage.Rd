\alias{pangoScriptGetSampleLanguage}
\name{pangoScriptGetSampleLanguage}
\title{pangoScriptGetSampleLanguage}
\description{Given a script, finds a language tag that is reasonably
representative of that script. This will usually be the
most widely spoken or used language written in that script:
for instance, the sample language for \code{PANGO_SCRIPT_CYRILLIC}
is \code{ru} (Russian), the sample language
for \code{PANGO_SCRIPT_ARABIC} is \code{ar}.}
\usage{pangoScriptGetSampleLanguage(script)}
\arguments{\item{\verb{script}}{[\code{\link{PangoScript}}]  a \code{\link{PangoScript}}}}
\details{For some
scripts, no sample language will be returned because there
is no language that is sufficiently representative. The best
example of this is \code{PANGO_SCRIPT_HAN}, where various different
variants of written Chinese, Japanese, and Korean all use
significantly different sets of Han characters and forms
of shared characters. No sample language can be provided
for many historical scripts as well.
  
As of 1.18, this function checks the environment variables
PANGO_LANGUAGE and LANGUAGE (checked in that order) first.
If one of them is set, it is parsed as a list of language tags
separated by colons or other separators.  This function
will return the first language in the parsed list that Pango
believes may use \code{script} for writing.  This last predicate
is tested using \code{\link{pangoLanguageIncludesScript}}.  This can
be used to control Pango's font selection for non-primary
languages.  For example, a PANGO_LANGUAGE enviroment variable
set to "en:fa" makes Pango choose fonts suitable for Persian (fa) 
instead of Arabic (ar) when a segment of Arabic text is found
in an otherwise non-Arabic text.  The same trick can be used to
choose a default language for \code{PANGO_SCRIPT_HAN} when setting
context language is not feasible.  
  Since 1.4}
\value{[\code{\link{PangoLanguage}}]  a \code{\link{PangoLanguage}} that is representative
of the script, or \code{NULL} if no such language exists.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

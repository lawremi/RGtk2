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
\arguments{\item{\code{script}}{[\code{\link{PangoScript}}]  a \code{\link{PangoScript}}}}
\details{For some
scripts, no sample language will be returned because there
is no language that is sufficiently representative. The best
example of this is \code{PANGO_SCRIPT_HAN}, where various different
variants of written Chinese, Japanese, and Korean all use
significantly different sets of Han characters and forms
of shared characters. No sample language can be provided
for many historical scripts as well.  

  Since  1.4}
\value{[\code{\link{PangoLanguage}}]  a \code{\link{PangoLanguage}} that is representative
of the script, or \code{NULL} if no such language exists.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

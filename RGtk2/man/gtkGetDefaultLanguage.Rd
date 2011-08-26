\alias{gtkGetDefaultLanguage}
\name{gtkGetDefaultLanguage}
\title{gtkGetDefaultLanguage}
\description{Returns the \code{\link{PangoLanguage}} for the default language currently in
effect. (Note that this can change over the life of an
application.)  The default language is derived from the current
locale. It determines, for example, whether GTK+ uses the
right-to-left or left-to-right text direction.}
\usage{gtkGetDefaultLanguage()}
\details{This function is equivalent to \code{\link{pangoLanguageGetDefault}}.  See
that function for details.}
\value{[\code{\link{PangoLanguage}}] the default language as a \code{\link{PangoLanguage}}, must not be
freed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

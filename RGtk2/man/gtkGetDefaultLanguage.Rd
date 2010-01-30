\alias{gtkGetDefaultLanguage}
\name{gtkGetDefaultLanguage}
\title{gtkGetDefaultLanguage}
\description{Returns the \verb{\link{PangoLanguage}} for the default language currently in
effect. (Note that this can change over the life of an
application.)  The default language is derived from the current
locale. It determines, for example, whether GTK+ uses the
right-to-left or left-to-right text direction.}
\usage{gtkGetDefaultLanguage()}
\details{This function is equivalent to \code{pangoLanguageGetDefault()}.  See
that function for details.  }
\value{[\verb{\link{PangoLanguage}}]  the default language as a \verb{\link{PangoLanguage}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

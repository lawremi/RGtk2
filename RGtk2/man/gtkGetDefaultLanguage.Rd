\alias{gtkGetDefaultLanguage}
\name{gtkGetDefaultLanguage}
\title{gtkGetDefaultLanguage}
\description{Returns the \code{\link{PangoLanguage}} for the default language currently in
effect. (Note that this can change over the life of an
application.)  The default language is derived from the current
locale. It determines, for example, whether GTK+ uses the
right-to-left or left-to-right text direction. See
\code{gtkGetLcCtype()} for notes on behaviour on Windows.}
\usage{gtkGetDefaultLanguage()}
\value{[\code{\link{PangoLanguage}}]  the default language as a \code{\link{PangoLanguage}}, must not be
freed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

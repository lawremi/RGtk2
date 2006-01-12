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
\note{
This function will terminate your program if it was unable to initialize 
the GUI for some reason. If you want your program to fall back to a 
textual interface you want to call \code{\link{gtkInitCheck}} instead.

This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

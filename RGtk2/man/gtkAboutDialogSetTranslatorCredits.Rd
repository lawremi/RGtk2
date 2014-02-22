\alias{gtkAboutDialogSetTranslatorCredits}
\name{gtkAboutDialogSetTranslatorCredits}
\title{gtkAboutDialogSetTranslatorCredits}
\description{Sets the translator credits string which is displayed in
the translators tab of the secondary credits dialog.}
\usage{gtkAboutDialogSetTranslatorCredits(object, translator.credits = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAboutDialog}}}
\item{\verb{translator.credits}}{the translator credits. \emph{[  \acronym{allow-none}  ]}}
}
\details{The intended use for this string is to display the translator
of the language which is currently used in the user interface.
Using \code{gettext()}, a simple way to achieve that is to mark the
string for translation:
\preformatted{about$setTranslatorCredits(gettext("translator-credits"))}
It is a good idea to use the customary msgid "translator-credits" for this
purpose, since translators will already know the purpose of that msgid, and
since \code{\link{GtkAboutDialog}} will detect if "translator-credits" is untranslated
and hide the tab.
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

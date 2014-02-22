\alias{pangoLanguageGetDefault}
\name{pangoLanguageGetDefault}
\title{pangoLanguageGetDefault}
\description{Returns the \code{\link{PangoLanguage}} for the current locale of the process.
Note that this can change over the life of an application.}
\usage{pangoLanguageGetDefault()}
\details{On Unix systems, this is the return value is derived from
\code{setlocale(LC_CTYPE, NULL)}, and the user can
affect this through the environment variables LC_ALL, LC_CTYPE or
LANG (checked in that order). The locale string typically is in
the form lang_COUNTRY, where lang is an ISO-639 language code, and
COUNTRY is an ISO-3166 country code. For instance, sv_FI for
Swedish as written in Finland or pt_BR for Portuguese as written in
Brazil.
  
On Windows, the C library does not use any such environment
variables, and setting them won't affect the behavior of functions
like \code{ctime()}. The user sets the locale through the Regional Options
in the Control Panel. The C library (in the \code{setlocale()} function)
does not use country and language codes, but country and language
names spelled out in English.
However, this function does check the above environment
variables, and does return a Unix-style locale string based on
either said environment variables or the thread's current locale.
  
Your application should call \code{setlocale(LC_ALL, "");}
for the user settings to take effect.  Gtk+ does this in its initialization
functions automatically (by calling \code{gtkSetLocale()}).
See \code{man setlocale} for more details.  
  Since 1.16}
\value{[\code{\link{PangoLanguage}}]  the default language as a \code{\link{PangoLanguage}}, must not be
              freed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

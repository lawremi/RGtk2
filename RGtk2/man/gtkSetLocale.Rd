\alias{gtkSetLocale}
\name{gtkSetLocale}
\title{gtkSetLocale}
\description{Initializes internationalization support for GTK+. \code{\link{gtkInit}}
automatically does this, so there is typically no point
in calling this function.}
\usage{gtkSetLocale()}
\details{If you are calling this function because you changed the locale
after GTK+ is was initialized, then calling this function
may help a bit. (Note, however, that changing the locale
after GTK+ is initialized may produce inconsistent results and
is not really supported.)
  
In detail - sets the current locale according to the
program environment. This is the same as calling the C library function
\code{setlocale (LC_ALL, "")} but also takes care of the 
locale specific setup of the windowing system used by GDK.  }
\value{[character]  a string corresponding to the locale set, typically in the
form lang_COUNTRY, where lang is an ISO-639 language code, and
COUNTRY is an ISO-3166 country code. On Unix, this form matches the
result of the \code{setlocale()}; it is also used on other machines, such as 
Windows, where the C library returns a different result. The string is 
owned by GTK+ and should not be modified or freed.}
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

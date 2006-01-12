\alias{gtkDisableSetlocale}
\name{gtkDisableSetlocale}
\title{gtkDisableSetlocale}
\description{Prevents \code{\link{gtkInit}}, \code{\link{gtkInitCheck}}, \code{gtkInitWithArgs()} and
\code{gtkParseArgs()} from automatically
calling \code{setlocale (LC_ALL, "")}. You would 
want to use this function if you wanted to set the locale for 
your program to something other than the user's locale, or if 
you wanted to set different values for different locale categories.}
\usage{gtkDisableSetlocale()}
\details{Most programs should not need to call this function.  }
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

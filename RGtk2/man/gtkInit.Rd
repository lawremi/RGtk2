\alias{gtkInit}
\name{gtkInit}
\title{gtkInit}
\description{Call this function before using any other GTK+ functions in your GUI
applications.  It will initialize everything needed to operate the 
toolkit and parses some standard command line options. \code{argc} and 
\code{argv} are adjusted accordingly so your own code will 
never see those standard arguments. }
\usage{gtkInit(args = .GtkInitArgs)}
\details{Note that there are some alternative ways to initialize GTK+: 
if you are calling \code{gtkParseArgs()}, \code{\link{gtkInitCheck}}, 
\code{gtkInitWithArgs()} or \code{gOptionContextParse()} with 
the option group returned by \code{gtkGetOptionGroup()}, you 
\emph{don't} have to call \code{\link{gtkInit}}.
  
\emph{This function will terminate your program if it was unable to initialize 
the GUI for some reason. If you want your program to fall back to a 
textual interface you want to call \code{\link{gtkInitCheck}} instead.}  }
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

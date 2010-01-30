\alias{gtkInit}
\name{gtkInit}
\title{gtkInit}
\description{Call this function before using any other GTK+ functions in your GUI
applications.  It will initialize everything needed to operate the 
toolkit and parses some standard command line options. \code{argc} and 
\code{argv} are adjusted accordingly so your own code will 
never see those standard arguments. }
\usage{gtkInit(args = "R")}
\details{Note that there are some alternative ways to initialize GTK+: 
if you are calling \code{gtkParseArgs()}, \code{gtkInitCheck()}, 
\code{gtkInitWithArgs()} or \code{gOptionContextParse()} with 
the option group returned by \code{gtkGetOptionGroup()}, you 
\emph{don't} have to call \code{\link{gtkInit}}.
  \strong{PLEASE NOTE:} This function will terminate your program if it was unable to initialize 
the GUI for some reason. If you want your program to fall back to a 
textual interface you want to call \code{gtkInitCheck()} instead.  }
\note{
This function will terminate your program if it was unable to initialize 
the GUI for some reason. If you want your program to fall back to a 
textual interface you want to call \code{gtkInitCheck()} instead.

}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

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
textual interface you want to call \code{gtkInitCheck()} instead.  \strong{PLEASE NOTE:} Since 2.18, GTK+ calls \code{signal (SIGPIPE, SIG_IGN)}
during initialization, to ignore SIGPIPE signals, since these are
almost never wanted in graphical applications. If you do need to
handle SIGPIPE for some reason, reset the handler after \code{\link{gtkInit}},
but notice that other libraries (e.g. libdbus or gvfs) might do
similar things.  }
\note{
This function will terminate your program if it was unable to initialize 
the GUI for some reason. If you want your program to fall back to a 
textual interface you want to call \code{gtkInitCheck()} instead.
Since 2.18, GTK+ calls \code{signal (SIGPIPE, SIG_IGN)}
during initialization, to ignore SIGPIPE signals, since these are
almost never wanted in graphical applications. If you do need to
handle SIGPIPE for some reason, reset the handler after \code{\link{gtkInit}},
but notice that other libraries (e.g. libdbus or gvfs) might do
similar things.

}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

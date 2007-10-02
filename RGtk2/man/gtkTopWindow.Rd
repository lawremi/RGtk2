\name{gtkTopWindow}
\alias{gtkTopWindow}
\title{Create a Gtk Window}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  This creates a top-level Gtk window
  (as opposed to a dialog or popup window).
  This is a convenience function for the more
  general \code{\link{gtkWindow}} function
  which is just as easy to use, given its defaults.
}
\usage{
gtkTopWindow(title="My Window", show=TRUE)
}

\arguments{
  \item{title}{a string to use in the title bar for the window.}
  \item{show}{a logical value indicating whether the window should
    be displayed (\code{TRUE}) or left unshown so that other
    widgets can be added to it and then shown.}
}

\value{
  An object of class \code{GtkWindow}
  that has the same inheritance as the low-level
  inheritance in Gtk.
}
\author{
Duncan Temple Lang <duncan@research.bell-labs.com>
}
\note{
THIS STUFF IS VERY OLD AND DEPRECATED (compatibility wrappers for RGtk 1)


}

\seealso{
  \code{\link{gtkWindow}}
  \code{\link{gtkWindowNew}}  
}



\keyword{interface}
\keyword{internal}

\name{getSignalInfo}
\alias{getSignalInfo}
\title{Information for all signals for multiple classes}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  This retrieves the signal information for
  all of the signals defined for each of the classes
  specified by \code{classes}.
  This is just a convenient front-end to
  \code{\link{gtkSignalGetInfo}} for a large number of signals.
}
\usage{
getSignalInfo(classes=.GtkClasses, load=TRUE)
}
\arguments{
  \item{classes}{a character vector containing the names of
  different Gtk classes/types}
\item{load}{This is now ignored. You don't need to worry about whether types are loaded.}
}
\value{
  A list with elements for each of the classes.
  Each element is itself a list with an element for
  each of the signals defined for that class.
  Each element within this list is the value returned
  from \code{\link{gtkSignalGetInfo}}
}
\references{
  Information on the package is available
  from \url{http://www.omegahat.net/RGtk/}.

  Information on Gtk is available from
  \url{http://www.gtk.org}.
}
\author{
Duncan Temple Lang <duncan@research.bell-labs.com>
}


\seealso{
  \code{\link{gtkSignalGetInfo}}
}

\examples{
  if (gtkInit())
    getSignalInfo("GtkButton")
}

\keyword{interface}
\keyword{internal}

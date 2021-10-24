\name{gtkObjectGetSignals}
\alias{gtkObjectGetSignals}
\alias{gtkTypeGetSignals}
\title{Retrieve information about available signals}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  This provides dynamic (run-time) reflectance information about
  the available signals for a Gtk type/class.
  It gives the names of the signals, the parameters
  for the associated callback function and when it is called
  (i.e. before or after the object calls its own handlers).
}
\usage{
gtkObjectGetSignals(obj)
gtkTypeGetSignals(type)
}

\arguments{
  \item{obj}{the Gtk object whose signals are to be queried.}
  \item{type}{a string or object of class \code{GtkType} whose signals
    are to be retrieved.}  
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
\code{\link{gtkAddCallback}}
}



\keyword{interface}
\keyword{internal}

\name{gtkObjectSignalEmit}
\alias{gtkObjectSignalEmit}
\title{Emit a Gtk signal from a Gtk object.}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  This allows us to emit or raise a Gtk signal
  from a Gtk object directly from R.
  This should not be used widely. The conversion
  of the arguments to their C equivalents is
  complex.
}
\usage{
gtkObjectSignalEmit(obj, signal, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{the GtkObject from which the event is to be emitted.}
  \item{signal}{the identifier of the signal/event, typically a string
    giving the name of the event.}
  \item{\dots}{the arguments that are passed in the signal emission to
    the callbacks/signal handlers.}
}
\details{
  One should not rely on this, and fortunately
  one rarely needs to when developing regular
  GUIs in R. Typically, we only need this when
  we are developing Gtk classes.
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
 \code{\link{gtkObjectAddCallback}}
}

\keyword{programming}

\keyword{interface}
\keyword{internal}



\name{idle}
\alias{gtkAddIdle}
\alias{gtkRemoveIdle}
\title{Control a background/idle function}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  These functions allow one to register and
  remove a function that is called whenever
  Gtk has nothing else to do. In other words,
  these are background tasks that have less priority
  than timers and user interface events.
}
\usage{
gtkAddIdle(f, data=NULL)
gtkRemoveIdle(id)
}
\arguments{
  \item{f}{ the function should take one or zero arguments
    depending on whether the argument \code{data} is given.
    The function should return a logical value.
    If it returns \code{FALSE}, the timer is removed.
    If it returns \code{TRUE}, the timer  is re-registered and will be called
    after \code{interval} milliseconds.
    }
    \item{data}{a value, which if specified, will be passed to the
      function \code{f} when it is invoked. This can be used to
      parameterize the function to have different functions.
      The same effect can be obtained using closures.
     }
  \item{id}{the object identifying the idle function in Gtk
      that was returned by a call to \code{gtkAddTimeout}.}
}
\value{
  \code{gtkAddTimeout} returns an object
  of class \code{"GtkIdleId"}.
  This is an integer giving the identifier
  returned by the low-level Gtk interface.
}

\author{
Duncan Temple Lang <duncan@research.bell-labs.com>
}
\note{
THIS STUFF IS VERY OLD AND DEPRECATED (compatibility wrappers for RGtk 1)


  This does not currently work when running directly
  in R. However, when running R inside another application
  such as GGobi, Gnumeric, etc. it and other event-loop
  facilities will work.
}

\seealso{
  \code{\link{gtkAddTimeout}}
  \code{\link{gtkRemoveTimeout}}
  \code{\link{gtkAddCallback}}
}

\keyword{interface}
\keyword{internal}

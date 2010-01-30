\name{gtkAddTimeout}
\alias{gtkAddTimeout}
\alias{gtkRemoveTimeout}
\title{Control a periodic/timer function}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  These functions allow one to register and
  remove a function that is called periodically
  at a fixed interval.
}
\usage{
gtkAddTimeout(interval, f, data=NULL)
gtkRemoveTimeout(id)
}
\arguments{
  \item{interval}{ the number of milliseconds to wait
    before invoking the call.}
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
  \item{id}{the object identifying the timer function in Gtk
      that was returned by a call to \code{gtkAddTimeout}.}
}
\value{
  \code{gtkAddTimeout} returns an object
  of class \code{"GtkTimeoutId"}.
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

  If one wanted to reset the timeout but with a different
  interval, one should register a new timeout within the
  function and return \code{FALSE}.
}

\seealso{
  \code{\link{gtkAddIdle}}
  \code{\link{gtkRemoveIdle}}
  \code{\link{gtkAddCallback}}
}

\keyword{interface}
\keyword{internal}

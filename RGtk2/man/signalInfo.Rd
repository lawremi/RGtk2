\name{gtkSignalGetInfo}
\alias{gtkSignalGetInfo}
\title{Reflectance information about a Gtk signal}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  This returns information about the
  Gtk signal of interest, giving details
  such as the number and type of parameters that
  are passed to a signal handler function registered
  for an event associated with this signal;
  the type of the return value expected from the handler;
  the class for which it is defined;
  the flags indicating how and when handlers for this signal are invoked when an event occurs;
}
\usage{
gtkSignalGetInfo(sig)
}
\arguments{
  \item{sig}{an object of class \code{GtkSignalId},
   typically obtained from a call to \code{\link{gtkTypeGetSignals}}}
}
\details{
  This uses the C-level reflectance mechanism provided by Gtk
  to obtain information about a particular signal registered
  via the class mechanism. This information is then converted
  to an S object.
}
\value{
  A list with 6 elements
  \item{signal}{the \code{GtkSignalId} object (\code{sig}) used to identify the signal
   in the call}
 \item{parameters}{a named list of parameter types that
   are passed to a callback/signal handler for this signal.
   Each element is a \code{GtkType} object identifying the particular
   type of that argument. The names are intended to give some indication
   of their meaning.
   Note that this list does not include the object for which the event
   is generated and which is included in all signal handler calls.}
 \item{returnType}{the \code{GtkType} object identifying
     the type of the value a handler should return.}
   \item{isUserSignal}{a logical value indicating whether this is
     a user-defined signal or built-in signal}
   \item{runFlags}{a value giving information about how and when
     the handlers are invoked in response to this signal.
     This is a single value made up of OR'ing values from
     the \code{.GtkSignalRunType} vector. See the possible
     values there. One rarely needs to understand this information to
     use a signal handler function.
     }
  \item{objectType}{an object of class \code{GtkType}
    identifying the Gtk class/type for which the signal
     is defined.}
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
   \code{\link{gtkTypeGetSignals}}
   \code{\link{getSignalInfo}}   
}

\examples{
  if (gtkInit()) {
    gtkButton()
    sigs <- gtkTypeGetSignals("GtkButton")
    gtkSignalGetInfo(sigs[["clicked"]])
  }
}


\keyword{interface}
\keyword{internal}

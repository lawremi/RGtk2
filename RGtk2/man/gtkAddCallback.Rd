\name{gtkAddCallback}
\alias{gtkAddCallback}
\alias{gtkObjectAddCallback}
\alias{gtkObjectBlockCallback}
\alias{gtkObjectUnblockCallback}
\alias{gtkObjectDisconnectCallback}
\alias{gtkObjectRemoveCallback}
\title{Register and control a function as Gtk event handler}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  These functions allow one to register an R expression,
   call or more typically a function as a
  callback for a Gtk event, and also control
  the activity status of that callback.
\code{gtkObjectAddCallback} registers the S expression, call or function
as a callback or event handler
for the specific event type
with the widget of interest.
When the event occurs for this widget, 
the S "expression" will be invoked.

The block and unblock functions allow one to temporarily
suspend and re-enable a callback. When suspended, any calls
to the function that would normally occur are not invoked.

\code{gtkObjectRemoveCallback} allows one to unregister a callback using
the identifier obtained when call \code{gtkObjectAddCallback}.

\code{gtkObjectDisconnectCallback} un-registers a callback.
}
\usage{
gtkObjectAddCallback(w, signal, f, data = NULL, object = TRUE, after = TRUE)
gtkAddCallback(w, signal, f, data = NULL, object = TRUE, after = TRUE)
gtkObjectBlockCallback(obj, id)
gtkObjectUnblockCallback(obj, id)
gtkObjectDisconnectCallback(obj, id)
}
\arguments{
  \item{w}{the Gtk object whose events for this signal type
      are to be monitored and reported to us via a call to the function \code{f}.}
  \item{signal}{a string (character vector of length 1) giving
  the name of the signal type. See the Gtk documentation for the 
  particular widget.}
  \item{obj}{the Gtk object for which we want to block/unblock or
    disconnect the callback.}
  \item{f}{the S expression, call or function which is to be invoked when an event
    occurs.
    If this is a call or expression, it is simply evaluated and no
    additional
    variables (i.e. the Gtk object for which the signal was emitted,
    etc.)
    are made available to it.
    If the callback is a function,
    it will be called with a single argument
 which is an external pointer to the C-level event object
 that describes the event.}
  \item{data}{a value that is passed to the function \code{f} when the callback
    is invoked. This can be use to parameterize a callback function so that it
    behaves differently. This is passed as the first argument
    to the function if \code{object} is \code{TRUE}
    or as the final argument if \code{object} is \code{FALSE}.
    If \code{f} is an expression or a call, \code{data} can be
    an environment. In this case, \code{f} is evaluated within
    this environment. This allows the code registering the callback
    to control the scope of the evaluation.
  }
  \item{object}{ a  logical value indicating whether
    we want the value given in the \code{data} argument
    to be the first argument to the callback function and the
    Gtk object for which the event occurs to be the last argument,
    or vice-versa. This is sometimes convenient and is the difference
    between a call to \code{gtk_signal_connect} and
    \code{gtk_signal_connect_object} at the Gtk interface level.
    This argument is only meaningful if \code{data} is not missing
    as no data argument is passed to the callback if it is not supplied.
  }
  \item{after}{a logical value indicating whether 
    to invoke this user-defined handler after the signal, or to let the
    signal's default behavior preside (i.e. depending on GTK\_RUN\_FIRST
    and GTK\_RUN\_LAST).
    This influences which signal gets to return a value to the event
    source which can be useful. If the return value is \code{void},
    this rarely matters and one can accept the default.
  }
  \item{id}{}
}
\details{
 The S function is invoked by a generic C-level event 
 handler that makes the call to the S function. That
 function is stored in user-level data for the widget.
 The call provides one argument which is a reference to the
 C event instance.
}
\value{
  \code{gtkObjectAddCallback} returns an object of class
  \code{CallbackID} that provides a unique identifier
  for the Gtk-level handler.
  This is an integer value whose name attribute gives the name of the signal.
  This object can be used to suspend (block), remove (disconnect)
  and reactivate (unblock) a callback.

  The other functions return a logical value indicating if they were
  succesful or else result in an error.
}

\references{
\url{http://www.gtk.org}
\url{http://www.omegahat.net/RGtk/}
}
\author{Duncan Temple Lang}
\note{
THIS STUFF IS VERY OLD AND DEPRECATED (compatibility wrappers for RGtk 1)

This is an extra-ordinarily early release 
intended to encourage others to contribute code, etc.}

\seealso{
\code{\link{gtkButton}}
}

\examples{
  if (gtkInit()) {
    w <- gtkWindow(show = FALSE)  
    b <- gtkButton("Hit me")
    w$add(b)
    w$show()
    gtkAddCallback(b, "clicked", function(w) {
      help.start();
      TRUE
    })
  }
}

\keyword{interface}
\keyword{internal}


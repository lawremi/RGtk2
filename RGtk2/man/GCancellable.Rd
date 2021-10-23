\alias{GCancellable}
\alias{gCancellable}
\name{GCancellable}
\title{GCancellable}
\description{Thread-safe Operation Cancellation Stack}
\section{Methods and Functions}{
\code{\link{gCancellableNew}()}\cr
\code{\link{gCancellableIsCancelled}(object)}\cr
\code{\link{gCancellableSetErrorIfCancelled}(object, .errwarn = TRUE)}\cr
\code{\link{gCancellableGetFd}(object)}\cr
\code{\link{gCancellableReleaseFd}(object)}\cr
\code{\link{gCancellableGetCurrent}()}\cr
\code{\link{gCancellablePopCurrent}(object)}\cr
\code{\link{gCancellablePushCurrent}(object)}\cr
\code{\link{gCancellableReset}(object)}\cr
\code{\link{gCancellableDisconnect}(object, handler.id)}\cr
\code{\link{gCancellableCancel}(object)}\cr
\code{gCancellable()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GCancellable}}
\section{Detailed Description}{GCancellable is a thread-safe operation cancellation stack used 
throughout GIO to allow for cancellation of synchronous and
asynchronous operations.}
\section{Structures}{\describe{\item{\verb{GCancellable}}{
Allows actions to be cancelled.

}}}
\section{Convenient Construction}{\code{gCancellable} is the equivalent of \code{\link{gCancellableNew}}.}
\section{Signals}{\describe{\item{\code{cancelled(cancellable, user.data)}}{
Emitted when the operation has been cancelled.
  
Can be used by implementations of cancellable operations. If the
operation is cancelled from another thread, the signal will be
emitted in the thread that cancelled the operation, not the
thread that is running the operation.
  
Note that disconnecting from this signal (or any signal) in a
multi-threaded program is prone to race conditions. For instance
it is possible that a signal handler may be invoked even
\emph{after} a call to
\code{\link{gSignalHandlerDisconnect}} for that handler has already
returned.
  
There is also a problem when cancellation happen
right before connecting to the signal. If this happens the
signal will unexpectedly not be emitted, and checking before
connecting to the signal leaves a race condition where this is
still happening.
  
In order to make it safe and easy to connect handlers there
are two helper functions: \code{gCancellableConnect()} and
\code{\link{gCancellableDisconnect}} which protect against problems
like this.
  
An example of how to us this:
\preformatted{
## Make sure we don't do any unnecessary work if already cancelled
if (cancellable$setErrorIfCancelled())
  return()
## Set up all the data needed to be able to
## handle cancellation of the operation
my_data <- myData(...)

id <- 0
if (!is.null(cancellable))
  id <- cancellable$connect(cancelled_handler, data, NULL)

## cancellable operation here...

cancellable$disconnect(id)
}
  
Note that the cancelled signal is emitted in the thread that
the user cancelled from, which may be the main thread. So, the
cancellable signal should not do something that can block.

\describe{
\item{\code{cancellable}}{a \code{\link{GCancellable}}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GCancellable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

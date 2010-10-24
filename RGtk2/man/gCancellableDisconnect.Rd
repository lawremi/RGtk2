\alias{gCancellableDisconnect}
\name{gCancellableDisconnect}
\title{gCancellableDisconnect}
\description{Disconnects a handler from an cancellable instance similar to
\code{\link{gSignalHandlerDisconnect}} but ensures that once this
function returns the handler will not run anymore in any thread.}
\usage{gCancellableDisconnect(object, handler.id)}
\arguments{
\item{\verb{object}}{A \code{\link{GCancellable}} or \code{NULL}.}
\item{\verb{handler.id}}{Handler id of the handler to be disconnected, or \code{0}.}
}
\details{This avoids a race condition where a thread cancels at the
same time as the cancellable operation is finished and the
signal handler is removed. See \verb{"cancelled"} for
details on how to use this.
  
If \code{cancellable} is \code{NULL} or \code{handler.id} is \code{0} this function does
nothing.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gCancellableCancel}
\name{gCancellableCancel}
\title{gCancellableCancel}
\description{Will set \code{cancellable} to cancelled, and will emit the
\verb{"cancelled"} signal. (However, see the warning about
race conditions in the documentation for that signal if you are
planning to connect to it.)}
\usage{gCancellableCancel(object)}
\arguments{\item{\verb{object}}{a \code{\link{GCancellable}} object.}}
\details{This function is thread-safe. In other words, you can safely call
it from a thread other than the one running the operation that was
passed the \code{cancellable}.
  
The convention within gio is that cancelling an asynchronous
operation causes it to complete asynchronously. That is, if you
cancel the operation from the same thread in which it is running,
then the operation's \code{\link{GAsyncReadyCallback}} will not be invoked until
the application returns to the main loop.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

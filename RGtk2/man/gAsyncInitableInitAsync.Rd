\alias{gAsyncInitableInitAsync}
\name{gAsyncInitableInitAsync}
\title{gAsyncInitableInitAsync}
\description{Starts asynchronous initialization of the object implementing the
interface. This must be done before any real use of the object after
initial construction. If the object also implements \code{\link{GInitable}} you can
optionally call \code{\link{gInitableInit}} instead.}
\usage{gAsyncInitableInitAsync(object, io.priority, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GAsyncInitable}}.}
\item{\verb{io.priority}}{the I/O priority
of the operation.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{When the initialization is finished, \code{callback} will be called. You can
then call \code{\link{gAsyncInitableInitFinish}} to get the result of the
initialization.
  
Implementations may also support cancellation. If \code{cancellable} is not
\code{NULL}, then initialization can be cancelled by triggering the cancellable
object from another thread. If the operation was cancelled, the error
\code{G_IO_ERROR_CANCELLED} will be returned. If \code{cancellable} is not \code{NULL} and
the object doesn't support cancellable initialization the error
\code{G_IO_ERROR_NOT_SUPPORTED} will be returned.
  
If this function is not called, or returns with an error then all
operations on the object should fail, generally returning the
error \code{G_IO_ERROR_NOT_INITIALIZED}.
  
Implementations of this method must be idempotent, i.e. multiple calls
to this function with the same argument should return the same results.
Only the first call initializes the object, further calls return the result
of the first call. This is so that its safe to implement the singleton
pattern in the GObject constructor function.
  
For classes that also support the \code{\link{GInitable}} interface the default
implementation of this method will run the \code{\link{gInitableInit}} function
in a thread, so if you want to support asynchronous initialization via
threads, just implement the \code{\link{GAsyncInitable}} interface without overriding
any interface methods.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

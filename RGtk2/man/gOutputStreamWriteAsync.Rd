\alias{gOutputStreamWriteAsync}
\name{gOutputStreamWriteAsync}
\title{gOutputStreamWriteAsync}
\description{Request an asynchronous write of \code{count} bytes from \code{buffer} into 
the stream. When the operation is finished \code{callback} will be called.
You can then call \code{\link{gOutputStreamWriteFinish}} to get the result of the 
operation.}
\usage{gOutputStreamWriteAsync(object, buffer, io.priority = 0, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GOutputStream}}.}
\item{\verb{buffer}}{the buffer containing the data to write.}
\item{\verb{io.priority}}{the io priority of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{callback to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{During an async request no other sync and async calls are allowed, 
and will result in \code{G_IO_ERROR_PENDING} errors. 
  
A value of \code{count} larger than \code{G_MAXSSIZE} will cause a 
\code{G_IO_ERROR_INVALID_ARGUMENT} error.
  
On success, the number of bytes written will be passed to the
\code{callback}. It is not an error if this is not the same as the 
requested size, as it can happen e.g. on a partial I/O error, 
but generally we try to write as many bytes as requested. 
  
Any outstanding I/O request with higher priority (lower numerical 
value) will be executed before an outstanding request with lower 
priority. Default priority is \code{G_PRIORITY_DEFAULT}.
  
The asyncronous methods have a default fallback that uses threads 
to implement asynchronicity, so they are optional for inheriting 
classes. However, if you override one you must override all.
  
For the synchronous, blocking version of this function, see 
\code{\link{gOutputStreamWrite}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

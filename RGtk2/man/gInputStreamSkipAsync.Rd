\alias{gInputStreamSkipAsync}
\name{gInputStreamSkipAsync}
\title{gInputStreamSkipAsync}
\description{Request an asynchronous skip of \code{count} bytes from the stream.
When the operation is finished \code{callback} will be called. 
You can then call \code{\link{gInputStreamSkipFinish}} to get the result of the 
operation.}
\usage{gInputStreamSkipAsync(object, count, io.priority = 0, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GInputStream}}.}
\item{\verb{count}}{the number of bytes that will be skipped from the stream}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{callback to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{During an async request no other sync and async calls are allowed, and will
result in \code{G_IO_ERROR_PENDING} errors. 
  
A value of \code{count} larger than \code{G_MAXSSIZE} will cause a \code{G_IO_ERROR_INVALID_ARGUMENT} error.
  
On success, the number of bytes skipped will be passed to the
callback. It is not an error if this is not the same as the requested size, as it
can happen e.g. near the end of a file, but generally we try to skip
as many bytes as requested. Zero is returned on end of file
(or if \code{count} is zero), but never otherwise.
  
Any outstanding i/o request with higher priority (lower numerical value) will
be executed before an outstanding request with lower priority. Default
priority is \code{G_PRIORITY_DEFAULT}.
  
The asyncronous methods have a default fallback that uses threads to implement
asynchronicity, so they are optional for inheriting classes. However, if you
override one you must override all.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

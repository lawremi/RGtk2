\alias{gFileInputStreamQueryInfoAsync}
\name{gFileInputStreamQueryInfoAsync}
\title{gFileInputStreamQueryInfoAsync}
\description{Queries the stream information asynchronously.
When the operation is finished \code{callback} will be called. 
You can then call \code{\link{gFileInputStreamQueryInfoFinish}} 
to get the result of the operation.}
\usage{gFileInputStreamQueryInfoAsync(object, attributes, io.priority = 0, 
    cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInputStream}}.}
\item{\verb{attributes}}{a file attribute query string.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{callback to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For the synchronous version of this function, 
see \code{\link{gFileInputStreamQueryInfo}}. 
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be set}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

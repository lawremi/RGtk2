\alias{gFileEnumeratorNextFilesAsync}
\name{gFileEnumeratorNextFilesAsync}
\title{gFileEnumeratorNextFilesAsync}
\description{Request information for a number of files from the enumerator asynchronously.
When all i/o for the operation is finished the \code{callback} will be called with
the requested information. }
\usage{gFileEnumeratorNextFilesAsync(object, num.files, io.priority = 0, 
    cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileEnumerator}}.}
\item{\verb{num.files}}{the number of file info objects to request}
\item{\verb{io.priority}}{the io priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{The callback can be called with less than \code{num.files} files in case of error
or at the end of the enumerator. In case of a partial error the callback will
be called with any succeeding items and no error, and on the next request the
error will be reported. If a request is cancelled the callback will be called
with \code{G_IO_ERROR_CANCELLED}.
  
During an async request no other sync and async calls are allowed, and will
result in \code{G_IO_ERROR_PENDING} errors. 
  
Any outstanding i/o request with higher priority (lower numerical value) will
be executed before an outstanding request with lower priority. Default
priority is \code{G_PRIORITY_DEFAULT}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

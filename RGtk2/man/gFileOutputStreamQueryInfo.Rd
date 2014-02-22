\alias{gFileOutputStreamQueryInfo}
\name{gFileOutputStreamQueryInfo}
\title{gFileOutputStreamQueryInfo}
\description{Queries a file output stream for the given \code{attributes}. 
This function blocks while querying the stream. For the asynchronous 
version of this function, see \code{\link{gFileOutputStreamQueryInfoAsync}}. 
While the stream is blocked, the stream will set the pending flag 
internally, and any other operations on the stream will fail with 
\code{G_IO_ERROR_PENDING}.}
\usage{gFileOutputStreamQueryInfo(object, attributes, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileOutputStream}}.}
\item{\verb{attributes}}{a file attribute query string.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Can fail if the stream was already closed (with \code{error} being set to 
\code{G_IO_ERROR_CLOSED}), the stream has pending operations (with \code{error} being
set to \code{G_IO_ERROR_PENDING}), or if querying info is not supported for 
the stream's interface (with \code{error} being set to \code{G_IO_ERROR_NOT_SUPPORTED}). In
all cases of failure, \code{NULL} will be returned.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be set, and \code{NULL} will 
be returned.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileInfo}}] a \code{\link{GFileInfo}} for the \code{stream}, or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}, \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

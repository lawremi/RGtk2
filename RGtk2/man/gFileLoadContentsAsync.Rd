\alias{gFileLoadContentsAsync}
\name{gFileLoadContentsAsync}
\title{gFileLoadContentsAsync}
\description{Starts an asynchronous load of the \code{file}'s contents.}
\usage{gFileLoadContentsAsync(object, cancellable = NULL, callback, 
    user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For more details, see \code{\link{gFileLoadContents}} which is
the synchronous version of this call.
  
When the load operation has completed, \code{callback} will be called 
with \code{user} data. To finish the operation, call 
\code{\link{gFileLoadContentsFinish}} with the \code{\link{GAsyncResult}} returned by 
the \code{callback}.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

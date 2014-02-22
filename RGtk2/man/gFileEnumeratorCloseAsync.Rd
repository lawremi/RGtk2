\alias{gFileEnumeratorCloseAsync}
\name{gFileEnumeratorCloseAsync}
\title{gFileEnumeratorCloseAsync}
\description{Asynchronously closes the file enumerator. }
\usage{gFileEnumeratorCloseAsync(object, io.priority = 0, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileEnumerator}}.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned in 
\code{\link{gFileEnumeratorCloseFinish}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

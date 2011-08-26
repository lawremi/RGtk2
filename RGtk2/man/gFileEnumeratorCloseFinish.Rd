\alias{gFileEnumeratorCloseFinish}
\name{gFileEnumeratorCloseFinish}
\title{gFileEnumeratorCloseFinish}
\description{Finishes closing a file enumerator, started from \code{\link{gFileEnumeratorCloseAsync}}.}
\usage{gFileEnumeratorCloseFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileEnumerator}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If the file enumerator was already closed when \code{\link{gFileEnumeratorCloseAsync}} 
was called, then this function will report \code{G_IO_ERROR_CLOSED} in \code{error}, and 
return \code{FALSE}. If the file enumerator had pending operation when the close 
operation was started, then this function will report \code{G_IO_ERROR_PENDING}, and
return \code{FALSE}.  If \code{cancellable} was not \code{NULL}, then the operation may have been 
cancelled by triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be set, and \code{FALSE} will be 
returned.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the close operation has finished successfully.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

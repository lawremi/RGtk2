\alias{gFileTrash}
\name{gFileTrash}
\title{gFileTrash}
\description{Sends \code{file} to the "Trashcan", if possible. This is similar to
deleting it, but the user can recover it before emptying the trashcan.
Not all file systems support trashing, so this call can return the
\code{G_IO_ERROR_NOT_SUPPORTED} error.}
\usage{gFileTrash(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{\code{\link{GFile}} to send to trash.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on successful trash, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

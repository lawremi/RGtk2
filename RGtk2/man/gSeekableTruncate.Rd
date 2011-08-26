\alias{gSeekableTruncate}
\name{gSeekableTruncate}
\title{gSeekableTruncate}
\description{Truncates a stream with a given \verb{offset}. }
\usage{gSeekableTruncate(object, offset, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSeekable}}.}
\item{\verb{offset}}{a \verb{numeric}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. If an
operation was partially finished when the operation was cancelled the
partial result will be returned, without an error.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if successful. If an error
has occurred, this function will return \code{FALSE} and set \code{error}
appropriately if present.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gDataInputStreamReadLine}
\name{gDataInputStreamReadLine}
\title{gDataInputStreamReadLine}
\description{Reads a line from the data input stream.}
\usage{gDataInputStreamReadLine(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a given \code{\link{GDataInputStream}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[char] a string with the line that was read in (without the newlines).
Set \code{length} to a \verb{numeric} to get the length of the read line.
On an error, it will return \code{NULL} and \code{error} will be set. If there's no
content to read, it will still return \code{NULL}, but \code{error} won't be set.}
\item{\verb{length}}{a \verb{numeric} to get the length of the data read in.}
\item{\verb{error}}{\code{\link{GError}} for error reporting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

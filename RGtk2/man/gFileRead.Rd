\alias{gFileRead}
\name{gFileRead}
\title{gFileRead}
\description{Opens a file for reading. The result is a \code{\link{GFileInputStream}} that
can be used to read the contents of the file.}
\usage{gFileRead(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{\code{\link{GFile}} to read.}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. 
  
If the file does not exist, the G_IO_ERROR_NOT_FOUND error will be returned.
If the file is a directory, the G_IO_ERROR_IS_DIRECTORY error will be returned.
Other errors are possible too, and depend on what kind of filesystem the file is on.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileInputStream}}] \code{\link{GFileInputStream}} or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

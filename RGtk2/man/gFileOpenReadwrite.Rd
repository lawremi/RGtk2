\alias{gFileOpenReadwrite}
\name{gFileOpenReadwrite}
\title{gFileOpenReadwrite}
\description{Opens an existing file for reading and writing. The result is
a \code{\link{GFileIOStream}} that can be used to read and write the contents of the file.}
\usage{gFileOpenReadwrite(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{\code{\link{GFile}} to open}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.
  
If the file does not exist, the G_IO_ERROR_NOT_FOUND error will be returned.
If the file is a directory, the G_IO_ERROR_IS_DIRECTORY error will be returned.
Other errors are possible too, and depend on what kind of filesystem the file is on.
Note that in many non-local file cases read and write streams are not supported,
so make sure you really need to do read and write streaming, rather than
just opening for reading or writing.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileIOStream}}] \code{\link{GFileIOStream}} or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

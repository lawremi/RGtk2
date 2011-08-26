\alias{gFileCreateReadwrite}
\name{gFileCreateReadwrite}
\title{gFileCreateReadwrite}
\description{Creates a new file and returns a stream for reading and writing to it.
The file must not already exist.}
\usage{gFileCreateReadwrite(object, flags, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFile}}}
\item{\verb{flags}}{a set of \code{\link{GFileCreateFlags}}}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{By default files created are generally readable by everyone,
but if you pass \verb{G_FILE_CREATE_PRIVATE} in \code{flags} the file
will be made readable only to the current user, to the level that
is supported on the target filesystem.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.
  
If a file or directory with this name already exists the \code{G_IO_ERROR_EXISTS}
error will be returned. Some file systems don't allow all file names,
and may return an \code{G_IO_ERROR_INVALID_FILENAME} error, and if the name
is too long, \code{G_IO_ERROR_FILENAME_TOO_LONG} will be returned. Other errors
are possible too, and depend on what kind of filesystem the file is on.
  
Note that in many non-local file cases read and write streams are not
supported, so make sure you really need to do read and write streaming,
rather than just opening for reading or writing.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileIOStream}}] a \code{\link{GFileIOStream}} for the newly created file, or \code{NULL} on error.}
\item{\verb{error}}{return location for a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

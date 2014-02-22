\alias{gFileCreate}
\name{gFileCreate}
\title{gFileCreate}
\description{Creates a new file and returns an output stream for writing to it.
The file must not already exist.}
\usage{gFileCreate(object, flags = "G_FILE_CREATE_NONE", cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{flags}}{a set of \code{\link{GFileCreateFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{By default files created are generally readable by everyone,
but if you pass \verb{G_FILE_CREATE_PRIVATE} in \code{flags} the file
will be made readable only to the current user, to the level that
is supported on the target filesystem.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. 
  
If a file or directory with this name already exists the G_IO_ERROR_EXISTS
error will be returned.
Some file systems don't allow all file names, and may
return an G_IO_ERROR_INVALID_FILENAME error, and if the name
is to long G_IO_ERROR_FILENAME_TOO_LONG will be returned.
Other errors are possible too, and depend on what kind of
filesystem the file is on.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileOutputStream}}] a \code{\link{GFileOutputStream}} for the newly created file, or
\code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gFileMakeDirectory}
\name{gFileMakeDirectory}
\title{gFileMakeDirectory}
\description{Creates a directory. Note that this will only create a child directory of
the immediate parent directory of the path or URI given by the \code{\link{GFile}}. To 
recursively create directories, see \code{\link{gFileMakeDirectoryWithParents}}.
This function will fail if the parent directory does not exist, setting 
\code{error} to \code{G_IO_ERROR_NOT_FOUND}. If the file system doesn't support creating
directories, this function will fail, setting \code{error} to 
\code{G_IO_ERROR_NOT_SUPPORTED}.}
\usage{gFileMakeDirectory(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{For a local \code{\link{GFile}} the newly created directory will have the default
(current) ownership and permissions of the current process.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on successful creation, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

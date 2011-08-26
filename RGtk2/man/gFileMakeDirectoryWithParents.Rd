\alias{gFileMakeDirectoryWithParents}
\name{gFileMakeDirectoryWithParents}
\title{gFileMakeDirectoryWithParents}
\description{Creates a directory and any parent directories that may not exist similar to
'mkdir -p'. If the file system does not support creating directories, this
function will fail, setting \code{error} to \code{G_IO_ERROR_NOT_SUPPORTED}.}
\usage{gFileMakeDirectoryWithParents(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{For a local \code{\link{GFile}} the newly created directories will have the default
(current) ownership and permissions of the current process.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.
  Since 2.18}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if all directories have been successfully created, \code{FALSE}
otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

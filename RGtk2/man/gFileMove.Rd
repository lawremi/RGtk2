\alias{gFileMove}
\name{gFileMove}
\title{gFileMove}
\description{Tries to move the file or directory \code{source} to the location specified by \code{destination}.
If native move operations are supported then this is used, otherwise a copy + delete
fallback is used. The native implementation may support moving directories (for instance
on moves inside the same filesystem), but the fallback code does not.}
\usage{gFileMove(object, destination, flags = "G_FILE_COPY_NONE", cancellable = NULL, 
    progress.callback, progress.callback.data, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{\code{\link{GFile}} pointing to the source location.}
\item{\verb{destination}}{\code{\link{GFile}} pointing to the destination location.}
\item{\verb{flags}}{set of \code{\link{GFileCopyFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{progress.callback}}{\code{\link{GFileProgressCallback}} function for updates.}
\item{\verb{progress.callback.data}}{gpointer to user data for the callback function.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If the flag \verb{G_FILE_COPY_OVERWRITE} is specified an already
existing \code{destination} file is overwritten.
  
If the flag \verb{G_FILE_COPY_NOFOLLOW_SYMLINKS} is specified then symlinks
will be copied as symlinks, otherwise the target of the
\code{source} symlink will be copied.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. 
  
If \code{progress.callback} is not \code{NULL}, then the operation can be monitored by
setting this to a \code{\link{GFileProgressCallback}} function. \code{progress.callback.data}
will be passed to this function. It is guaranteed that this callback will
be called after all data has been transferred with the total number of bytes
copied during the operation.
  
If the \code{source} file does not exist then the G_IO_ERROR_NOT_FOUND
error is returned, independent on the status of the \code{destination}.
  
If \verb{G_FILE_COPY_OVERWRITE} is not specified and the target exists, then the
error G_IO_ERROR_EXISTS is returned.
  
If trying to overwrite a file over a directory the G_IO_ERROR_IS_DIRECTORY
error is returned. If trying to overwrite a directory with a directory the
G_IO_ERROR_WOULD_MERGE error is returned.
  
If the source is a directory and the target does not exist, or \verb{G_FILE_COPY_OVERWRITE} is
specified and the target is a file, then the G_IO_ERROR_WOULD_RECURSE error
may be returned (if the native move operation isn't available).}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on successful move, \code{FALSE} otherwise.}
\item{\verb{error}}{\code{\link{GError}} for returning error conditions, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

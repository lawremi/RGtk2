\alias{gFileCopy}
\name{gFileCopy}
\title{gFileCopy}
\description{Copies the file \code{source} to the location specified by \code{destination}.
Can not handle recursive copies of directories.}
\usage{gFileCopy(object, destination, flags = "G_FILE_COPY_NONE", cancellable = NULL, 
    progress.callback, progress.callback.data, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{destination}}{destination \code{\link{GFile}}}
\item{\verb{flags}}{set of \code{\link{GFileCopyFlags}}}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{progress.callback}}{function to callback with progress information}
\item{\verb{progress.callback.data}}{user data to pass to \code{progress.callback}}
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
is returned.
  
If you are interested in copying the \code{\link{GFile}} object itself (not the on-disk
file), see \code{\link{gFileDup}}.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} otherwise.}
\item{\verb{error}}{\code{\link{GError}} to set on error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

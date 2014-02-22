\alias{gFileReplace}
\name{gFileReplace}
\title{gFileReplace}
\description{Returns an output stream for overwriting the file, possibly
creating a backup copy of the file first. If the file doesn't exist,
it will be created.}
\usage{gFileReplace(object, etag, make.backup, flags = "G_FILE_CREATE_NONE", 
    cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{etag}}{an optional entity tag for the
current \code{\link{GFile}}, or \verb{NULL} to ignore.}
\item{\verb{make.backup}}{\code{TRUE} if a backup should be created.}
\item{\verb{flags}}{a set of \code{\link{GFileCreateFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This will try to replace the file in the safest way possible so
that any errors during the writing will not affect an already
existing copy of the file. For instance, for local files it
may write to a temporary file and then atomically rename over
the destination when the stream is closed.
  
By default files created are generally readable by everyone,
but if you pass \verb{G_FILE_CREATE_PRIVATE} in \code{flags} the file
will be made readable only to the current user, to the level that
is supported on the target filesystem.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. 
  
If you pass in a non-\verb{NULL} \code{etag} value, then this value is
compared to the current entity tag of the file, and if they differ
an G_IO_ERROR_WRONG_ETAG error is returned. This generally means
that the file has been changed since you last read it. You can get
the new etag from \code{\link{gFileOutputStreamGetEtag}} after you've
finished writing and closed the \code{\link{GFileOutputStream}}. When you load
a new file you can use \code{\link{gFileInputStreamQueryInfo}} to get
the etag of the file.
  
If \code{make.backup} is \code{TRUE}, this function will attempt to make a backup
of the current file before overwriting it. If this fails a G_IO_ERROR_CANT_CREATE_BACKUP
error will be returned. If you want to replace anyway, try again with
\code{make.backup} set to \code{FALSE}.
  
If the file is a directory the G_IO_ERROR_IS_DIRECTORY error will be returned,
and if the file is some other form of non-regular file then a
G_IO_ERROR_NOT_REGULAR_FILE error will be returned.
Some file systems don't allow all file names, and may
return an G_IO_ERROR_INVALID_FILENAME error, and if the name
is to long G_IO_ERROR_FILENAME_TOO_LONG will be returned.
Other errors are possible too, and depend on what kind of
filesystem the file is on.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileOutputStream}}] a \code{\link{GFileOutputStream}} or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

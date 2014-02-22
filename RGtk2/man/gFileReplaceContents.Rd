\alias{gFileReplaceContents}
\name{gFileReplaceContents}
\title{gFileReplaceContents}
\description{Replaces the contents of \code{file} with \code{contents} of \code{length} bytes.
 
If \code{etag} is specified (not \code{NULL}) any existing file must have that etag, or
the error \code{G_IO_ERROR_WRONG_ETAG} will be returned.}
\usage{gFileReplaceContents(object, contents, length, etag, make.backup, 
    flags = "G_FILE_CREATE_NONE", cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{contents}}{a string containing the new contents for \code{file}.}
\item{\verb{length}}{the length of \code{contents} in bytes.}
\item{\verb{etag}}{the old entity tag
for the document, or \code{NULL}}
\item{\verb{make.backup}}{\code{TRUE} if a backup should be created.}
\item{\verb{flags}}{a set of \code{\link{GFileCreateFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{make.backup} is \code{TRUE}, this function will attempt to make a backup of \code{file}.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. 
  
The returned \code{new.etag} can be used to verify that the file hasn't changed the
next time it is saved over.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if successful. If an error
has occurred, this function will return \code{FALSE} and set \code{error}
appropriately if present.}
\item{\verb{new.etag}}{a location to a new entity tag
for the document. This should be freed with \code{gFree()} when no longer
needed, or \code{NULL}}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gFileReplaceContentsAsync}
\name{gFileReplaceContentsAsync}
\title{gFileReplaceContentsAsync}
\description{Starts an asynchronous replacement of \code{file} with the given 
\code{contents} of \code{length} bytes. \code{etag} will replace the document's 
current entity tag.}
\usage{gFileReplaceContentsAsync(object, contents, length, etag, make.backup, 
    flags = "G_FILE_CREATE_NONE", cancellable = NULL, callback, 
    user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{contents}}{string of contents to replace the file with.}
\item{\verb{length}}{the length of \code{contents} in bytes.}
\item{\verb{etag}}{a new entity tag for the \code{file}, or \code{NULL}}
\item{\verb{make.backup}}{\code{TRUE} if a backup should be created.}
\item{\verb{flags}}{a set of \code{\link{GFileCreateFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{When this operation has completed, \code{callback} will be called with
\code{user.user} data, and the operation can be finalized with 
\code{\link{gFileReplaceContentsFinish}}.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. 
  
If \code{make.backup} is \code{TRUE}, this function will attempt to 
make a backup of \code{file}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

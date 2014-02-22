\alias{gFileReplaceAsync}
\name{gFileReplaceAsync}
\title{gFileReplaceAsync}
\description{Asynchronously overwrites the file, replacing the contents, possibly
creating a backup copy of the file first.}
\usage{gFileReplaceAsync(object, etag, make.backup, flags = "G_FILE_CREATE_NONE", 
    io.priority = 0, cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{etag}}{an entity tag for the
current \code{\link{GFile}}, or NULL to ignore.}
\item{\verb{make.backup}}{\code{TRUE} if a backup should be created.}
\item{\verb{flags}}{a set of \code{\link{GFileCreateFlags}}.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For more details, see \code{\link{gFileReplace}} which is
the synchronous version of this call.
  
When the operation is finished, \code{callback} will be called. You can then call
\code{\link{gFileReplaceFinish}} to get the result of the operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

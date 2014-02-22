\alias{gFileReplaceReadwriteAsync}
\name{gFileReplaceReadwriteAsync}
\title{gFileReplaceReadwriteAsync}
\description{Asynchronously overwrites the file in read-write mode, replacing the
contents, possibly creating a backup copy of the file first.}
\usage{gFileReplaceReadwriteAsync(object, etag, make.backup, flags, 
    io.priority, cancellable = NULL, callback, user.data = NULL)}
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
\details{For more details, see \code{\link{gFileReplaceReadwrite}} which is
the synchronous version of this call.
  
When the operation is finished, \code{callback} will be called. You can then
call \code{\link{gFileReplaceReadwriteFinish}} to get the result of the operation.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

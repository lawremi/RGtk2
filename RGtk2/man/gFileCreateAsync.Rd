\alias{gFileCreateAsync}
\name{gFileCreateAsync}
\title{gFileCreateAsync}
\description{Asynchronously creates a new file and returns an output stream for writing to it.
The file must not already exist.}
\usage{gFileCreateAsync(object, flags = "G_FILE_CREATE_NONE", io.priority = 0, 
    cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{flags}}{a set of \code{\link{GFileCreateFlags}}.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For more details, see \code{\link{gFileCreate}} which is
the synchronous version of this call.
  
When the operation is finished, \code{callback} will be called. You can then call
\code{\link{gFileCreateFinish}} to get the result of the operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

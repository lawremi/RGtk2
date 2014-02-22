\alias{gFileCopyAsync}
\name{gFileCopyAsync}
\title{gFileCopyAsync}
\description{Copies the file \code{source} to the location specified by \code{destination} 
asynchronously. For details of the behaviour, see \code{\link{gFileCopy}}.}
\usage{gFileCopyAsync(object, destination, flags = "G_FILE_COPY_NONE", 
    io.priority = 0, cancellable = NULL, progress.callback, progress.callback.data, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{destination}}{destination \code{\link{GFile}}}
\item{\verb{flags}}{set of \code{\link{GFileCopyFlags}}}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{progress.callback}}{function to callback with progress information}
\item{\verb{progress.callback.data}}{user data to pass to \code{progress.callback}}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{If \code{progress.callback} is not \code{NULL}, then that function that will be called
just like in \code{\link{gFileCopy}}, however the callback will run in the main loop,
not in the thread that is doing the I/O operation.
  
When the operation is finished, \code{callback} will be called. You can then call
\code{\link{gFileCopyFinish}} to get the result of the operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

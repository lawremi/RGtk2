\alias{gFileEnumerateChildrenAsync}
\name{gFileEnumerateChildrenAsync}
\title{gFileEnumerateChildrenAsync}
\description{Asynchronously gets the requested information about the files in a directory. The result
is a \code{\link{GFileEnumerator}} object that will give out \code{\link{GFileInfo}} objects for
all the files in the directory.}
\usage{gFileEnumerateChildrenAsync(object, attributes, flags = "G_FILE_QUERY_INFO_NONE", 
    io.priority = 0, cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{attributes}}{an attribute query string.}
\item{\verb{flags}}{a set of \code{\link{GFileQueryInfoFlags}}.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For more details, see \code{\link{gFileEnumerateChildren}} which is
the synchronous version of this call.
  
When the operation is finished, \code{callback} will be called. You can then call
\code{\link{gFileEnumerateChildrenFinish}} to get the result of the operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gFileSetAttributesAsync}
\name{gFileSetAttributesAsync}
\title{gFileSetAttributesAsync}
\description{Asynchronously sets the attributes of \code{file} with \code{info}.}
\usage{gFileSetAttributesAsync(object, info, flags = "G_FILE_QUERY_INFO_NONE", 
    io.priority = 0, cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{info}}{a \code{\link{GFileInfo}}.}
\item{\verb{flags}}{a \code{\link{GFileQueryInfoFlags}}.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}.}
\item{\verb{user.data}}{a \verb{R object}.}
}
\details{For more details, see \code{\link{gFileSetAttributesFromInfo}} which is
the synchronous version of this call.
  
When the operation is finished, \code{callback} will be called. You can then call
\code{\link{gFileSetAttributesFinish}} to get the result of the operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

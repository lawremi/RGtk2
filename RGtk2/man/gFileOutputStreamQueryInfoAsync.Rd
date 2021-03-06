\alias{gFileOutputStreamQueryInfoAsync}
\name{gFileOutputStreamQueryInfoAsync}
\title{gFileOutputStreamQueryInfoAsync}
\description{Asynchronously queries the \code{stream} for a \code{\link{GFileInfo}}. When completed,
\code{callback} will be called with a \code{\link{GAsyncResult}} which can be used to 
finish the operation with \code{\link{gFileOutputStreamQueryInfoFinish}}.}
\usage{gFileOutputStreamQueryInfoAsync(object, attributes, io.priority = 0, 
    cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileOutputStream}}.}
\item{\verb{attributes}}{a file attribute query string.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{callback to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For the synchronous version of this function, see 
\code{\link{gFileOutputStreamQueryInfo}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gFileInputStreamQueryInfo}
\name{gFileInputStreamQueryInfo}
\title{gFileInputStreamQueryInfo}
\description{Queries a file input stream the given \code{attributes}. This function blocks 
while querying the stream. For the asynchronous (non-blocking) version 
of this function, see \code{\link{gFileInputStreamQueryInfoAsync}}. While the 
stream is blocked, the stream will set the pending flag internally, and 
any other operations on the stream will fail with \code{G_IO_ERROR_PENDING}.}
\usage{gFileInputStreamQueryInfo(object, attributes, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInputStream}}.}
\item{\verb{attributes}}{a file attribute query string.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileInfo}}] a \code{\link{GFileInfo}}, or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

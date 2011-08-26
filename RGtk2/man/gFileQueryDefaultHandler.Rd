\alias{gFileQueryDefaultHandler}
\name{gFileQueryDefaultHandler}
\title{gFileQueryDefaultHandler}
\description{Returns the \code{\link{GAppInfo}} that is registered as the default
application to handle the file specified by \code{file}.}
\usage{gFileQueryDefaultHandler(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFile}} to open.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GAppInfo}}] a \code{\link{GAppInfo}} if the handle was found, \code{NULL} if there were errors.
When you are done with it,}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

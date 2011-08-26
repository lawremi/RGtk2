\alias{gFileFindEnclosingMount}
\name{gFileFindEnclosingMount}
\title{gFileFindEnclosingMount}
\description{Gets a \code{\link{GMount}} for the \code{\link{GFile}}. }
\usage{gFileFindEnclosingMount(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If the \verb{GFileIface} for \code{file} does not have a mount (e.g. possibly a 
remote share), \code{error} will be set to \code{G_IO_ERROR_NOT_FOUND} and \code{NULL}
will be returned.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GMount}}] a \code{\link{GMount}} where the \code{file} is located or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

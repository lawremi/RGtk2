\alias{gFileMakeSymbolicLink}
\name{gFileMakeSymbolicLink}
\title{gFileMakeSymbolicLink}
\description{Creates a symbolic link.}
\usage{gFileMakeSymbolicLink(object, symlink.value, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{symlink.value}}{a string with the value of the new symlink.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on the creation of a new symlink, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

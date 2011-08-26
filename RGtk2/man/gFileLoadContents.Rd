\alias{gFileLoadContents}
\name{gFileLoadContents}
\title{gFileLoadContents}
\description{Loads the content of the file into memory. The data is always 
zero-terminated, but this is not included in the resultant \code{length}.}
\usage{gFileLoadContents(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the \code{file}'s contents were successfully loaded.
\code{FALSE} if there were errors.}
\item{\verb{contents}}{a location to place the contents of the file.}
\item{\verb{length}}{a location to place the length of the contents of the file,
or \code{NULL} if the length is not needed}
\item{\verb{etag.out}}{a location to place the current entity tag for the file,
or \code{NULL} if the entity tag is not needed}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

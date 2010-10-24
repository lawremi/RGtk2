\alias{gFileQueryExists}
\name{gFileQueryExists}
\title{gFileQueryExists}
\description{Utility function to check if a particular file exists. This is
implemented using \code{\link{gFileQueryInfo}} and as such does blocking I/O.}
\usage{gFileQueryExists(object, cancellable = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
}
\details{Note that in many cases it is racy to first check for file existence
and then execute something based on the outcome of that, because the
file might have been created or removed in between the operations. The
general approach to handling that is to not check, but just do the
operation and handle the errors as they come.
  
As an example of race-free checking, take the case of reading a file, and
if it doesn't exist, creating it. There are two racy versions: read it, and
on error create it; and: check if it exists, if not create it. These
can both result in two processes creating the file (with perhaps a partially
written file as the result). The correct approach is to always try to create
the file with \code{\link{gFileCreate}} which will either atomically create the file
or fail with a G_IO_ERROR_EXISTS error.
  
However, in many cases an existence check is useful in a user
interface, for instance to make a menu item sensitive/insensitive, so that
you don't have to fool users that something is possible and then just show
and error dialog. If you do this, you should make sure to also handle the
errors that can happen due to races when you execute the operation.}
\value{[logical] \code{TRUE} if the file exists (and can be detected without error), \code{FALSE} otherwise (or if cancelled).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

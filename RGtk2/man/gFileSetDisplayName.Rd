\alias{gFileSetDisplayName}
\name{gFileSetDisplayName}
\title{gFileSetDisplayName}
\description{Renames \code{file} to the specified display name.}
\usage{gFileSetDisplayName(object, display.name, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{display.name}}{a string.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{The display name is converted from UTF8 to the correct encoding for the target
filesystem if possible and the \code{file} is renamed to this.
  
If you want to implement a rename operation in the user interface the edit name
(\verb{G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME}) should be used as the initial value in the rename
widget, and then the result after editing should be passed to \code{\link{gFileSetDisplayName}}.
  
On success the resulting converted filename is returned.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFile}}] a \code{\link{GFile}} specifying what \code{file} was renamed to, or \code{NULL}
if there was an error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

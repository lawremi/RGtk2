\alias{gFileQuerySettableAttributes}
\name{gFileQuerySettableAttributes}
\title{gFileQuerySettableAttributes}
\description{Obtain the list of settable attributes for the file.}
\usage{gFileQuerySettableAttributes(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Returns the type and full attribute name of all the attributes 
that can be set on this file. This doesn't mean setting it will always 
succeed though, you might get an access failure, or some specific 
file may not support a specific attribute.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileAttributeInfoList}}] a \code{\link{GFileAttributeInfoList}} describing the settable attributes.
When you are done with it,}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

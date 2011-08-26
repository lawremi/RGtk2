\alias{gFileQueryWritableNamespaces}
\name{gFileQueryWritableNamespaces}
\title{gFileQueryWritableNamespaces}
\description{Obtain the list of attribute namespaces where new attributes 
can be created by a user. An example of this is extended
attributes (in the "xattr" namespace).}
\usage{gFileQueryWritableNamespaces(object, cancellable = NULL, .errwarn = TRUE)}
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
\item{retval}{[\code{\link{GFileAttributeInfoList}}] a \code{\link{GFileAttributeInfoList}} describing the writable namespaces.
When you are done with it,}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

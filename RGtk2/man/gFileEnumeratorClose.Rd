\alias{gFileEnumeratorClose}
\name{gFileEnumeratorClose}
\title{gFileEnumeratorClose}
\description{Releases all resources used by this enumerator, making the
enumerator return \code{G_IO_ERROR_CLOSED} on all calls.}
\usage{gFileEnumeratorClose(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileEnumerator}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This will be automatically called when the last reference
is dropped, but you might want to call this function to make 
sure resources are released as early as possible.}
\value{
A list containing the following elements:
\item{retval}{[logical] \verb{TRUE} on success or \verb{FALSE} on error.}
\item{\verb{error}}{location to store the error occuring, or \code{NULL} to ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

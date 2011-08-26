\alias{gFileEnumeratorNextFile}
\name{gFileEnumeratorNextFile}
\title{gFileEnumeratorNextFile}
\description{Returns information for the next file in the enumerated object.
Will block until the information is available. The \code{\link{GFileInfo}} 
returned from this function will contain attributes that match the 
attribute string that was passed when the \code{\link{GFileEnumerator}} was created.}
\usage{gFileEnumeratorNextFile(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileEnumerator}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{On error, returns \code{NULL} and sets \code{error} to the error. If the
enumerator is at the end, \code{NULL} will be returned and \code{error} will
be unset.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileInfo}}] A \code{\link{GFileInfo}} or \code{NULL} on error or end of enumerator.}
\item{\verb{error}}{location to store the error occuring, or \code{NULL} to ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

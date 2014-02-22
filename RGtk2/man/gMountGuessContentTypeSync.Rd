\alias{gMountGuessContentTypeSync}
\name{gMountGuessContentTypeSync}
\title{gMountGuessContentTypeSync}
\description{Tries to guess the type of content stored on \code{mount}. Returns one or
more textual identifiers of well-known content types (typically
prefixed with "x-content/"), e.g. x-content/image-dcf for camera 
memory cards. See the shared-mime-info (\url{http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec})
specification for more on x-content types.}
\usage{gMountGuessContentTypeSync(object, force.rescan, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GMount}}}
\item{\verb{force.rescan}}{Whether to force a rescan of the content.
Otherwise a cached result will be used if available}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This is an synchronous operation and as such may block doing IO;
see \code{\link{gMountGuessContentType}} for the asynchronous version.
  Since 2.18}
\value{
A list containing the following elements:
\item{retval}{[character] a list of content types or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

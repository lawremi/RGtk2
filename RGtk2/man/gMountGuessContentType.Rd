\alias{gMountGuessContentType}
\name{gMountGuessContentType}
\title{gMountGuessContentType}
\description{Tries to guess the type of content stored on \code{mount}. Returns one or
more textual identifiers of well-known content types (typically
prefixed with "x-content/"), e.g. x-content/image-dcf for camera 
memory cards. See the shared-mime-info (\url{http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec})
specification for more on x-content types.}
\usage{gMountGuessContentType(object, force.rescan, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GMount}}}
\item{\verb{force.rescan}}{Whether to force a rescan of the content.
Otherwise a cached result will be used if available}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}}
\item{\verb{user.data}}{user data passed to \code{callback}}
}
\details{This is an asynchronous operation (see
\code{\link{gMountGuessContentTypeSync}} for the synchronous version), and
is finished by calling \code{\link{gMountGuessContentTypeFinish}} with the
\code{mount} and \code{\link{GAsyncResult}} data returned in the \code{callback}.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

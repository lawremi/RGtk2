\alias{gCancellableReleaseFd}
\name{gCancellableReleaseFd}
\title{gCancellableReleaseFd}
\description{Releases a resources previously allocated by \code{\link{gCancellableGetFd}}
or \code{gCancellableMakePollfd()}.}
\usage{gCancellableReleaseFd(object)}
\arguments{\item{\verb{object}}{a \code{\link{GCancellable}}}}
\details{For compatibility reasons with older releases, calling this function 
is not strictly required, the resources will be automatically freed
when the \code{cancellable} is finalized. However, the \code{cancellable} will
block scarce file descriptors until it is finalized if this function
is not called. This can cause the application to run out of file 
descriptors when many \verb{GCancellables} are used at the same time.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

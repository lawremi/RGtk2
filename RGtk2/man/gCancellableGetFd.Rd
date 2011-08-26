\alias{gCancellableGetFd}
\name{gCancellableGetFd}
\title{gCancellableGetFd}
\description{Gets the file descriptor for a cancellable job. This can be used to
implement cancellable operations on Unix systems. The returned fd will
turn readable when \code{cancellable} is cancelled.}
\usage{gCancellableGetFd(object)}
\arguments{\item{\verb{object}}{a \code{\link{GCancellable}}.}}
\details{You are not supposed to read from the fd yourself, just check for
readable status. Reading to unset the readable status is done
with \code{\link{gCancellableReset}}.
  
After a successful return from this function, you should use 
\code{\link{gCancellableReleaseFd}} to free up resources allocated for 
the returned file descriptor.
  
See also \code{gCancellableMakePollfd()}.}
\value{[integer] A valid file descriptor. \code{-1} if the file descriptor
is not supported, or on errors.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gCancellablePushCurrent}
\name{gCancellablePushCurrent}
\title{gCancellablePushCurrent}
\description{Pushes \code{cancellable} onto the cancellable stack. The current
cancllable can then be recieved using \code{\link{gCancellableGetCurrent}}.}
\usage{gCancellablePushCurrent(object)}
\arguments{\item{\verb{object}}{a \code{\link{GCancellable}} object}}
\details{This is useful when implementing cancellable operations in
code that does not allow you to pass down the cancellable object.
  
This is typically called automatically by e.g. \code{\link{GFile}} operations,
so you rarely have to call this yourself.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

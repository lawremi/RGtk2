\alias{gCancellableSetErrorIfCancelled}
\name{gCancellableSetErrorIfCancelled}
\title{gCancellableSetErrorIfCancelled}
\description{If the \code{cancellable} is cancelled, sets the error to notify
that the operation was cancelled.}
\usage{gCancellableSetErrorIfCancelled(object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GCancellable}} object.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{cancellable} was cancelled, \code{FALSE} if it was not.}
\item{\verb{error}}{\code{\link{GError}} to append error state to.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

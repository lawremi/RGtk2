\alias{gSimpleAsyncResultPropagateError}
\name{gSimpleAsyncResultPropagateError}
\title{gSimpleAsyncResultPropagateError}
\description{Propagates an error from within the simple asynchronous result to
a given destination.}
\usage{gSimpleAsyncResultPropagateError(object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSimpleAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the error was propegated to \code{dest}. \code{FALSE} otherwise.}
\item{\verb{dest}}{a location to propegate the error to.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

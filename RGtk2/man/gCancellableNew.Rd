\alias{gCancellableNew}
\name{gCancellableNew}
\title{gCancellableNew}
\description{Creates a new \code{\link{GCancellable}} object.}
\usage{gCancellableNew()}
\details{Applications that want to start one or more operations
that should be cancellable should create a \code{\link{GCancellable}}
and pass it to the operations.
  
One \code{\link{GCancellable}} can be used in multiple consecutive
operations, but not in multiple concurrent operations.}
\value{[\code{\link{GCancellable}}] a \code{\link{GCancellable}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

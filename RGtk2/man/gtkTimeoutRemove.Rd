\alias{gtkTimeoutRemove}
\name{gtkTimeoutRemove}
\title{gtkTimeoutRemove}
\description{
Removes the given timeout destroying all information about it.
\strong{WARNING: \code{gtk_timeout_remove} is deprecated and should not be used in newly-written code. Use \code{\link{gSourceRemove}} instead.}
}
\usage{gtkTimeoutRemove(timeout.handler.id)}
\arguments{\item{\code{timeout.handler.id}}{[numeric] The identifier returned when installing the timeout.}}

\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

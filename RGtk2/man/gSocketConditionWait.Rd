\alias{gSocketConditionWait}
\name{gSocketConditionWait}
\title{gSocketConditionWait}
\description{Waits for \code{condition} to become true on \code{socket}. When the condition
is met, \code{TRUE} is returned.}
\usage{gSocketConditionWait(object, condition, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{\verb{condition}}{a \code{\link{GIOCondition}} mask to wait for}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is cancelled before the condition is met then \code{FALSE}
is returned and \code{error}, if non-\code{NULL}, is set to \code{G_IO_ERROR_CANCELLED}.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the condition was met, \code{FALSE} otherwise}
\item{\verb{error}}{a \code{\link{GError}} pointer, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gSocketListenerAcceptFinish}
\name{gSocketListenerAcceptFinish}
\title{gSocketListenerAcceptFinish}
\description{Finishes an async accept operation. See \code{\link{gSocketListenerAcceptAsync}}}
\usage{gSocketListenerAcceptFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketListener}}}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocketConnection}}] a \code{\link{GSocketConnection}} on success, \code{NULL} on error.}
\item{\verb{source.object}}{Optional \code{\link{GObject}} identifying this source}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

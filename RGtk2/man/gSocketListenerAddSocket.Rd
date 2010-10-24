\alias{gSocketListenerAddSocket}
\name{gSocketListenerAddSocket}
\title{gSocketListenerAddSocket}
\description{Adds \code{socket} to the set of sockets that we try to accept
new clients from. The socket must be bound to a local
address and listened to.}
\usage{gSocketListenerAddSocket(object, socket, source.object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketListener}}}
\item{\verb{socket}}{a listening \code{\link{GSocket}}}
\item{\verb{source.object}}{Optional \code{\link{GObject}} identifying this source}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{\code{source.object} will be passed out in the various calls
to accept to identify this particular source, which is
useful if you're listening on multiple addresses and do
different things depending on what address is connected to.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

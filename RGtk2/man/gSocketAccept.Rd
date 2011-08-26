\alias{gSocketAccept}
\name{gSocketAccept}
\title{gSocketAccept}
\description{Accept incoming connections on a connection-based socket. This removes
the first outstanding connection request from the listening socket and
creates a \code{\link{GSocket}} object for it.}
\usage{gSocketAccept(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}.}
\item{\verb{cancellable}}{a \code{\link{GCancellable}} or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{The \code{socket} must be bound to a local address with \code{\link{gSocketBind}} and
must be listening for incoming connections (\code{\link{gSocketListen}}).
  
If there are no outstanding connections then the operation will block
or return \code{G_IO_ERROR_WOULD_BLOCK} if non-blocking I/O is enabled.
To be notified of an incoming connection, wait for the \code{G_IO_IN} condition.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocket}}] a new \code{\link{GSocket}}, or \code{NULL} on error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

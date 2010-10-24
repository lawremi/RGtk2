\alias{gSocketSetBlocking}
\name{gSocketSetBlocking}
\title{gSocketSetBlocking}
\description{Sets the blocking mode of the socket. In blocking mode
all operations block until they succeed or there is an error. In
non-blocking mode all functions return results immediately or
with a \code{G_IO_ERROR_WOULD_BLOCK} error.}
\usage{gSocketSetBlocking(object, blocking)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}.}
\item{\verb{blocking}}{Whether to use blocking I/O or not.}
}
\details{All sockets are created in blocking mode. However, note that the
platform level socket is always non-blocking, and blocking mode
is a GSocket level feature.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

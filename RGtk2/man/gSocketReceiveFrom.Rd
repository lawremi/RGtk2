\alias{gSocketReceiveFrom}
\name{gSocketReceiveFrom}
\title{gSocketReceiveFrom}
\description{Receive data (up to \code{size} bytes) from a socket.}
\usage{gSocketReceiveFrom(object, size, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{\verb{size}}{the number of bytes you want to read from the socket}
\item{\verb{cancellable}}{a \code{\link{GCancellable}} or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{address} is non-\code{NULL} then \code{address} will be set equal to the
source the received packet.
  
See \code{\link{gSocketReceive}} for additional information.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[integer] Number of bytes read, or -1 on error}
\item{\verb{address}}{a pointer to a \code{\link{GSocketAddress}} pointer, or \code{NULL}}
\item{\verb{buffer}}{a buffer to read data into (which should be at least \code{size}
bytes long).}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

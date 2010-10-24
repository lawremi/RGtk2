\alias{gSocketShutdown}
\name{gSocketShutdown}
\title{gSocketShutdown}
\description{Shut down part of a full-duplex connection.}
\usage{gSocketShutdown(object, shutdown.read, shutdown.write, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{\verb{shutdown.read}}{whether to shut down the read side}
\item{\verb{shutdown.write}}{whether to shut down the write side}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{shutdown.read} is \code{TRUE} then the recieving side of the connection
is shut down, and further reading is disallowed.
  
If \code{shutdown.write} is \code{TRUE} then the sending side of the connection
is shut down, and further writing is disallowed.
  
It is allowed for both \code{shutdown.read} and \code{shutdown.write} to be \code{TRUE}.
  
One example where this is used is graceful disconnect for TCP connections
where you close the sending side, then wait for the other side to close
the connection, thus ensuring that the other side saw all sent data.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gSocketSendTo}
\name{gSocketSendTo}
\title{gSocketSendTo}
\description{Tries to send \code{size} bytes from \code{buffer} to \code{address}. If \code{address} is
\code{NULL} then the message is sent to the default receiver (set by
\code{\link{gSocketConnect}}).}
\usage{gSocketSendTo(object, address, buffer, size, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{\verb{address}}{a \code{\link{GSocketAddress}}, or \code{NULL}}
\item{\verb{buffer}}{the buffer containing the data to send.}
\item{\verb{size}}{the number of bytes to send}
\item{\verb{cancellable}}{a \code{\link{GCancellable}} or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{See \code{\link{gSocketSend}} for additional information.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[integer] Number of bytes written (which may be less than \code{size}), or -1
on error}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gSocketListenerAddInetPort}
\name{gSocketListenerAddInetPort}
\title{gSocketListenerAddInetPort}
\description{Helper function for \code{\link{gSocketListenerAddAddress}} that
creates a TCP/IP socket listening on IPv4 and IPv6 (if
supported) on the specified port on all interfaces.}
\usage{gSocketListenerAddInetPort(object, port, source.object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketListener}}}
\item{\verb{port}}{an IP port number (non-zero)}
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

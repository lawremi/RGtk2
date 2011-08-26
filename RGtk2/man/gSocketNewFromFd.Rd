\alias{gSocketNewFromFd}
\name{gSocketNewFromFd}
\title{gSocketNewFromFd}
\description{Creates a new \code{\link{GSocket}} from a native file descriptor
or winsock SOCKET handle.}
\usage{gSocketNewFromFd(fd, .errwarn = TRUE)}
\arguments{
\item{\verb{fd}}{a native socket file descriptor.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This reads all the settings from the file descriptor so that
all properties should work. Note that the file descriptor
will be set to non-blocking mode, independent on the blocking
mode of the \code{\link{GSocket}}.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocket}}] a \code{\link{GSocket}} or \code{NULL} on error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

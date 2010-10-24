\alias{gSocketCheckConnectResult}
\name{gSocketCheckConnectResult}
\title{gSocketCheckConnectResult}
\description{Checks and resets the pending connect error for the socket.
This is used to check for errors when \code{\link{gSocketConnect}} is
used in non-blocking mode.}
\usage{gSocketCheckConnectResult(object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if no error, \code{FALSE} otherwise, setting \code{error} to the error}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

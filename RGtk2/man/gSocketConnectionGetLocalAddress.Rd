\alias{gSocketConnectionGetLocalAddress}
\name{gSocketConnectionGetLocalAddress}
\title{gSocketConnectionGetLocalAddress}
\description{Try to get the local a socket connection.}
\usage{gSocketConnectionGetLocalAddress(object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketConnection}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocketAddress}}] a \code{\link{GSocketAddress}} or \code{NULL} on error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

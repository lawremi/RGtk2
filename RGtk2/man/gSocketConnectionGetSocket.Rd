\alias{gSocketConnectionGetSocket}
\name{gSocketConnectionGetSocket}
\title{gSocketConnectionGetSocket}
\description{Gets the underlying \code{\link{GSocket}} object of the connection.
This can be useful if you want to do something unusual on it
not supported by the \code{\link{GSocketConnection}} APIs.}
\usage{gSocketConnectionGetSocket(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSocketConnection}}}}
\details{Since 2.22}
\value{[\code{\link{GSocket}}] a \code{\link{GSocketAddress}} or \code{NULL} on error.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

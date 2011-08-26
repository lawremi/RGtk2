\alias{gSocketGetListenBacklog}
\name{gSocketGetListenBacklog}
\title{gSocketGetListenBacklog}
\description{Gets the listen backlog setting of the socket. For details on this,
see \code{\link{gSocketSetListenBacklog}}.}
\usage{gSocketGetListenBacklog(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSocket}}.}}
\details{Since 2.22}
\value{[integer] the maximum number of pending connections.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

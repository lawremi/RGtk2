\alias{gSocketSetListenBacklog}
\name{gSocketSetListenBacklog}
\title{gSocketSetListenBacklog}
\description{Sets the maximum number of outstanding connections allowed
when listening on this socket. If more clients than this are
connecting to the socket and the application is not handling them
on time then the new connections will be refused.}
\usage{gSocketSetListenBacklog(object, backlog)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}.}
\item{\verb{backlog}}{the maximum number of pending connections.}
}
\details{Note that this must be called before \code{\link{gSocketListen}} and has no
effect if called after that.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

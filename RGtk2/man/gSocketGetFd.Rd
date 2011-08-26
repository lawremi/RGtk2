\alias{gSocketGetFd}
\name{gSocketGetFd}
\title{gSocketGetFd}
\description{Returns the underlying OS socket object. On unix this
is a socket file descriptor, and on windows this is
a Winsock2 SOCKET handle. This may be useful for
doing platform specific or otherwise unusual operations
on the socket.}
\usage{gSocketGetFd(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSocket}}.}}
\details{Since 2.22}
\value{[integer] the file descriptor of the socket.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

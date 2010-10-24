\alias{gSocketSetKeepalive}
\name{gSocketSetKeepalive}
\title{gSocketSetKeepalive}
\description{Sets or unsets the \code{SO_KEEPALIVE} flag on the underlying socket. When
this flag is set on a socket, the system will attempt to verify that the
remote socket endpoint is still present if a sufficiently long period of
time passes with no data being exchanged. If the system is unable to
verify the presence of the remote endpoint, it will automatically close
the connection.}
\usage{gSocketSetKeepalive(object, keepalive)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}.}
\item{\verb{keepalive}}{Value for the keepalive flag}
}
\details{This option is only functional on certain kinds of sockets. (Notably,
\code{G_SOCKET_PROTOCOL_TCP} sockets.)
  
The exact time between pings is system- and protocol-dependent, but will
normally be at least two hours. Most commonly, you would set this flag
on a server socket if you want to allow clients to remain idle for long
periods of time, but also want to ensure that connections are eventually
garbage-collected if clients crash or become unreachable.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{gTcpConnectionSetGracefulDisconnect}
\name{gTcpConnectionSetGracefulDisconnect}
\title{gTcpConnectionSetGracefulDisconnect}
\description{This enabled graceful disconnects on close. A graceful disconnect
means that we signal the recieving end that the connection is terminated
and wait for it to close the connection before closing the connection.}
\usage{gTcpConnectionSetGracefulDisconnect(object, graceful.disconnect)}
\arguments{
\item{\verb{object}}{a \code{\link{GTcpConnection}}}
\item{\verb{graceful.disconnect}}{Whether to do graceful disconnects or not}
}
\details{A graceful disconnect means that we can be sure that we successfully sent
all the outstanding data to the other end, or get an error reported.
However, it also means we have to wait for all the data to reach the
other side and for it to acknowledge this by closing the socket, which may
take a while. For this reason it is disabled by default.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

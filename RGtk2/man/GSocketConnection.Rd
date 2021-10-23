\alias{GSocketConnection}
\alias{GTcpConnection}
\name{GSocketConnection}
\title{GSocketConnection}
\description{A socket connection}
\section{Methods and Functions}{
\code{\link{gSocketConnectionGetLocalAddress}(object, .errwarn = TRUE)}\cr
\code{\link{gSocketConnectionGetRemoteAddress}(object, .errwarn = TRUE)}\cr
\code{\link{gSocketConnectionGetSocket}(object)}\cr
\code{\link{gTcpConnectionSetGracefulDisconnect}(object, graceful.disconnect)}\cr
\code{\link{gTcpConnectionGetGracefulDisconnect}(object)}\cr
\code{\link{gSocketConnectionFactoryCreateConnection}(object)}\cr
\code{\link{gSocketConnectionFactoryLookupType}(family, type, protocol.id)}\cr
\code{\link{gSocketConnectionFactoryRegisterType}(g.type, family, type, protocol)}\cr

}
\section{Hierarchy}{\preformatted{
GObject
   +----GIOStream
         +----GSocketConnection
               +----GTcpConnection
               +----GUnixConnection
GObject
   +----GIOStream
         +----GSocketConnection
               +----GTcpConnection
GObject
   +----GIOStream
         +----GSocketConnection
               +----GUnixConnection
}}
\section{Detailed Description}{\code{\link{GSocketConnection}} is a \code{\link{GIOStream}} for a connected socket. They
can be created either by \code{\link{GSocketClient}} when connecting to a host,
or by \code{\link{GSocketListener}} when accepting a new client.
  
The type of the \code{\link{GSocketConnection}} object returned from these calls
depends on the type of the underlying socket that is in use. For
instance, for a TCP/IP connection it will be a \code{\link{GTcpConnection}}.
  
Chosing what type of object to construct is done with the socket
connection factory, and it is possible for 3rd parties to register
custom socket connection types for specific combination of socket
family/type/protocol using \code{\link{gSocketConnectionFactoryRegisterType}}.}
\section{Structures}{\describe{
\item{\verb{GSocketConnection}}{
A socket connection GIOStream object for connection-oriented sockets.
  Since 2.22

}
\item{\verb{GTcpConnection}}{
A \code{\link{GSocketConnection}} for UNIX domain socket connections.
  Since 2.22

}
}}
\section{Properties}{\describe{
\item{\verb{socket} [\code{\link{GSocket}} : *              : Read / Write / Construct Only]}{

The underlying GSocket.

}
\item{\verb{graceful-disconnect} [logical : Read / Write]}{

Whether or not close does a graceful disconnect.  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSocketConnection.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

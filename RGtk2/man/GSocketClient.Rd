\alias{GSocketClient}
\alias{gSocketClient}
\name{GSocketClient}
\title{GSocketClient}
\description{Helper for connecting to a network service}
\section{Methods and Functions}{
\code{\link{gSocketClientNew}()}\cr
\code{\link{gSocketClientConnect}(object, connectable, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketClientConnectAsync}(object, connectable, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gSocketClientConnectFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gSocketClientConnectToHost}(object, host.and.port, default.port, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketClientConnectToHostAsync}(object, host.and.port, default.port, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gSocketClientConnectToHostFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gSocketClientConnectToService}(object, domain, service, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketClientConnectToServiceAsync}(object, domain, service, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gSocketClientConnectToServiceFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gSocketClientSetFamily}(object, family)}\cr
\code{\link{gSocketClientSetLocalAddress}(object, address)}\cr
\code{\link{gSocketClientSetProtocol}(object, protocol)}\cr
\code{\link{gSocketClientSetSocketType}(object, type)}\cr
\code{\link{gSocketClientGetFamily}(object)}\cr
\code{\link{gSocketClientGetLocalAddress}(object)}\cr
\code{\link{gSocketClientGetProtocol}(object)}\cr
\code{\link{gSocketClientGetSocketType}(object)}\cr
\code{gSocketClient()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GSocketClient}}
\section{Detailed Description}{\code{\link{GSocketClient}} is a high-level utility class for connecting to a
network host using a connection oriented socket type.
  
You create a \code{\link{GSocketClient}} object, set any options you want, then
call a sync or async connect operation, which returns a \code{\link{GSocketConnection}}
subclass on success.
  
The type of the \code{\link{GSocketConnection}} object returned depends on the type of
the underlying socket that is in use. For instance, for a TCP/IP connection
it will be a \code{\link{GTcpConnection}}.}
\section{Structures}{\describe{\item{\verb{GSocketClient}}{
A helper class for network servers to listen for and accept connections.
  Since 2.22

}}}
\section{Convenient Construction}{\code{gSocketClient} is the equivalent of \code{\link{gSocketClientNew}}.}
\section{Properties}{\describe{
\item{\verb{family} [\code{\link{GSocketFamily}} : Read / Write / Construct]}{

The sockets address family to use for socket construction.  Default value: G_SOCKET_FAMILY_INVALID

}
\item{\verb{local-address} [\code{\link{GSocketAddress}} : *       : Read / Write / Construct]}{

The local address constructed sockets will be bound to.

}
\item{\verb{protocol} [\code{\link{GSocketProtocol}} : Read / Write / Construct]}{

The protocol to use for socket construction, or 0 for default.  Default value: G_SOCKET_PROTOCOL_DEFAULT

}
\item{\verb{type} [\code{\link{GSocketType}} : Read / Write / Construct]}{

The sockets type to use for socket construction.  Default value: G_SOCKET_TYPE_STREAM

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSocketClient.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

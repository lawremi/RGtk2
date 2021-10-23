\alias{GSocket}
\alias{gSocket}
\alias{GSocketSourceFunc}
\alias{GSocketType}
\alias{GSocketProtocol}
\name{GSocket}
\title{GSocket}
\description{Low-level socket object}
\section{Methods and Functions}{
\code{\link{gSocketNew}(family, type, protocol, .errwarn = TRUE)}\cr
\code{\link{gSocketNewFromFd}(fd, .errwarn = TRUE)}\cr
\code{\link{gSocketBind}(object, address, allow.reuse, .errwarn = TRUE)}\cr
\code{\link{gSocketListen}(object, .errwarn = TRUE)}\cr
\code{\link{gSocketAccept}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketConnect}(object, address, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketCheckConnectResult}(object, .errwarn = TRUE)}\cr
\code{\link{gSocketReceive}(object, size, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketReceiveFrom}(object, size, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketReceiveMessage}(object, flags = 0, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketSend}(object, buffer, size, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketSendTo}(object, address, buffer, size, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketSendMessage}(object, address, vectors, messages = NULL, flags = 0, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketClose}(object, .errwarn = TRUE)}\cr
\code{\link{gSocketIsClosed}(object)}\cr
\code{\link{gSocketShutdown}(object, shutdown.read, shutdown.write, .errwarn = TRUE)}\cr
\code{\link{gSocketIsConnected}(object)}\cr
\code{\link{gSocketCreateSource}(object, condition, cancellable = NULL)}\cr
\code{\link{gSocketConditionCheck}(object, condition)}\cr
\code{\link{gSocketConditionWait}(object, condition, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketSetListenBacklog}(object, backlog)}\cr
\code{\link{gSocketGetListenBacklog}(object)}\cr
\code{\link{gSocketGetBlocking}(object)}\cr
\code{\link{gSocketSetBlocking}(object, blocking)}\cr
\code{\link{gSocketGetKeepalive}(object)}\cr
\code{\link{gSocketSetKeepalive}(object, keepalive)}\cr
\code{\link{gSocketGetFamily}(object)}\cr
\code{\link{gSocketGetFd}(object)}\cr
\code{\link{gSocketGetLocalAddress}(object, .errwarn = TRUE)}\cr
\code{\link{gSocketGetProtocol}(object)}\cr
\code{\link{gSocketGetRemoteAddress}(object, .errwarn = TRUE)}\cr
\code{\link{gSocketGetSocketType}(object)}\cr
\code{\link{gSocketSpeaksIpv4}(object)}\cr
\code{gSocket(family, type, protocol, .errwarn = TRUE)}
}
\section{Hierarchy}{\preformatted{
GObject
   +----GSocket
GEnum
   +----GSocketType
GEnum
   +----GSocketProtocol
GEnum
   +----GSocketMsgFlags
}}
\section{Interfaces}{GSocket implements
 \code{\link{GInitable}}.}
\section{Detailed Description}{A \code{\link{GSocket}} is a low-level networking primitive. It is a more or less
direct mapping of the BSD socket API in a portable GObject based API.
It supports both the UNIX socket implementations and winsock2 on Windows.
  \code{\link{GSocket}} is the platform independent base upon which the higher level
network primitives are based. Applications are not typically meant to
use it directly, but rather through classes like \code{\link{GSocketClient}},
\code{\link{GSocketService}} and \code{\link{GSocketConnection}}. However there may be cases where
direct use of \code{\link{GSocket}} is useful.
  \code{\link{GSocket}} implements the \code{\link{GInitable}} interface, so if it is manually constructed
by e.g. \code{\link{gObjectNew}} you must call \code{\link{gInitableInit}} and check the
results before using the object. This is done automatically in
\code{\link{gSocketNew}} and \code{\link{gSocketNewFromFd}}, so these functions can return
\code{NULL}.
  
Sockets operate in two general modes, blocking or non-blocking. When
in blocking mode all operations block until the requested operation
is finished or there is an error. In non-blocking mode all calls that
would block return immediately with a \code{G_IO_ERROR_WOULD_BLOCK} error.
To know when a call would successfully run you can call \code{\link{gSocketConditionCheck}},
or \code{\link{gSocketConditionWait}}. You can also use \code{\link{gSocketCreateSource}} and
attach it to a \verb{GMainContext} to get callbacks when I/O is possible.
Note that all sockets are always set to non blocking mode in the system, and
blocking mode is emulated in GSocket.
  
When working in non-blocking mode applications should always be able to
handle getting a \code{G_IO_ERROR_WOULD_BLOCK} error even when some other
function said that I/O was possible. This can easily happen in case
of a race condition in the application, but it can also happen for other
reasons. For instance, on Windows a socket is always seen as writable
until a write returns \code{G_IO_ERROR_WOULD_BLOCK}.
  \code{\link{GSocket}}s can be either connection oriented or datagram based.
For connection oriented types you must first establish a connection by
either connecting to an address or accepting a connection from another
address. For connectionless socket types the target/source address is
specified or received in each I/O operation.
  
All socket file descriptors are set to be close-on-exec.
  
Note that creating a \code{\link{GSocket}} causes the signal \code{SIGPIPE} to be
ignored for the remainder of the program. If you are writing a
command-line utility that uses \code{\link{GSocket}}, you may need to take into
account the fact that your program will not automatically be killed
if it tries to write to \code{stdout} after it has been closed.}
\section{Structures}{\describe{\item{\verb{GSocket}}{
A lowlevel network socket object.
  Since 2.22

}}}
\section{Convenient Construction}{\code{gSocket} is the equivalent of \code{\link{gSocketNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GSocketType}}{
Flags used when creating a \code{\link{GSocket}}. Some protocols may not implement
all the socket types.
  Since 2.22

\describe{
\item{\verb{invalid}}{Type unknown or wrong}
\item{\verb{stream}}{Reliable connection-based byte streams (e.g. TCP).}
\item{\verb{datagram}}{Connectionless, unreliable datagram passing.
    (e.g. UDP)}
\item{\verb{seqpacket}}{Reliable connection-based passing of datagrams
    of fixed maximum length (e.g. SCTP).}
}

}
\item{\verb{GSocketProtocol}}{
A protocol identifier is specified when creating a \code{\link{GSocket}}, which is a
family/type specific identifier, where 0 means the default protocol for
the particular family/type.
  
This enum contains a set of commonly available and used protocols. You
can also pass any other identifiers handled by the platform in order to
use protocols not listed here.
  Since 2.22

\describe{
\item{\verb{unknown}}{The protocol type is unknown}
\item{\verb{default}}{The default protocol for the family/type}
\item{\verb{tcp}}{TCP over IP}
\item{\verb{udp}}{UDP over IP}
\item{\verb{sctp}}{SCTP over IP}
}

}
}}
\section{User Functions}{\describe{\item{\code{GSocketSourceFunc(socket, condition, user.data)}}{
This is the function type of the callback used for the \verb{GSource}
returned by \code{\link{gSocketCreateSource}}.
  Since 2.22

\describe{
\item{\code{socket}}{the \code{\link{GSocket}}}
\item{\code{condition}}{the current condition at the source fired.}
\item{\code{user.data}}{data passed in by the user.}
}

\emph{Returns:} [logical] it should return \code{FALSE} if the source should be removed.

}}}
\section{Properties}{\describe{
\item{\verb{blocking} [logical : Read / Write]}{

Whether or not I/O on this socket is blocking.  Default value: TRUE

}
\item{\verb{family} [\code{\link{GSocketFamily}} : Read / Write / Construct Only]}{

The sockets address family.  Default value: G_SOCKET_FAMILY_INVALID

}
\item{\verb{fd} [integer : Read / Write / Construct Only]}{

The sockets file descriptor.  Default value: -1

}
\item{\verb{keepalive} [logical : Read / Write]}{

Keep connection alive by sending periodic pings.  Default value: FALSE

}
\item{\verb{listen-backlog} [integer : Read / Write]}{

Outstanding connections in the listen queue.  Allowed values: [0,128]  Default value: 10

}
\item{\verb{local-address} [\code{\link{GSocketAddress}} : *       : Read]}{

The local address the socket is bound to.

}
\item{\verb{protocol} [\code{\link{GSocketProtocol}} : Read / Write / Construct Only]}{

The id of the protocol to use, or -1 for unknown.  Default value: G_SOCKET_PROTOCOL_UNKNOWN

}
\item{\verb{remote-address} [\code{\link{GSocketAddress}} : *       : Read]}{

The remote address the socket is connected to.

}
\item{\verb{type} [\code{\link{GSocketType}} : Read / Write / Construct Only]}{

The sockets type.  Default value: G_SOCKET_TYPE_STREAM

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSocket.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

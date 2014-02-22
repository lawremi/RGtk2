\alias{gSocketReceiveMessage}
\name{gSocketReceiveMessage}
\title{gSocketReceiveMessage}
\description{Receive data from a socket.  This is the most complicated and
fully-featured version of this call. For easier use, see
\code{\link{gSocketReceive}} and \code{\link{gSocketReceiveFrom}}.}
\usage{gSocketReceiveMessage(object, flags = 0, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{\verb{flags}}{a pointer to an int containing \verb{GSocketMsgFlags} flags}
\item{\verb{cancellable}}{a \code{\link{GCancellable}} or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{address} is non-\code{NULL} then \code{address} will be set equal to the
source the received packet.
  \code{vector} must point to a list of \verb{GInputVector} structs and
\code{num.vectors} must be the length of this list.  These structs
describe the buffers that received data will be scattered into.
If \code{num.vectors} is -1, then \code{vectors} is assumed to be terminated
by a \verb{GInputVector} with a \code{NULL} buffer pointer.
  
As a special case, if \code{num.vectors} is 0 (in which case, \code{vectors}
may of course be \code{NULL}), then a single byte is received and
discarded. This is to facilitate the common practice of sending a
single '\\0' byte for the purposes of transferring ancillary data.
  \code{messages}, if non-\code{NULL}, will be set to point to a newly-allocated
array of \code{\link{GSocketControlMessage}} instances. These correspond to the
control messages received from the kernel, one
\code{\link{GSocketControlMessage}} per message from the kernel. If
\code{messages} is \code{NULL}, any control messages received will be
discarded.
  \code{num.messages}, if non-\code{NULL}, will be set to the number of control
messages received.
  
If both \code{messages} and \code{num.messages} are non-\code{NULL}, then
\code{num.messages} gives the number of \code{\link{GSocketControlMessage}} instances
in \code{messages} (ie: not including the \code{NULL} terminator).
  \code{flags} is an in/out parameter. The commonly available arguments
for this are available in the \verb{GSocketMsgFlags} enum, but the
values there are the same as the system values, and the flags
are passed in as-is, so you can pass in system-specific flags too
(and \code{\link{gSocketReceiveMessage}} may pass system-specific flags out).
  
As with \code{\link{gSocketReceive}}, data may be discarded if \code{socket} is
\code{G_SOCKET_TYPE_DATAGRAM} or \code{G_SOCKET_TYPE_SEQPACKET} and you do not
provide enough buffer space to read a complete message. You can pass
\code{G_SOCKET_MSG_PEEK} in \code{flags} to peek at the current message without
removing it from the receive queue, but there is no portable way to find
out the length of the message other than by reading it into a
sufficiently-large buffer.
  
If the socket is in blocking mode the call will block until there
is some data to receive or there is an error. If there is no data
available and the socket is in non-blocking mode, a
\code{G_IO_ERROR_WOULD_BLOCK} error will be returned. To be notified when
data is available, wait for the \code{G_IO_IN} condition.
  
On error -1 is returned and \code{error} is set accordingly.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[integer] Number of bytes read, or -1 on error}
\item{\verb{address}}{a pointer to a \code{\link{GSocketAddress}} pointer, or \code{NULL}}
\item{\verb{vectors}}{a list of \verb{GInputVector} structs}
\item{\verb{messages}}{a pointer which will be filled with a list of
\verb{GSocketControlMessages}, or \code{NULL}}
\item{\verb{num.messages}}{a pointer which will be filled with the number of
elements in \code{messages}, or \code{NULL}}
\item{\verb{error}}{a \code{\link{GError}} pointer, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

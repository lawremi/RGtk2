\alias{gSocketSendMessage}
\name{gSocketSendMessage}
\title{gSocketSendMessage}
\description{Send data to \code{address} on \code{socket}.  This is the most complicated and
fully-featured version of this call. For easier use, see
\code{\link{gSocketSend}} and \code{\link{gSocketSendTo}}.}
\usage{gSocketSendMessage(object, address, vectors, messages = NULL, 
    flags = 0, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{\verb{address}}{a \code{\link{GSocketAddress}}, or \code{NULL}}
\item{\verb{vectors}}{a list of \verb{GOutputVector} structs}
\item{\verb{messages}}{a pointer to a list of \verb{GSocketControlMessages}, or
\code{NULL}.}
\item{\verb{flags}}{an int containing \verb{GSocketMsgFlags} flags}
\item{\verb{cancellable}}{a \code{\link{GCancellable}} or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{address} is \code{NULL} then the message is sent to the default receiver
(set by \code{\link{gSocketConnect}}).
  \code{vectors} must point to a list of \verb{GOutputVector} structs and
\code{num.vectors} must be the length of this list. (If \code{num.vectors} is -1,
then \code{vectors} is assumed to be terminated by a \verb{GOutputVector} with a
\code{NULL} buffer pointer.) The \verb{GOutputVector} structs describe the buffers
that the sent data will be gathered from. Using multiple
\verb{GOutputVector}s is more memory-efficient than manually copying
data from multiple sources into a single buffer, and more
network-efficient than making multiple calls to \code{\link{gSocketSend}}.
  \code{messages}, if non-\code{NULL}, is taken to point to a list of \code{num.messages}\code{\link{GSocketControlMessage}} instances. These correspond to the control
messages to be sent on the socket.
If \code{num.messages} is -1 then \code{messages} is treated as a \code{NULL}-terminated
array.
  \code{flags} modify how the message is sent. The commonly available arguments
for this are available in the \verb{GSocketMsgFlags} enum, but the
values there are the same as the system values, and the flags
are passed in as-is, so you can pass in system-specific flags too.
  
If the socket is in blocking mode the call will block until there is
space for the data in the socket queue. If there is no space available
and the socket is in non-blocking mode a \code{G_IO_ERROR_WOULD_BLOCK} error
will be returned. To be notified when space is available, wait for the
\code{G_IO_OUT} condition. Note though that you may still receive
\code{G_IO_ERROR_WOULD_BLOCK} from \code{\link{gSocketSend}} even if you were previously
notified of a \code{G_IO_OUT} condition. (On Windows in particular, this is
very common due to the way the underlying APIs work.)
  
On error -1 is returned and \code{error} is set accordingly.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[integer] Number of bytes written (which may be less than \code{size}), or -1
on error}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

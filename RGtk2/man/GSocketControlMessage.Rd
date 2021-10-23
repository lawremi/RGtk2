\alias{GSocketControlMessage}
\name{GSocketControlMessage}
\title{GSocketControlMessage}
\description{A GSocket control message}
\section{Methods and Functions}{
\code{\link{gSocketControlMessageDeserialize}(level, type, size, data)}\cr
\code{\link{gSocketControlMessageGetLevel}(object)}\cr
\code{\link{gSocketControlMessageGetMsgType}(object)}\cr
\code{\link{gSocketControlMessageGetSize}(object)}\cr
\code{\link{gSocketControlMessageSerialize}(object, data)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GSocketControlMessage
         +----GUnixFDMessage}}
\section{Detailed Description}{A \code{\link{GSocketControlMessage}} is a special-purpose utility message that
can be sent to or received from a \code{\link{GSocket}}. These types of
messages are often called "ancillary data".
  
The message can represent some sort of special instruction to or
information from the socket or can represent a special kind of
transfer to the peer (for example, sending a file description over
a UNIX socket).
  
These messages are sent with \code{\link{gSocketSendMessage}} and received
with \code{\link{gSocketReceiveMessage}}.
  
To extend the set of control message that can be sent, subclass this
class and override the get_size, get_level, get_type and serialize
methods.
  
To extend the set of control messages that can be received, subclass
this class and implement the deserialize method. Also, make sure your
class is registered with the GType typesystem before calling
\code{\link{gSocketReceiveMessage}} to read such a message.}
\section{Structures}{\describe{\item{\verb{GSocketControlMessage}}{
Base class for socket-type specific control messages that can be sent and
received over \code{\link{GSocket}}.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSocketControlMessage.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

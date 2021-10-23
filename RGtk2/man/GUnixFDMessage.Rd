\alias{GUnixFDMessage}
\name{GUnixFDMessage}
\title{GUnixFDMessage}
\description{A GSocketControlMessage containing a list of
file descriptors}
\section{Hierarchy}{\preformatted{GObject
   +----GSocketControlMessage
         +----GUnixFDMessage}}
\section{Detailed Description}{This \verb{\link{GSocketControlMessage}} contains a list of file descriptors.
It may be sent using \code{\link{gSocketSendMessage}} and received using
\code{\link{gSocketReceiveMessage}} over UNIX sockets (ie: sockets in the
\code{G_SOCKET_ADDRESS_UNIX} family).
  
For an easier way to send and receive file descriptors over
stream-oriented UNIX sockets, see \code{gUnixConnectionSendFd()} and
\code{gUnixConnectionReceiveFd()}.}
\references{\url{https://developer-old.gnome.org/gio/stable/GUnixFDMessage.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

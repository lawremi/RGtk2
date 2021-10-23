\alias{GSocketListener}
\alias{gSocketListener}
\name{GSocketListener}
\title{GSocketListener}
\description{Helper for accepting network client connections}
\section{Methods and Functions}{
\code{\link{gSocketListenerNew}()}\cr
\code{\link{gSocketListenerAddSocket}(object, socket, source.object, .errwarn = TRUE)}\cr
\code{\link{gSocketListenerAddAddress}(object, address, type, protocol, source.object, .errwarn = TRUE)}\cr
\code{\link{gSocketListenerAddInetPort}(object, port, source.object, .errwarn = TRUE)}\cr
\code{\link{gSocketListenerAccept}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketListenerAcceptAsync}(object, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gSocketListenerAcceptFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gSocketListenerAcceptSocket}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketListenerAcceptSocketAsync}(object, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gSocketListenerAcceptSocketFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gSocketListenerClose}(object)}\cr
\code{\link{gSocketListenerSetBacklog}(object, listen.backlog)}\cr
\code{gSocketListener()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GSocketListener
         +----GSocketService}}
\section{Detailed Description}{A \code{\link{GSocketListener}} is an object that keeps track of a set
of server sockets and helps you accept sockets from any of the
socket, either sync or async.
  
If you want to implement a network server, also look at \code{\link{GSocketService}}
and \code{\link{GThreadedSocketService}} which are subclass of \code{\link{GSocketListener}}
that makes this even easier.}
\section{Structures}{\describe{\item{\verb{GSocketListener}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gSocketListener} is the equivalent of \code{\link{gSocketListenerNew}}.}
\section{Properties}{\describe{\item{\verb{listen-backlog} [integer : Read / Write / Construct]}{

outstanding connections in the listen queue.  Allowed values: [0,2000]  Default value: 10

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSocketListener.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

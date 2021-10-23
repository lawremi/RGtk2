\alias{GSocketService}
\alias{gSocketService}
\name{GSocketService}
\title{GSocketService}
\description{Make it easy to implement a network service}
\section{Methods and Functions}{
\code{\link{gSocketServiceNew}()}\cr
\code{\link{gSocketServiceStart}(object)}\cr
\code{\link{gSocketServiceStop}(object)}\cr
\code{\link{gSocketServiceIsActive}(object)}\cr
\code{gSocketService()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GSocketListener
         +----GSocketService
               +----GThreadedSocketService}}
\section{Detailed Description}{A \code{\link{GSocketService}} is an object that represents a service that is
provided to the network or over local sockets.  When a new
connection is made to the service the \verb{"incoming"}
signal is emitted.
  
A \code{\link{GSocketService}} is a subclass of \code{\link{GSocketListener}} and you need
to add the addresses you want to accept connections on to the
with the \code{\link{GSocketListener}} APIs.
  
There are two options for implementing a network service based on
\code{\link{GSocketService}}. The first is to create the service using
\code{\link{gSocketServiceNew}} and to connect to the \verb{"incoming"}
signal. The second is to subclass \code{\link{GSocketService}} and override the
default signal handler implementation.
  
In either case, the handler must immediately return, or else it
will block additional incoming connections from being serviced.
If you are interested in writing connection handlers that contain
blocking code then see \code{\link{GThreadedSocketService}}.
  
The socket service runs on the main loop in the main thread, and is
not threadsafe in general. However, the calls to start and stop
the service are threadsafe so these can be used from threads that
handle incoming clients.}
\section{Structures}{\describe{\item{\verb{GSocketService}}{
A helper class for handling accepting incomming connections in the
glib mainloop.
  Since 2.22

}}}
\section{Convenient Construction}{\code{gSocketService} is the equivalent of \code{\link{gSocketServiceNew}}.}
\section{Signals}{\describe{\item{\code{incoming(service, connection, source.object, user.data)}}{
The ::incoming signal is emitted when a new incoming connection
to \code{service} needs to be handled. The handler must initiate the
handling of \code{connection}, but may not block; in essence,
asynchronous operations must be used.
  Since 2.22

\describe{
\item{\code{service}}{the \code{\link{GSocketService}}.}
\item{\code{connection}}{a new \code{\link{GSocketConnection}} object.}
\item{\code{source.object}}{the source_object passed to \code{\link{gSocketListenerAddAddress}}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being called

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSocketService.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

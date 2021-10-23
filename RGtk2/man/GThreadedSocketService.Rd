\alias{GThreadedSocketService}
\alias{gThreadedSocketService}
\name{GThreadedSocketService}
\title{GThreadedSocketService}
\description{A threaded GSocketService}
\section{Methods and Functions}{
\code{\link{gThreadedSocketServiceNew}(max.threads)}\cr
\code{gThreadedSocketService(max.threads)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GSocketListener
         +----GSocketService
               +----GThreadedSocketService}}
\section{Detailed Description}{A \code{\link{GThreadedSocketService}} is a simple subclass of \code{\link{GSocketService}}
that handles incoming connections by creating a worker thread and
dispatching the connection to it by emitting the ::run signal in
the new thread.
  
The signal handler may perform blocking IO and need not return
until the connection is closed.
  
The service is implemented using a thread pool, so there is a
limited amount of threads availible to serve incomming requests.
The service automatically stops the \code{\link{GSocketService}} from accepting
new connections when all threads are busy.
  
As with \code{\link{GSocketService}}, you may connect to \verb{"run"},
or subclass and override the default handler.}
\section{Structures}{\describe{\item{\verb{GThreadedSocketService}}{
A helper class for handling accepting incomming connections in the
glib mainloop and handling them in a thread.
  Since 2.22

}}}
\section{Convenient Construction}{\code{gThreadedSocketService} is the equivalent of \code{\link{gThreadedSocketServiceNew}}.}
\section{Signals}{\describe{\item{\code{run(service, connection, source.object, user.data)}}{
The ::run signal is emitted in a worker thread in response to an
incoming connection. This thread is dedicated to handling
\code{connection} and may perform blocking IO. The signal handler need
not return until the connection is closed.

\describe{
\item{\code{service}}{the \code{\link{GThreadedSocketService}}.}
\item{\code{connection}}{a new \code{\link{GSocketConnection}} object.}
\item{\code{source.object}}{the source_object passed to \code{\link{gSocketListenerAddAddress}}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stope further signal handlers from being called

}}}
\section{Properties}{\describe{\item{\verb{max-threads} [integer : Read / Write / Construct Only]}{

The max number of threads handling clients for this service.  Allowed values: >= -1  Default value: 10

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GThreadedSocketService.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

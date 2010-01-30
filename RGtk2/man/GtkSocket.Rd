\alias{GtkSocket}
\alias{gtkSocket}
\name{GtkSocket}
\title{GtkSocket}
\description{Container for widgets from other processes}
\section{Methods and Functions}{
\code{\link{gtkSocketNew}(show = TRUE)}\cr
\code{\link{gtkSocketSteal}(object, wid)}\cr
\code{\link{gtkSocketAddId}(object, window.id)}\cr
\code{\link{gtkSocketGetId}(object)}\cr
\code{gtkSocket(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkSocket}}
\section{Interfaces}{GtkSocket implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{Together with \verb{\link{GtkPlug}}, \verb{\link{GtkSocket}} provides the ability
to embed widgets from one process into another process
in a fashion that is transparent to the user. One
process creates a \verb{\link{GtkSocket}} widget and, passes the
that widget's window ID to the other process, 
which then creates a \verb{\link{GtkPlug}} with that window ID.
Any widgets contained in the \verb{\link{GtkPlug}} then will appear
inside the first applications window.
  
The socket's window ID is obtained by using
\code{\link{gtkSocketGetId}}. Before using this function,
the socket must have been realized, and for hence,
have been added to its parent.


 \emph{Obtaining the window ID of a socket.}
\preformatted{
socket <- gtkSocket()
parent$add(socket)

## The following call is only necessary if one of
## the ancestors of the socket is not yet visible.
socket$realize()
print(paste("The ID of the sockets window is", socket$getId()))
}
  
Note that if you pass the window ID of the socket to another
process that will create a plug in the socket, you 
must make sure that the socket widget is not destroyed
until that plug is created. Violating this rule will
cause unpredictable consequences, the most likely
consequence being that the plug will appear as a 
separate toplevel window. You can check if the plug
has been created by examining the
\code{plug_window} field of the
\verb{\link{GtkSocket}} structure. If this field is non-\code{NULL}, 
then the plug has been successfully created inside
of the socket.
  
When GTK+ is notified that the embedded window has been
destroyed, then it will destroy the socket as well. You
should always, therefore, be prepared for your sockets
to be destroyed at any time when the main event loop
is running. To prevent this from happening, you can
connect to the \verb{"plug-removed"} signal.
  
The communication between a \verb{\link{GtkSocket}} and a \verb{\link{GtkPlug}} follows the 
XEmbed (\url{http://www.freedesktop.org/standards/xembed-spec})
protocol. This protocol has also been implemented in other toolkits, e.g.  
\command{Qt}, allowing the same level of integration
when embedding a \command{Qt} widget in GTK or vice versa.  
A socket can also be used to swallow arbitrary 
pre-existing top-level windows using \code{\link{gtkSocketSteal}},
though the integration when this is done will not be as close
as between a \verb{\link{GtkPlug}} and a \verb{\link{GtkSocket}}.  \strong{PLEASE NOTE:} The \verb{\link{GtkPlug}} and \verb{\link{GtkSocket}} widgets are currently not available 
on all platforms supported by GTK+.}
\section{Structures}{\describe{\item{\verb{GtkSocket}}{
The \verb{\link{GtkSocket}} structure contains the \code{plug_window}
field.  (This field should be considered read-only. It should
never be set by an application.)

}}}
\section{Convenient Construction}{\code{gtkSocket} is the equivalent of \code{\link{gtkSocketNew}}.}
\section{Signals}{\describe{
\item{\code{plug-added(socket., user.data)}}{
This signal is emitted when a client is successfully
added to the socket.  

\describe{
\item{\code{socket.}}{[\verb{\link{GtkSocket}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{plug-removed(socket., user.data)}}{
This signal is emitted when a client is removed from the socket. 
The default action is to destroy the \verb{\link{GtkSocket}} widget, so if you 
want to reuse it you must add a signal handler that returns \code{TRUE}.  

\describe{
\item{\code{socket.}}{[\verb{\link{GtkSocket}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkSocket.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{GtkPlug}
\alias{gtkPlug}
\name{GtkPlug}
\title{GtkPlug}
\description{Toplevel for embedding into other processes}
\section{Methods and Functions}{
\code{\link{gtkPlugConstruct}(object, socket.id)}\cr
\code{\link{gtkPlugConstructForDisplay}(object, display, socket.id)}\cr
\code{\link{gtkPlugNew}(socket.id, show = TRUE)}\cr
\code{\link{gtkPlugNewForDisplay}(display, socket.id)}\cr
\code{\link{gtkPlugGetId}(object)}\cr
\code{gtkPlug(socket.id, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkPlug}}
\section{Interfaces}{GtkPlug implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{Together with \verb{\link{GtkSocket}}, \verb{\link{GtkPlug}} provides the ability
to embed widgets from one process into another process
in a fashion that is transparent to the user. One
process creates a \verb{\link{GtkSocket}} widget and, passes the
ID of that widgets window to the other process, 
which then creates a \verb{\link{GtkPlug}} with that window ID.
Any widgets contained in the \verb{\link{GtkPlug}} then will appear
inside the first applications window.
  \strong{PLEASE NOTE:} The \verb{\link{GtkPlug}} and \verb{\link{GtkSocket}} widgets are currently not available 
on all platforms supported by GTK+.}
\section{Structures}{\describe{\item{\verb{GtkPlug}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkPlug} is the equivalent of \code{\link{gtkPlugNew}}.}
\section{Signals}{\describe{\item{\code{embedded(plug, user.data)}}{
Gets emitted when the plug becomes embedded in a socket
and when the embedding ends.  

\describe{
\item{\code{plug}}{[\verb{\link{GtkPlug}}]  the object on which the signal was emitted}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{\item{\verb{embedded} [logical : Read]}{

\code{TRUE} if the plug is embedded in a socket.  

  Default value: FALSE  Since  2.12

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkPlug.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

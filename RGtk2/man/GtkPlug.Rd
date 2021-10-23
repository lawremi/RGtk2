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
\code{\link{gtkPlugGetEmbedded}(object)}\cr
\code{\link{gtkPlugGetSocketWindow}(object)}\cr
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
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{Together with \code{\link{GtkSocket}}, \code{\link{GtkPlug}} provides the ability
to embed widgets from one process into another process
in a fashion that is transparent to the user. One
process creates a \code{\link{GtkSocket}} widget and passes the
ID of that widget's window to the other process,
which then creates a \code{\link{GtkPlug}} with that window ID.
Any widgets contained in the \code{\link{GtkPlug}} then will appear
inside the first application's window.
  \strong{PLEASE NOTE:} The   \code{\link{GtkPlug}}   and   \code{\link{GtkSocket}}   widgets are currently not available
on all platforms supported by GTK+.}
\section{Structures}{\describe{\item{\verb{GtkPlug}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkPlug} is the equivalent of \code{\link{gtkPlugNew}}.}
\section{Signals}{\describe{\item{\code{embedded(plug, user.data)}}{
Gets emitted when the plug becomes embedded in a socket.

\describe{
\item{\code{plug}}{the object on which the signal was emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{embedded} [logical : Read]}{

\code{TRUE} if the plug is embedded in a socket.
  Default value: FALSE  Since 2.12

}
\item{\verb{socket-window} [\code{\link{GdkWindow}} : *            : Read]}{

The window of the socket the plug is embedded in.
  Since 2.14

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkPlug.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

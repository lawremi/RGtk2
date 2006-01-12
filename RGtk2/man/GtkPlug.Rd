\alias{GtkPlug}
\alias{gtkPlug}
\name{GtkPlug}
\title{GtkPlug}
\description{Toplevel for embedding into other processes}
\usage{
\link{gtkPlugConstruct}(object, socket.id)
\link{gtkPlugConstructForDisplay}(object, display, socket.id)
\link{gtkPlugNew}(socket.id, show = TRUE)
\link{gtkPlugNewForDisplay}(display, socket.id)
\link{gtkPlugGetId}(object)
gtkPlug(socket.id, show = TRUE)
}
\details{Together with \code{\link{GtkSocket}}, \code{\link{GtkPlug}} provides the ability
to embed widgets from one process into another process
in a fashion that is transparent to the user. One
process creates a \code{\link{GtkSocket}} widget and, passes the
ID of that widgets window to the other process, 
which then creates a \code{\link{GtkPlug}} with that window ID.
Any widgets contained in the \code{\link{GtkPlug}} then will appear
inside the first applications window.
  \emph{  
The \code{\link{GtkPlug}} and \code{\link{GtkSocket}} widgets are currently not available 
on all platforms supported by GTK+.
  }}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkWindow}
                                 +----GtkPlug}}
\section{Structures}{\describe{\item{\code{GtkPlug}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkPlug} is the equivalent of \code{\link{gtkPlugNew}}.}
\section{Interfaces}{GtkPlug implements
 AtkImplementorIface.}
\section{Signals}{\describe{\item{\code{embedded(plug, user.data)}}{


\describe{
\item{\code{plug}}{[\code{\link{GtkPlug}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkPlug.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

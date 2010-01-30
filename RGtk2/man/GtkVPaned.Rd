\alias{GtkVPaned}
\alias{gtkVPaned}
\name{GtkVPaned}
\title{GtkVPaned}
\description{A container with two panes arranged vertically}
\section{Methods and Functions}{
\code{\link{gtkVPanedNew}(show = TRUE)}\cr
\code{gtkVPaned(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkPaned
                                 +----GtkVPaned}}
\section{Interfaces}{GtkVPaned implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The VPaned widget is a container widget with two
children arranged vertically. The division between
the two panes is adjustable by the user by dragging
a handle. See \verb{\link{GtkPaned}} for details.}
\section{Structures}{\describe{\item{\verb{GtkVPaned}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkVPaned} is the equivalent of \code{\link{gtkVPanedNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkVPaned.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

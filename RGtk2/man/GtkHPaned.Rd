\alias{GtkHPaned}
\alias{gtkHPaned}
\name{GtkHPaned}
\title{GtkHPaned}
\description{A container with two panes arranged horizontally}
\section{Methods and Functions}{
\code{\link{gtkHPanedNew}(show = TRUE)}\cr
\code{gtkHPaned(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkPaned}
                                 +----GtkHPaned}}
\section{Interfaces}{GtkHPaned implements
 AtkImplementorIface.}
\section{Detailed Description}{The HPaned widget is a container widget with two
children arranged horizontally. The division between
the two panes is adjustable by the user by dragging
a handle. See \code{\link{GtkPaned}} for details.}
\section{Structures}{\describe{\item{\code{GtkHPaned}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkHPaned} is the equivalent of \code{\link{gtkHPanedNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkHPaned.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

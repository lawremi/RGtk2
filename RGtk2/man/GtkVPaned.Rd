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
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{The VPaned widget is a container widget with two
children arranged vertically. The division between
the two panes is adjustable by the user by dragging
a handle. See \code{\link{GtkPaned}} for details.}
\section{Structures}{\describe{\item{\verb{GtkVPaned}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkVPaned} is the equivalent of \code{\link{gtkVPanedNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkVPaned.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

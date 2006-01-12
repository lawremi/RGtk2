\alias{GtkHPaned}
\alias{gtkHPaned}
\name{GtkHPaned}
\title{GtkHPaned}
\description{A container with two panes arranged horizontally}
\usage{
\link{gtkHPanedNew}(show = TRUE)
gtkHPaned(show = TRUE)
}
\details{The HPaned widget is a container widget with two
children arranged horizontally. The division between
the two panes is adjustable by the user by dragging
a handle. See \code{\link{GtkPaned}} for details.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkPaned}
                           +----GtkHPaned}}
\section{Structures}{\describe{\item{\code{GtkHPaned}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkHPaned} is the equivalent of \code{\link{gtkHPanedNew}}.}
\section{Interfaces}{GtkHPaned implements
 AtkImplementorIface.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkHPaned.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

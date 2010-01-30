\alias{GtkSeparatorMenuItem}
\alias{gtkSeparatorMenuItem}
\name{GtkSeparatorMenuItem}
\title{GtkSeparatorMenuItem}
\description{A separator used in menus}
\section{Methods and Functions}{
\code{\link{gtkSeparatorMenuItemNew}(show = TRUE)}\cr
\code{gtkSeparatorMenuItem(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkItem
                                       +----GtkMenuItem
                                             +----GtkSeparatorMenuItem}}
\section{Interfaces}{GtkSeparatorMenuItem implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The \verb{\link{GtkSeparatorMenuItem}} is a separator used to group
items within a menu. It displays a horizontal line with a shadow to
make it appear sunken into the interface.}
\section{Structures}{\describe{\item{\verb{GtkSeparatorMenuItem}}{
The \verb{\link{GtkSeparatorMenuItem}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkSeparatorMenuItem} is the equivalent of \code{\link{gtkSeparatorMenuItemNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkSeparatorMenuItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

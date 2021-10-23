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
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{The \code{\link{GtkSeparatorMenuItem}} is a separator used to group
items within a menu. It displays a horizontal line with a shadow to
make it appear sunken into the interface.}
\section{Structures}{\describe{\item{\verb{GtkSeparatorMenuItem}}{
The \code{\link{GtkSeparatorMenuItem}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkSeparatorMenuItem} is the equivalent of \code{\link{gtkSeparatorMenuItemNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkSeparatorMenuItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

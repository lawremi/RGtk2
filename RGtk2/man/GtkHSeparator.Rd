\alias{GtkHSeparator}
\alias{gtkHSeparator}
\name{GtkHSeparator}
\title{GtkHSeparator}
\description{A horizontal separator}
\section{Methods and Functions}{
\code{\link{gtkHSeparatorNew}(show = TRUE)}\cr
\code{gtkHSeparator(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkSeparator
                           +----GtkHSeparator}}
\section{Interfaces}{GtkHSeparator implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The \verb{\link{GtkHSeparator}} widget is a horizontal separator, used to group the
widgets within a window. It displays a horizontal line with a shadow to
make it appear sunken into the interface.
  \strong{PLEASE NOTE:} The \verb{\link{GtkHSeparator}} widget is not used as a separator within menus.
To create a separator in a menu create an empty \verb{\link{GtkSeparatorMenuItem}} 
widget using \code{\link{gtkSeparatorMenuItemNew}} and add it to the menu with 
\code{\link{gtkMenuShellAppend}}.}
\section{Structures}{\describe{\item{\verb{GtkHSeparator}}{
The \verb{\link{GtkHSeparator}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkHSeparator} is the equivalent of \code{\link{gtkHSeparatorNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkHSeparator.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

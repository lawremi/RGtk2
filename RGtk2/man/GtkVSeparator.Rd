\alias{GtkVSeparator}
\alias{gtkVSeparator}
\name{GtkVSeparator}
\title{GtkVSeparator}
\description{A vertical separator}
\section{Methods and Functions}{
\code{\link{gtkVSeparatorNew}(show = TRUE)}\cr
\code{gtkVSeparator(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkSeparator
                           +----GtkVSeparator}}
\section{Interfaces}{GtkVSeparator implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{The \code{\link{GtkVSeparator}} widget is a vertical separator, used to group the
widgets within a window. It displays a vertical line with a shadow to
make it appear sunken into the interface.}
\section{Structures}{\describe{\item{\verb{GtkVSeparator}}{
The \code{\link{GtkVSeparator}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkVSeparator} is the equivalent of \code{\link{gtkVSeparatorNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkVSeparator.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{GtkVSeparator}
\alias{gtkVSeparator}
\name{GtkVSeparator}
\title{GtkVSeparator}
\description{A vertical separator}
\section{Methods and Functions}{
\code{\link{gtkVSeparatorNew}(show = TRUE)}\cr
\code{gtkVSeparator(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkSeparator}
                           +----GtkVSeparator}}
\section{Interfaces}{GtkVSeparator implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkVSeparator}} widget is a vertical separator, used to group the
widgets within a window. It displays a vertical line with a shadow to
make it appear sunken into the interface.}
\section{Structures}{\describe{\item{\code{GtkVSeparator}}{
The \code{\link{GtkVSeparator}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkVSeparator} is the equivalent of \code{\link{gtkVSeparatorNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkVSeparator.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

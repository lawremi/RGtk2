\alias{GtkVRuler}
\alias{gtkVRuler}
\name{GtkVRuler}
\title{GtkVRuler}
\description{A vertical ruler}
\section{Methods and Functions}{
\code{\link{gtkVRulerNew}(show = TRUE)}\cr
\code{gtkVRuler(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkRuler
                           +----GtkVRuler}}
\section{Interfaces}{GtkVRuler implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{\strong{PLEASE NOTE:}  This widget is considered too specialized/little-used for
 GTK+, and will in the future be moved to some other package.  If
 your application needs this widget, feel free to use it, as the
 widget does work and is useful in some applications; it's just not
 of general interest. However, we are not accepting new features for
 the widget, and it will eventually move out of the GTK+
 distribution.  
The VRuler widget is a widget arranged vertically creating a ruler that is
utilized around other widgets such as a text widget. The ruler is used to show
the location of the mouse on the window and to show the size of the window in
specified units. The available units of measurement are GTK_PIXELS, GTK_INCHES
and GTK_CENTIMETERS. GTK_PIXELS is the default.
rulers.}
\section{Structures}{\describe{\item{\verb{GtkVRuler}}{
The \code{\link{GtkVRuler}} struct contains private data and should be accessed
using the functions below.

}}}
\section{Convenient Construction}{\code{gtkVRuler} is the equivalent of \code{\link{gtkVRulerNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkVRuler.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

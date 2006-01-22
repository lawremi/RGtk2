\alias{GtkHRuler}
\alias{gtkHRuler}
\name{GtkHRuler}
\title{GtkHRuler}
\description{A horizontal ruler.}
\usage{gtkHRuler(show = TRUE)}
\section{Methods and Functions}{\link{gtkHRulerNew}(show = TRUE)}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkRuler}
                     +----GtkHRuler}}
\section{Interfaces}{GtkHRuler implements
 AtkImplementorIface.}
\section{Detailed Description}{\emph{  
 This widget is considered too specialized/little-used for
 GTK+, and will in the future be moved to some other package.  If
 your application needs this widget, feel free to use it, as the
 widget does work and is useful in some applications; it's just not
 of general interest. However, we are not accepting new features for
 the widget, and it will eventually move out of the GTK+
 distribution.
  }  
The HRuler widget is a widget arranged horizontally creating a ruler that is
utilized around other widgets such as a text widget. The ruler is used to show
the location of the mouse on the window and to show the size of the window in
specified units. The available units of measurement are GTK_PIXELS, GTK_INCHES
and GTK_CENTIMETERS. GTK_PIXELS is the default. 
rulers.}
\section{Structures}{\describe{\item{\code{GtkHRuler}}{
The \code{\link{GtkHRuler}} struct contains private data and should be accessed
with the functions below.

}}}
\section{Convenient Construction}{\code{gtkHRuler} is the equivalent of \code{\link{gtkHRulerNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkHRuler.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

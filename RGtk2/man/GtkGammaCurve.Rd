\alias{GtkGammaCurve}
\alias{gtkGammaCurve}
\name{GtkGammaCurve}
\title{GtkGammaCurve}
\description{a subclass of    for editing gamma curves.}
\section{Methods and Functions}{
\code{\link{gtkGammaCurveNew}(show = TRUE)}\cr
\code{gtkGammaCurve(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBox}
                           +----\link{GtkVBox}
                                 +----GtkGammaCurve}}
\section{Interfaces}{GtkGammaCurve implements
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
The \code{\link{GtkGammaCurve}} widget is a variant of \code{\link{GtkCurve}} specifically for
editing gamma curves, which are used in graphics applications such as the
Gimp.
  
The \code{\link{GtkGammaCurve}} widget shows a curve which the user can edit with the 
mouse just like a \code{\link{GtkCurve}} widget. On the right of the curve it also displays
5 buttons, 3 of which change between the 3 curve modes (spline, linear and
free), and the other 2 set the curve to a particular gamma value, or reset it
to a straight line.}
\section{Structures}{\describe{\item{\code{GtkGammaCurve}}{
The \code{\link{GtkGammaCurve}} struct contains private data only, and
should be accessed using the functions below.

\describe{
\item{\code{table}}{[\code{\link{GtkWidget}}] }
\item{\code{curve}}{[\code{\link{GtkWidget}}] }
\item{\code{gamma}}{[numeric] }
\item{\code{gammaDialog}}{[\code{\link{GtkWidget}}] }
\item{\code{gammaText}}{[\code{\link{GtkWidget}}] }
}

}}}
\section{Convenient Construction}{\code{gtkGammaCurve} is the equivalent of \code{\link{gtkGammaCurveNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkGammaCurve.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

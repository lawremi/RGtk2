\alias{GtkGammaCurve}
\alias{gtkGammaCurve}
\name{GtkGammaCurve}
\title{GtkGammaCurve}
\description{A subclass of GtkCurve for editing gamma curves}
\section{Methods and Functions}{
\code{\link{gtkGammaCurveNew}(show = TRUE)}\cr
\code{gtkGammaCurve(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkVBox
                                       +----GtkGammaCurve}}
\section{Interfaces}{GtkGammaCurve implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{The \code{\link{GtkGammaCurve}} widget is a variant of \code{\link{GtkCurve}} specifically for
editing gamma curves, which are used in graphics applications such as the
Gimp.
  
The \code{\link{GtkGammaCurve}} widget shows a curve which the user can edit with the
mouse just like a \code{\link{GtkCurve}} widget. On the right of the curve it also displays
5 buttons, 3 of which change between the 3 curve modes (spline, linear and
free), and the other 2 set the curve to a particular gamma value, or reset it
to a straight line.
  
As of GTK+ 2.20, \code{\link{GtkGammaCurve}} has been deprecated since it is too specialized.}
\section{Structures}{\describe{\item{\verb{GtkGammaCurve}}{
\strong{WARNING: \code{GtkGammaCurve} is deprecated and should not be used in newly-written code.}
The \code{\link{GtkGammaCurve}} struct contains private data only, and
should be accessed using the functions below.

\describe{
\item{\verb{table}}{[\code{\link{GtkWidget}}] }
\item{\verb{curve}}{[\code{\link{GtkWidget}}] }
\item{\verb{gamma}}{[numeric] }
\item{\verb{gammaDialog}}{[\code{\link{GtkWidget}}] }
\item{\verb{gammaText}}{[\code{\link{GtkWidget}}] }
}

}}}
\section{Convenient Construction}{\code{gtkGammaCurve} is the equivalent of \code{\link{gtkGammaCurveNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkGammaCurve.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

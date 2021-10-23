\alias{GtkRuler}
\name{GtkRuler}
\title{GtkRuler}
\description{Base class for horizontal or vertical rulers}
\section{Methods and Functions}{
\code{\link{gtkRulerSetMetric}(object, metric)}\cr
\code{\link{gtkRulerSetRange}(object, lower, upper, position, max.size)}\cr
\code{\link{gtkRulerGetMetric}(object)}\cr
\code{\link{gtkRulerGetRange}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkRuler
                           +----GtkHRuler
                           +----GtkVRuler}}
\section{Interfaces}{GtkRuler implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{\strong{PLEASE NOTE:}  This widget is considered too specialized/little-used for
 GTK+, and will in the future be moved to some other package.  If
 your application needs this widget, feel free to use it, as the
 widget does work and is useful in some applications; it's just not
 of general interest. However, we are not accepting new features for
 the widget, and it will eventually move out of the GTK+
 distribution.  
The GTKRuler widget is a base class for horizontal and vertical rulers. Rulers
are used to show the mouse pointer's location in a window. The ruler can either
be horizontal or vertical on the window. Within the ruler a small triangle
indicates the location of the mouse relative to the horizontal or vertical
ruler. See \code{\link{GtkHRuler}} to learn how to create a new horizontal ruler. See
\code{\link{GtkVRuler}} to learn how to create a new vertical ruler.}
\section{Structures}{\describe{\item{\verb{GtkRuler}}{
All distances are in 1/72nd's of an inch. (According to Adobe thats a point, but
points are really 1/72.27 in.)

}}}
\section{Properties}{\describe{
\item{\verb{lower} [numeric : Read / Write]}{

Lower limit of ruler.  Default value: 0

}
\item{\verb{max-size} [numeric : Read / Write]}{

Maximum size of the ruler.  Default value: 0

}
\item{\verb{metric} [\code{\link{GtkMetricType}} : Read / Write]}{

The metric used for the ruler.
  Default value: GTK_PIXELS  Since 2.8

}
\item{\verb{position} [numeric : Read / Write]}{

Position of mark on the ruler.  Default value: 0

}
\item{\verb{upper} [numeric : Read / Write]}{

Upper limit of ruler.  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRuler.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkHRuler}}
\code{\link{GtkVRuler}}
}
\keyword{internal}

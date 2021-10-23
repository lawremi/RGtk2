\alias{GtkHScale}
\alias{gtkHScale}
\name{GtkHScale}
\title{GtkHScale}
\description{A horizontal slider widget for selecting a value from a range}
\section{Methods and Functions}{
\code{\link{gtkHScaleNew}(adjustment = NULL, show = TRUE)}\cr
\code{\link{gtkHScaleNewWithRange}(min, max, step, show = TRUE)}\cr
\code{gtkHScale(adjustment = NULL, min, max, step, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkRange
                           +----GtkScale
                                 +----GtkHScale}}
\section{Interfaces}{GtkHScale implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{The \code{\link{GtkHScale}} widget is used to allow the user to select a value using
a horizontal slider. To create one, use \code{\link{gtkHScaleNewWithRange}}.
  
The position to show the current value, and the number of decimal places
shown can be set using the parent \code{\link{GtkScale}} class's functions.}
\section{Structures}{\describe{\item{\verb{GtkHScale}}{
The \code{\link{GtkHScale}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkHScale} is the result of collapsing the constructors of \code{GtkHScale} (\code{\link{gtkHScaleNew}}, \code{\link{gtkHScaleNewWithRange}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkHScale.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

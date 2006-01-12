\alias{GtkHScale}
\alias{gtkHScale}
\name{GtkHScale}
\title{GtkHScale}
\description{A horizontal slider widget for selecting a value from a range}
\usage{
\link{gtkHScaleNew}(adjustment = NULL, show = TRUE)
\link{gtkHScaleNewWithRange}(min, max, step, show = TRUE)
gtkHScale(adjustment = NULL, min, max, step, show = TRUE)
}
\details{The \code{\link{GtkHScale}} widget is used to allow the user to select a value using
a horizontal slider. To create one, use \code{\link{gtkHScaleNewWithRange}}.
  
The position to show the current value, and the number of decimal places
shown can be set using the parent \code{\link{GtkScale}} class's functions.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkRange}
                     +----\link{GtkScale}
                           +----GtkHScale}}
\section{Structures}{\describe{\item{\code{GtkHScale}}{
The \code{\link{GtkHScale}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkHScale} is the result of collapsing the constructors of \code{GtkHScale} (\code{\link{gtkHScaleNew}}, \code{\link{gtkHScaleNewWithRange}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Interfaces}{GtkHScale implements
 AtkImplementorIface.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkHScale.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

\alias{GtkArrow}
\alias{gtkArrow}
\name{GtkArrow}
\title{GtkArrow}
\description{Displays an arrow}
\section{Methods and Functions}{
\code{\link{gtkArrowNew}(arrow.type = NULL, shadow.type = NULL, show = TRUE)}\cr
\code{\link{gtkArrowSet}(object, arrow.type, shadow.type)}\cr
\code{gtkArrow(arrow.type = NULL, shadow.type = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkMisc
                           +----GtkArrow}}
\section{Interfaces}{GtkArrow implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{GtkArrow should be used to draw simple arrows that need to point in
one of the four cardinal directions (up, down, left, or right).  The
style of the arrow can be one of shadow in, shadow out, etched in, or
etched out.  Note that these directions and style types may be
ammended in versions of Gtk to come.
  
GtkArrow will fill any space alloted to it, but since it is inherited
from \code{\link{GtkMisc}}, it can be padded and/or aligned, to fill exactly the
space the programmer desires.
  
Arrows are created with a call to \code{\link{gtkArrowNew}}.  The direction or
style of an arrow can be changed after creation by using \code{\link{gtkArrowSet}}.}
\section{Structures}{\describe{\item{\verb{GtkArrow}}{
The \code{\link{GtkArrow}} struct containes the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

}}}
\section{Convenient Construction}{\code{gtkArrow} is the equivalent of \code{\link{gtkArrowNew}}.}
\section{Properties}{\describe{
\item{\verb{arrow-type} [\code{\link{GtkArrowType}} : Read / Write]}{

The direction the arrow should point.  Default value: GTK_ARROW_RIGHT

}
\item{\verb{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Appearance of the shadow surrounding the arrow.  Default value: GTK_SHADOW_OUT

}
}}
\section{Style Properties}{\describe{\item{\verb{arrow-scaling} [numeric : Read]}{

Amount of space used up by arrow.  Allowed values: [0,1]  Default value: 0.7

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkArrow.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

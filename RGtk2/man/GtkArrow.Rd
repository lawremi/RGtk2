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
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkMisc}
                     +----GtkArrow}}
\section{Interfaces}{GtkArrow implements
 AtkImplementorIface.}
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
\section{Structures}{\describe{\item{\code{GtkArrow}}{
The \code{\link{GtkArrow}} containes the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{
\code{integer}     \code{arrow_type}  ; \tab the direction of the arrow, one of   \code{\link{GtkArrowType}}  . \cr
\code{integer}     \code{shadow_type}  ; \tab the style of the arrow, one of   \code{\link{GtkShadowType}}  . \cr
}

}}}
\section{Convenient Construction}{\code{gtkArrow} is the equivalent of \code{\link{gtkArrowNew}}.}
\section{Properties}{\describe{
\item{\code{arrow-type} [\code{\link{GtkArrowType}} : Read / Write]}{

The direction the arrow should point.  Default value: GTK_ARROW_RIGHT

}
\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Appearance of the shadow surrounding the arrow.  Default value: GTK_SHADOW_OUT

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkArrow.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

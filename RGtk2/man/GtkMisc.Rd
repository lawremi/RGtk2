\alias{GtkMisc}
\name{GtkMisc}
\title{GtkMisc}
\description{Base class for widgets with alignments and padding}
\section{Methods and Functions}{
\code{\link{gtkMiscSetAlignment}(object, xalign, yalign)}\cr
\code{\link{gtkMiscSetPadding}(object, xpad, ypad)}\cr
\code{\link{gtkMiscGetAlignment}(object)}\cr
\code{\link{gtkMiscGetPadding}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkMisc
                           +----GtkLabel
                           +----GtkArrow
                           +----GtkImage
                           +----GtkPixmap}}
\section{Interfaces}{GtkMisc implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkMisc}} widget is an abstract widget which is not useful itself, but
is used to derive subclasses which have alignment and padding attributes.
  
The horizontal and vertical padding attributes allows extra space to be
added around the widget.
  
The horizontal and vertical alignment attributes enable the widget to be
positioned within its allocated area. Note that if the widget is added to
a container in such a way that it expands automatically to fill its
allocated area, the alignment settings will not alter the widgets position.}
\section{Structures}{\describe{\item{\verb{GtkMisc}}{
The \code{\link{GtkMisc}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)
\tabular{ll}{
\verb{numeric}  \code{xalign}  ; \tab the horizontal alignment, from 0 (left) to 1 (right). \cr
\verb{numeric}  \code{yalign}  ; \tab the vertical alignment, from 0 (top) to 1 (bottom). \cr
\verb{integer}  \code{xpad}  ; \tab the amount of space to add on the left and right of the widget,
in pixels. \cr
\verb{integer}  \code{ypad}  ; \tab the amount of space to add on the top and bottom of the widget,
in pixels. \cr
}

}}}
\section{Properties}{\describe{
\item{\verb{xalign} [numeric : Read / Write]}{

The horizontal alignment, from 0 (left) to 1 (right). Reversed for RTL layouts.  Allowed values: [0,1]  Default value: 0.5

}
\item{\verb{xpad} [integer : Read / Write]}{

The amount of space to add on the left and right of the widget, in pixels.  Allowed values: >= 0  Default value: 0

}
\item{\verb{yalign} [numeric : Read / Write]}{

The vertical alignment, from 0 (top) to 1 (bottom).  Allowed values: [0,1]  Default value: 0.5

}
\item{\verb{ypad} [integer : Read / Write]}{

The amount of space to add on the top and bottom of the widget, in pixels.  Allowed values: >= 0  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkMisc.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

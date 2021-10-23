\alias{GtkAlignment}
\alias{gtkAlignment}
\name{GtkAlignment}
\title{GtkAlignment}
\description{A widget which controls the alignment and size of its child}
\section{Methods and Functions}{
\code{\link{gtkAlignmentNew}(xalign = NULL, yalign = NULL, xscale = NULL, yscale = NULL, show = TRUE)}\cr
\code{\link{gtkAlignmentSet}(object, xalign, yalign, xscale, yscale)}\cr
\code{\link{gtkAlignmentGetPadding}(object)}\cr
\code{\link{gtkAlignmentSetPadding}(object, padding.top, padding.bottom, padding.left, padding.right)}\cr
\code{gtkAlignment(xalign = NULL, yalign = NULL, xscale = NULL, yscale = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkAlignment}}
\section{Interfaces}{GtkAlignment implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkAlignment}} widget controls the alignment and size of its child widget.
It has four settings: xscale, yscale, xalign, and yalign.
  
The scale settings are used to specify how much the child widget should
expand to fill the space allocated to the \code{\link{GtkAlignment}}.
The values can range from 0 (meaning the child doesn't expand at all) to
1 (meaning the child expands to fill all of the available space).
  
The align settings are used to place the child widget within the available
area. The values range from 0 (top or left) to 1 (bottom or right).
Of course, if the scale settings are both set to 1, the alignment settings
have no effect.}
\section{Structures}{\describe{\item{\verb{GtkAlignment}}{
The \code{\link{GtkAlignment}} struct contains private data only, and should
be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkAlignment} is the equivalent of \code{\link{gtkAlignmentNew}}.}
\section{Properties}{\describe{
\item{\verb{bottom-padding} [numeric : Read / Write]}{

The padding to insert at the bottom of the widget.
  Allowed values: <= G_MAXINT  Default value: 0  Since 2.4

}
\item{\verb{left-padding} [numeric : Read / Write]}{

The padding to insert at the left of the widget.
  Allowed values: <= G_MAXINT  Default value: 0  Since 2.4

}
\item{\verb{right-padding} [numeric : Read / Write]}{

The padding to insert at the right of the widget.
  Allowed values: <= G_MAXINT  Default value: 0  Since 2.4

}
\item{\verb{top-padding} [numeric : Read / Write]}{

The padding to insert at the top of the widget.
  Allowed values: <= G_MAXINT  Default value: 0  Since 2.4

}
\item{\verb{xalign} [numeric : Read / Write]}{

Horizontal position of child in available space. 0.0 is left aligned, 1.0 is right aligned.  Allowed values: [0,1]  Default value: 0.5

}
\item{\verb{xscale} [numeric : Read / Write]}{

If available horizontal space is bigger than needed for the child, how much of it to use for the child. 0.0 means none, 1.0 means all.  Allowed values: [0,1]  Default value: 1

}
\item{\verb{yalign} [numeric : Read / Write]}{

Vertical position of child in available space. 0.0 is top aligned, 1.0 is bottom aligned.  Allowed values: [0,1]  Default value: 0.5

}
\item{\verb{yscale} [numeric : Read / Write]}{

If available vertical space is bigger than needed for the child, how much of it to use for the child. 0.0 means none, 1.0 means all.  Allowed values: [0,1]  Default value: 1

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkAlignment.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

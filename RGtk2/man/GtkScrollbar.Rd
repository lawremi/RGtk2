\alias{GtkScrollbar}
\name{GtkScrollbar}
\title{GtkScrollbar}
\description{Base class for GtkHScrollbar and GtkVScrollbar}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkRange}
                     +----GtkScrollbar
                           +----\link{GtkHScrollbar}
                           +----\link{GtkVScrollbar}}}
\section{Interfaces}{GtkScrollbar implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkScrollbar}} widget is an abstract base class for \code{\link{GtkHScrollbar}} and
\code{\link{GtkVScrollbar}}. It is not very useful in itself.
  
The position of the thumb in a scrollbar is controlled by the scroll
adjustments. See \code{\link{GtkAdjustment}} for the fields in an adjustment - for
\code{\link{GtkScrollbar}}, the "value" field represents the position of the
scrollbar, which must be between the "lower" field and "upper -
page_size." The "page_size" field represents the size of the visible
scrollable area. The "step_increment" and "page_increment" fields are
used when the user asks to step down (using the small stepper arrows)
or page down (using for example the PageDown key).}
\section{Structures}{\describe{\item{\code{GtkScrollbar}}{
The \code{\link{GtkScrollbar}} struct does not contain any public data.

}}}
\section{Style Properties}{\describe{
\item{\code{fixed-slider-length} [logical : Read]}{

Don't change slider size, just lock it to the minimum length.  Default value: FALSE

}
\item{\code{has-backward-stepper} [logical : Read]}{

Display the standard backward arrow button.  Default value: TRUE

}
\item{\code{has-forward-stepper} [logical : Read]}{

Display the standard forward arrow button.  Default value: TRUE

}
\item{\code{has-secondary-backward-stepper} [logical : Read]}{

Display a second backward arrow button on the opposite end of the scrollbar.  Default value: FALSE

}
\item{\code{has-secondary-forward-stepper} [logical : Read]}{

Display a secondary forward arrow button on the opposite end of the scrollbar.  Default value: FALSE

}
\item{\code{min-slider-length} [integer : Read]}{

Minimum length of scrollbar slider.  Allowed values: >= 0  Default value: 21

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkScrollbar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
